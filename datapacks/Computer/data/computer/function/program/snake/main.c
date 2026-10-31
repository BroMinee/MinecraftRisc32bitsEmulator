#include <stdint.h>
#include "lib/stdio.h"
#include "lib/display.h"

#ifdef LOCAL
#include <SDL2/SDL.h>
#include <stdlib.h>
#include <time.h>
static uint32_t local_get_input(void) {
  SDL_Event e;
  while (SDL_PollEvent(&e)) {
    if (e.type == SDL_QUIT) exit(0);
  }
  const uint8_t *ks = SDL_GetKeyboardState(NULL);
  uint32_t keys = 0;
  if (ks[SDL_SCANCODE_W] || ks[SDL_SCANCODE_Z]) keys |= 0x01;
  if (ks[SDL_SCANCODE_S])                        keys |= 0x02;
  if (ks[SDL_SCANCODE_A] || ks[SDL_SCANCODE_Q])  keys |= 0x04;
  if (ks[SDL_SCANCODE_D])                        keys |= 0x08;
  return keys;
}
#define INPUT    local_get_input()
#define RANDOM   ((uint32_t)rand())
#define CLOCK    (SDL_GetTicks() / 20)
#else
// MMIO registers
#define INPUT    (*(volatile uint32_t *)0x0FFE0100)
#define RANDOM   (*(volatile uint32_t *)0x0FFE0200)
#define CLOCK    (*(volatile uint32_t *)0x0FFE0300)
#endif

// 7-segment displays (8 displays, 4 bytes apart)
#ifdef LOCAL
static void update_score_display(uint16_t val) {
  (void)val; // no-op in local mode
}
#else
#define SEG(n) (*(volatile uint32_t *)(0x0FFE0000 + (n) * 4))

static void update_score_display(uint16_t val) {
  SEG(7) = val % 10; val /= 10;
  SEG(6) = val % 10; val /= 10;
  SEG(5) = val % 10; val /= 10;
  SEG(4) = val % 10;
}
#endif

// Input bitmask
#define KEY_FORWARD  0x01
#define KEY_BACKWARD 0x02
#define KEY_LEFT     0x04
#define KEY_RIGHT    0x08

// 64x64 grid, 1 pixel per cell
#define GRID 64
#define MAX_SNAKE (GRID * GRID)

// Directions: 0=up 1=right 2=down 3=left
#define DIR_UP    0
#define DIR_RIGHT 1
#define DIR_DOWN  2
#define DIR_LEFT  3

// Snake body stored as packed positions (x | y<<6) in circular buffer
static uint16_t snake[MAX_SNAKE];
static uint16_t snake_len;
static uint16_t head_idx;
static uint8_t dir;
static uint8_t game_over;
static uint16_t score;

// Grid: 0=empty, 1=snake, 2=food — packed 4 cells per byte
static uint8_t grid[GRID * GRID / 4];

static uint8_t grid_get(uint16_t pos) {
  return (grid[pos >> 2] >> ((pos & 3) << 1)) & 3;
}

static void grid_set(uint16_t pos, uint8_t val) {
  uint8_t shift = (pos & 3) << 1;
  grid[pos >> 2] = (grid[pos >> 2] & ~(3 << shift)) | (val << shift);
}

static void place_food(void) {
  if (snake_len >= GRID * GRID)
    return;

  uint16_t pos;
  do {
    pos = RANDOM % (GRID * GRID);
  } while (grid_get(pos) != 0);

  grid_set(pos, 2);
  write_pixel(pos & 63, pos >> 6,255, 255, 0, 0);
}

int main() {
#ifdef LOCAL
  srand(time(NULL));
#endif
  init_display();

  // Clear grid
  for (uint16_t i = 0; i < GRID * GRID / 4; i++)
    grid[i] = 0;

  my_printf("How many fruits, do you want ?");
  char input[8];
  const char *result = my_stdin(input, sizeof(input));
  uint32_t num_fruits = my_atoi(result);
  if (num_fruits == 0) num_fruits = 1;
  if (num_fruits > 100) num_fruits = 100;

  snake_len = 3;
  head_idx = 2;
  dir = DIR_RIGHT;
  game_over = 0;
  score = 0;

  snake[0] = 30 | (32 << 6); // tail
  snake[1] = 31 | (32 << 6);
  snake[2] = 32 | (32 << 6); // head

  grid_set(snake[0], 1);
  grid_set(snake[1], 1);
  grid_set(snake[2], 1);

  write_pixel(30, 32,255, 0, 130, 0);
  write_pixel(31, 32,255, 0, 130, 0);
  write_pixel(32, 32,255, 0, 200, 0);

  

  for (uint32_t i = 0; i < num_fruits; i++)
    place_food();
  update_score_display(0);
  flush_display();

  my_printf("Snake! Use ZQSD to move");

  uint32_t last_tick = CLOCK;

  while (!game_over) {
    uint32_t now = CLOCK;
    if (now - last_tick < 8) {
#ifdef LOCAL
      SDL_Delay(1);
#endif
      continue;
    }
    last_tick = now;

    uint32_t keys = INPUT;
    if ((keys & KEY_FORWARD) && dir != DIR_DOWN)
      dir = DIR_UP;
    else if ((keys & KEY_BACKWARD) && dir != DIR_UP)
      dir = DIR_DOWN;
    else if ((keys & KEY_LEFT) && dir != DIR_RIGHT)
      dir = DIR_LEFT;
    else if ((keys & KEY_RIGHT) && dir != DIR_LEFT)
      dir = DIR_RIGHT;

    // Current head position
    uint8_t hx = snake[head_idx] & 63;
    uint8_t hy = snake[head_idx] >> 6;

    // Move
    if (dir == DIR_UP)        hy = (hy - 1) & 63;
    else if (dir == DIR_DOWN) hy = (hy + 1) & 63;
    else if (dir == DIR_LEFT) hx = (hx - 1) & 63;
    else                      hx = (hx + 1) & 63;

    uint16_t new_pos = hx | (hy << 6);
    uint8_t cell = grid_get(new_pos);

    // Collision with itself
    if (cell == 1) {
      game_over = 1;
      break;
    }

    uint8_t ate = (cell == 2);

    if (!ate) {
      uint16_t tail_idx = (head_idx + MAX_SNAKE - snake_len + 1) % MAX_SNAKE;
      uint16_t tail_pos = snake[tail_idx];
      grid_set(tail_pos, 0);
      write_pixel(tail_pos & 63, tail_pos >> 6,255, 0, 0, 0);
    } else {
      snake_len++;
      score++;
      update_score_display(score);
    }

    // Old head becomes body color (1 pixel)
    write_pixel(snake[head_idx] & 63, snake[head_idx] >> 6,255, 0, 130, 0);

    // New head
    head_idx = (head_idx + 1) % MAX_SNAKE;
    snake[head_idx] = new_pos;
    grid_set(new_pos, 1);
    write_pixel(hx, hy,255, 0, 200, 0);

    if (ate)
      place_food();

    flush_display();
  }

  draw_char(8,  25, 'G', 255, 0,   0);
  draw_char(15, 25, 'A', 255, 60,  0);
  draw_char(22, 25, 'M', 255, 120, 0);
  draw_char(29, 25, 'E', 255, 180, 0);
  draw_char(8,  33, 'O', 255, 200, 0);
  draw_char(15, 33, 'V', 255, 220, 0);
  draw_char(22, 33, 'E', 255, 240, 0);
  draw_char(29, 33, 'R', 255, 255, 0);

  char buf[24];
  char *p = buf;
  *p++ = 'S'; *p++ = 'c'; *p++ = 'o'; *p++ = 'r'; *p++ = 'e'; *p++ = ':'; *p++ = ' ';
  p = my_itoa(score, p);
  *p = '\0';
  draw_string(1, 45, buf, 255, 255, 255);
  flush_display();

  my_printf("Game Over! Score: %u", score);

  close_display();
  return 0;
}
