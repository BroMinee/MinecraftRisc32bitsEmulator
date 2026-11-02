#include "input.h"

#ifdef LOCAL
#include <SDL2/SDL.h>

static uint32_t local_keys = 0;
static uint32_t local_mouse = 0;

void poll_input(void) {
    SDL_Event e;
    local_keys = 0;
    local_mouse = 0;
    while (SDL_PollEvent(&e)) {
        if (e.type == SDL_MOUSEBUTTONDOWN) {
            if (e.button.button == SDL_BUTTON_LEFT)  local_mouse = MOUSE_LEFT_CLICK;
            if (e.button.button == SDL_BUTTON_RIGHT) local_mouse = MOUSE_RIGHT_CLICK;
        }
    }
    const uint8_t *state = SDL_GetKeyboardState(NULL);
    if (state[SDL_SCANCODE_W])      local_keys |= KEY_FORWARD;
    if (state[SDL_SCANCODE_S])      local_keys |= KEY_BACKWARD;
    if (state[SDL_SCANCODE_A])      local_keys |= KEY_LEFT;
    if (state[SDL_SCANCODE_D])      local_keys |= KEY_RIGHT;
    if (state[SDL_SCANCODE_SPACE])  local_keys |= KEY_JUMP;
    if (state[SDL_SCANCODE_LSHIFT]) local_keys |= KEY_SNEAK;
    if (state[SDL_SCANCODE_LCTRL])  local_keys |= KEY_SPRINT;
}

uint32_t get_keys(void) {
    return local_keys;
}

uint32_t get_mouse(void) {
    uint32_t m = local_mouse;
    local_mouse = 0;
    return m;
}

#else

uint32_t get_keys(void) {
    return *(volatile uint32_t *)INPUT_KEYS_ADDRESS;
}

uint32_t get_mouse(void) {
    volatile uint32_t *mouse = (volatile uint32_t *)INPUT_MOUSE_ADDRESS;
    uint32_t val = *mouse;
    if (val) *mouse = 0;
    return val;
}

#endif
