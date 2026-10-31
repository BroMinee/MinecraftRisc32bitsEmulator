#ifndef DISPLAY_H
#define DISPLAY_H

#include <stdint.h>

#define SCREEN_WIDTH  64
#define SCREEN_HEIGHT 64
#define SCREEN_START_ADDRESS 0x0FFF0000

void init_display(void);
void close_display(void);
void flush_display(void);
void write_pixel(uint16_t x, uint16_t y, uint8_t a, uint16_t r, uint16_t g, uint16_t b);
void draw_char(int x, int y, char c, uint8_t r, uint8_t g, uint8_t b);
void draw_string(int x, int y, const char *str, uint8_t r, uint8_t g, uint8_t b);

#endif
