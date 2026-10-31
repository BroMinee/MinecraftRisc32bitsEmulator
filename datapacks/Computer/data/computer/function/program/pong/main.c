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
#define INPUT    (*(volatile uint32_t *)0x0FFE0100)
#define RANDOM   (*(volatile uint32_t *)0x0FFE0200)
#define CLOCK    (*(volatile uint32_t *)0x0FFE0300)
#endif

// 7-segment displays
#ifdef LOCAL
static void update_score_display(uint16_t p1, uint16_t p2) {
  (void)p1; (void)p2;
}
#else
#define SEG(n) (*(volatile uint32_t *)(0x0FFE0000 + (n) * 4))
static void update_score_display(uint16_t p1, uint16_t p2) {
  SEG(0) = p1;
  SEG(7) = p2;
}
#endif

#define KEY_UP    0x01
#define KEY_DOWN  0x02

#define SCREEN   64
#define PADDLE_H  8
#define PADDLE_W  1
#define BALL_SIZE 1

#define PADDLE_X_L  2
#define PADDLE_X_R  (SCREEN - 3)

#define WIN_SCORE   3
#define TICK_DELAY  4
#define SPAWN_DELAY 30

// Game state
static int16_t paddle_l_y, paddle_r_y;
static int16_t ball_x, ball_y;
static int8_t  ball_dx, ball_dy;
static uint8_t score_l, score_r;
static uint16_t freeze_timer;
static uint8_t game_over;

static void draw_paddle(uint8_t px, int16_t py, uint8_t r, uint8_t g, uint8_t b) {
  for (uint8_t i = 0; i < PADDLE_H; i++) {
    write_pixel(px, py + i,255, r, g, b);
  }
}

static void draw_ball(int16_t bx, int16_t by, uint8_t r, uint8_t g, uint8_t b) {
  write_pixel(bx, by,255, r, g, b);
}

static void restore_midline(int16_t bx, int16_t by) {
  if (bx == SCREEN / 2 && (by % 4) < 2) {
    write_pixel(SCREEN / 2, by,255, 40, 40, 40);
  }
}

static void draw_midline(void) {
  for (uint8_t y = 0; y < SCREEN; y += 4) {
    write_pixel(SCREEN / 2, y,    255, 40, 40, 40);
    write_pixel(SCREEN / 2, y + 1, 255, 40, 40, 40);
  }
}

static void reset_ball(void) {
  ball_x = SCREEN / 2 - 1;
  ball_y = SCREEN / 2 - 1;
  uint32_t r = RANDOM;
  ball_dx = (r & 1) ? 1 : -1;
  ball_dy = 0;
  freeze_timer = 0;
}

int main() {
#ifdef LOCAL
  srand(time(NULL));
#endif
  init_display();

  score_l = 0;
  score_r = 0;
  game_over = 0;

  paddle_l_y = SCREEN / 2 - PADDLE_H / 2;
  paddle_r_y = SCREEN / 2 - PADDLE_H / 2;

  reset_ball();

  draw_midline();
  draw_paddle(PADDLE_X_L, paddle_l_y, 0, 180, 255);
  draw_paddle(PADDLE_X_R, paddle_r_y, 255, 180, 0);
  draw_ball(ball_x, ball_y, 255, 255, 255);
  update_score_display(0, 0);
  flush_display();

  my_printf("PONG! Z/S to move");

  uint32_t last_tick = CLOCK;

  while (!game_over) {
    uint32_t now = CLOCK;
    if (now - last_tick < TICK_DELAY) {
#ifdef LOCAL
      SDL_Delay(1);
#endif
      continue;
    }
    last_tick = now;

    uint32_t keys = INPUT;
    int16_t old_l = paddle_l_y;
    if ((keys & KEY_UP) && paddle_l_y > 0)
      paddle_l_y--;
    else if ((keys & KEY_DOWN) && paddle_l_y < SCREEN - PADDLE_H)
      paddle_l_y++;

    int16_t old_r = paddle_r_y;
    if (RANDOM % 5 != 0) {
      int16_t paddle_r_center = paddle_r_y + PADDLE_H / 2;
      if (paddle_r_center < ball_y && paddle_r_y < SCREEN - PADDLE_H)
        paddle_r_y++;
      else if (paddle_r_center > ball_y && paddle_r_y > 0)
        paddle_r_y--;
    }

    if (paddle_l_y < old_l) {
      write_pixel(PADDLE_X_L, old_l + PADDLE_H - 1,255, 0, 0, 0);
      write_pixel(PADDLE_X_L, paddle_l_y,255, 0, 180, 255);
    } else if (paddle_l_y > old_l) {
      write_pixel(PADDLE_X_L, old_l,255, 0, 0, 0);
      write_pixel(PADDLE_X_L, paddle_l_y + PADDLE_H - 1, 0,255, 180, 255);
    }
    if (paddle_r_y < old_r) {
      write_pixel(PADDLE_X_R, old_r + PADDLE_H - 1,255, 0, 0, 0);
      write_pixel(PADDLE_X_R, paddle_r_y,255, 255, 180, 0);
    } else if (paddle_r_y > old_r) {
      write_pixel(PADDLE_X_R, old_r,255, 0, 0, 0);
      write_pixel(PADDLE_X_R, paddle_r_y + PADDLE_H - 1,255, 255, 180, 0);
    }
    draw_ball(ball_x, ball_y, 0, 0, 0);
    restore_midline(ball_x, ball_y);

    if (freeze_timer > 0) {
      freeze_timer--;
      draw_ball(ball_x, ball_y, 255, 255, 255);
      flush_display();
      continue;
    }

    ball_x += ball_dx;
    ball_y += ball_dy;

    if (ball_y < 0) {
      ball_y = -ball_y;
      if (ball_dy < 0) ball_dy = -ball_dy;
    } else if (ball_y >= SCREEN) {
      ball_y = 2 * (SCREEN - 1) - ball_y;
      if (ball_dy > 0) ball_dy = -ball_dy;
    }

    if (ball_dx < 0 && ball_x <= PADDLE_X_L + PADDLE_W &&
        ball_x >= PADDLE_X_L &&
        ball_y + BALL_SIZE > paddle_l_y && ball_y < paddle_l_y + PADDLE_H) {
      ball_dx = 1;
      if (ball_dy == 0) ball_dy = -1;
      ball_x = PADDLE_X_L + PADDLE_W;
    }

    if (ball_dx > 0 && ball_x + BALL_SIZE >= PADDLE_X_R &&
        ball_x + BALL_SIZE <= PADDLE_X_R + PADDLE_W + 1 &&
        ball_y + BALL_SIZE > paddle_r_y && ball_y < paddle_r_y + PADDLE_H) {
      ball_dx = -1;
      if (ball_dy == 0) ball_dy = -1;
      ball_x = PADDLE_X_R - BALL_SIZE;
    }

    if (ball_x < 0) {
      score_r++;
      update_score_display(score_l, score_r);
      if (score_r >= WIN_SCORE) { game_over = 1; break; }
      draw_paddle(PADDLE_X_L, paddle_l_y, 0, 0, 0);
      draw_paddle(PADDLE_X_R, paddle_r_y, 0, 0, 0);
      paddle_l_y = SCREEN / 2 - PADDLE_H / 2;
      paddle_r_y = SCREEN / 2 - PADDLE_H / 2;
      draw_midline();
      draw_paddle(PADDLE_X_L, paddle_l_y, 0, 180, 255);
      draw_paddle(PADDLE_X_R, paddle_r_y, 255, 180, 0);
      reset_ball();
    } else if (ball_x >= SCREEN - BALL_SIZE) {
      score_l++;
      update_score_display(score_l, score_r);
      if (score_l >= WIN_SCORE) { game_over = 1; break; }
      draw_paddle(PADDLE_X_L, paddle_l_y, 0, 0, 0);
      draw_paddle(PADDLE_X_R, paddle_r_y, 0, 0, 0);
      paddle_l_y = SCREEN / 2 - PADDLE_H / 2;
      paddle_r_y = SCREEN / 2 - PADDLE_H / 2;
      draw_midline();
      draw_paddle(PADDLE_X_L, paddle_l_y, 0, 180, 255);
      draw_paddle(PADDLE_X_R, paddle_r_y, 255, 180, 0);
      reset_ball();
    }

    draw_ball(ball_x, ball_y, 255, 255, 255);

    flush_display();
  }

  uint8_t winner = (score_l >= WIN_SCORE) ? 1 : 2;

  draw_string(0, 20, "GAME OVER", 255, 50, 50);
  if (winner == 1)
    draw_string(8, 32, "P1 WINS!", 0, 180, 255);
  else
    draw_string(8, 32, "P2 WINS!", 255, 180, 0);

  char buf[16];
  char *p = buf;
  p = my_itoa(score_l, p); *p++ = ' '; *p++ = '-'; *p++ = ' ';
  p = my_itoa(score_r, p); *p = '\0';
  draw_string(12, 44, buf, 255, 255, 255);

  flush_display();
  my_printf("Game Over! %u - %u", score_l, score_r);

  close_display();
  return 0;
}
