#ifndef INPUT_H
#define INPUT_H

#include <stdint.h>

#define INPUT_KEYS_ADDRESS  0x0FFE0100
#define INPUT_MOUSE_ADDRESS 0x0FFE0104

#define KEY_FORWARD  0x01
#define KEY_BACKWARD 0x02
#define KEY_LEFT     0x04
#define KEY_RIGHT    0x08
#define KEY_JUMP     0x10
#define KEY_SNEAK    0x20
#define KEY_SPRINT   0x40

#define MOUSE_LEFT_CLICK  1
#define MOUSE_RIGHT_CLICK 2

uint32_t get_keys(void);
uint32_t get_mouse(void);

#endif
