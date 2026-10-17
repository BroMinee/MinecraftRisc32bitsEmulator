#include "stdio.h"

#ifdef LOCAL
#include <stdio.h>
#include <string.h>
#define my_printf printf
#else
void my_printf(const char *fmt, ...)
{
  volatile char *buf = (volatile char *)0x0FFE0504;
  volatile uint32_t *ctrl = (volatile uint32_t *)0x0FFE0500;

  __builtin_va_list args;
  __builtin_va_start(args, fmt);

  int pos = 0;
  while (*fmt && pos < 251)
  {
    if (*fmt == '%')
    {
      fmt++;
      if (*fmt == 's')
      {
        const char *s = __builtin_va_arg(args, const char *);
        while (*s && pos < 251)
          buf[pos++] = *s++;
      }
      else if (*fmt == 'd')
      {
        int32_t v = __builtin_va_arg(args, int32_t);
        if (v < 0)
        {
          buf[pos++] = '-';
          v = -v;
        }
        char tmp[11];
        char *end = my_itoa((uint32_t)v, tmp);
        for (char *p = tmp; p < end && pos < 251; p++)
          buf[pos++] = *p;
      }
      else if (*fmt == 'u')
      {
        uint32_t v = __builtin_va_arg(args, uint32_t);
        char tmp[11];
        char *end = my_itoa(v, tmp);
        for (char *p = tmp; p < end && pos < 251; p++)
          buf[pos++] = *p;
      }
      else if (*fmt == 'x')
      {
        uint32_t v = __builtin_va_arg(args, uint32_t);
        int started = 0;
        for (int i = 28; i >= 0; i -= 4)
        {
          uint32_t nibble = (v >> i) & 0xF;
          if (nibble || started || i == 0)
          {
            started = 1;
            buf[pos++] = nibble < 10 ? '0' + nibble : 'a' + nibble - 10;
            if (pos >= 251)
              break;
          }
        }
      }
      else if (*fmt == 'c')
      {
        int c = __builtin_va_arg(args, int);
        buf[pos++] = (char)c;
      }
      else if (*fmt == '%')
      {
        buf[pos++] = '%';
      }
      fmt++;
    }
    else
    {
      buf[pos++] = *fmt++;
    }
  }
  buf[pos] = '\0';

  __builtin_va_end(args);

  *ctrl = 1;
}
#endif

uint32_t my_atoi(const char *s)
{
  uint32_t result = 0;
  while (*s >= '0' && *s <= '9')
  {
    result = result * 10 + (*s - '0');
    s++;
  }
  return result;
}

#ifdef LOCAL
#include <string.h>
const char *my_stdin(char *buf, uint32_t size)
{
  if (fgets(buf, size, stdin))
  {
    buf[strcspn(buf, "\n")] = '\0';
  }
  return buf;
}
#else
const char *my_stdin(char *buf, uint32_t size)
{
  (void)buf;
  (void)size;
  volatile uint32_t *ctrl = (volatile uint32_t *)0x0FFE0600;
  volatile char *input = (volatile char *)0x0FFE0604;
  *ctrl = 1;
  asm volatile("" ::: "memory");
  return (const char *)input;
}
#endif

char *my_itoa(uint32_t value, char *s)
{
  uint32_t tmp = value;
  uint32_t nb_digits = 1;
  while (tmp > 9)
  {
    nb_digits *= 10;
    tmp /= 10;
  }

  uint32_t i = 0;
  for (; nb_digits != 0; i++)
  {
    s[i] = value / nb_digits + '0';
    value = value - nb_digits * (value / nb_digits);
    nb_digits /= 10;
  }
  return s + i;
}
