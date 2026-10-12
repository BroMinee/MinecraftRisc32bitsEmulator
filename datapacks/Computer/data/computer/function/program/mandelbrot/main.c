#include <stdint.h>
#ifdef LOCAL
#include <SDL2/SDL.h>
#endif

#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 64
#define SCREEN_START_ADDRESS 0x0FFF0000
#define PIXEL_SCALE 10

#ifdef LOCAL
static SDL_Window *window = NULL;
static SDL_Renderer *renderer = NULL;
#endif

void init_display(void)
{
#ifdef LOCAL
  if (SDL_Init(SDL_INIT_VIDEO) != 0)
    return;
  window = SDL_CreateWindow("Mandelbrot - 64x64",
                            SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                            SCREEN_WIDTH * PIXEL_SCALE, SCREEN_HEIGHT * PIXEL_SCALE,
                            SDL_WINDOW_SHOWN);
  if (window == NULL)
    return;
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_SOFTWARE);
  if (renderer == NULL)
    return;
  SDL_RenderSetLogicalSize(renderer, SCREEN_WIDTH, SCREEN_HEIGHT);
  SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
  SDL_RenderClear(renderer);
  SDL_RenderPresent(renderer);
#endif
}

void write_pixel(uint16_t x, uint16_t y,
                 uint16_t r, uint16_t g, uint16_t b)
{
  if (x >= SCREEN_WIDTH || y >= SCREEN_HEIGHT)
    return;
  if (r > 255)
    r = 255;
  if (g > 255)
    g = 255;
  if (b > 255)
    b = 255;
#ifdef LOCAL
  if (renderer == NULL)
    return;
  SDL_SetRenderDrawColor(renderer, (uint8_t)r, (uint8_t)g, (uint8_t)b, 255);
  SDL_Rect pixel = {(int)x, (int)y, 1, 1};
  SDL_RenderFillRect(renderer, &pixel);
#else
  uint32_t color = ((uint32_t)r << 16) | ((uint32_t)g << 8) | (uint32_t)b;
  volatile uint32_t *screen = (volatile uint32_t *)(uintptr_t)SCREEN_START_ADDRESS;
  screen[(uint32_t)y * SCREEN_WIDTH + x] = color;
#endif
}

void close_display(void)
{
#ifdef LOCAL
  if (renderer != NULL)
    SDL_DestroyRenderer(renderer);
  if (window != NULL)
    SDL_DestroyWindow(window);
  SDL_Quit();
#endif
}

#define MAX_ITER 10
#define STEP (2.8f / 64.0f)

void draw_mandelbrot(void)
{
  int half = SCREEN_HEIGHT / 2;

  for (int py = 0; py <= half; py++)
  {
    float c_im = -1.4f + (float)py * STEP;
    int mirror_y = SCREEN_HEIGHT - 1 - py;

    for (int px = 0; px < SCREEN_WIDTH; px++)
    {
      float c_re = -2.0f + (float)px * STEP;

      float q = (c_re - 0.25f) * (c_re - 0.25f) + c_im * c_im;
      if (q * (q + (c_re - 0.25f)) < 0.25f * c_im * c_im)
      {
        write_pixel((uint16_t)px, (uint16_t)py, 0, 0, 0);
        if (py != mirror_y)
          write_pixel((uint16_t)px, (uint16_t)mirror_y, 0, 0, 0);
        continue;
      }
      float p2x = c_re + 1.0f;
      if (p2x * p2x + c_im * c_im < 0.0625f)
      {
        write_pixel((uint16_t)px, (uint16_t)py, 0, 0, 0);
        if (py != mirror_y)
          write_pixel((uint16_t)px, (uint16_t)mirror_y, 0, 0, 0);
        continue;
      }

      float z_re = 0.0f;
      float z_im = 0.0f;
      int iter = 0;

      while (iter < MAX_ITER)
      {
        float z_re2 = z_re * z_re;
        float z_im2 = z_im * z_im;
        if (z_re2 + z_im2 > 4.0f)
          break;
        float new_re = z_re2 - z_im2 + c_re;
        z_im = 2.0f * z_re * z_im + c_im;
        z_re = new_re;
        iter++;
      }

      uint16_t r, g, b;
      if (iter == MAX_ITER)
      {
        r = 0;
        g = 0;
        b = 0;
      }
      else
      {
        r = (uint16_t)((iter * 8) & 0xFF);
        g = (uint16_t)((iter * 16) & 0xFF);
        b = (uint16_t)(iter * 32);
      }

      write_pixel((uint16_t)px, (uint16_t)py, r, g, b);
      if (py != mirror_y)
        write_pixel((uint16_t)px, (uint16_t)mirror_y, r, g, b);
    }
  }
}

int main(void)
{
  init_display();
  draw_mandelbrot();
#ifdef LOCAL
  if (renderer != NULL)
    SDL_RenderPresent(renderer);
  SDL_Delay(15000);
#endif
  close_display();
  return 0;
}
