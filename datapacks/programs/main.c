#include <stdint.h>
#include "lib/stdio.h"
#include "lib/display.h"

uint32_t fibo(uint16_t n);

int main() {
  init_display();

  my_printf("Enter a number:");

  char stdin_buf[252];
  const char *input = my_stdin(stdin_buf, sizeof(stdin_buf));
  uint32_t n = my_atoi(input);

  uint32_t res = fibo((uint16_t)n);
  my_printf("fibo(%u) = %u", n, res);

  char myBuf[32];
  char *p = myBuf;
  p[0] = 'f';
  p[1] = 'i';
  p[2] = 'b';
  p[3] = 'o';
  p[4] = '(';
  p += 5;
  p = my_itoa(n, p);
  p[0] = ')';
  p[1] = '=';
  p += 2;
  p = my_itoa(res, p);
  *p = '\0';
  draw_string(0, 0, myBuf, 0, 255, 0);

  close_display();
  return 0;
}

uint32_t fibo(uint16_t n) {
  if (n < 2)
    return n;
  uint32_t a = 0, b = 1, temp;
  for (uint32_t i = 2; i <= n; i++)
  {
    temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}
