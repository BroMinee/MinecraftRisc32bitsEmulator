#ifndef STDIO_H
#define STDIO_H

#include <stdint.h>

#ifdef LOCAL
#include <stdio.h>
#define my_printf printf
#else
void my_printf(const char *fmt, ...);
#endif
const char *my_stdin(char *buf, uint32_t size);
uint32_t my_atoi(const char *s);
char *my_itoa(uint32_t value, char *s);

#endif
