#include <stdint.h>
#include "lib/stdio.h"
#include "lib/display.h"

static float my_fabs(float x) { return x < 0 ? -x : x; }

static float my_fmod(float a, float b) {
  if (b == 0) return 0;
  int q = (int)(a / b);
  return a - q * b;
}

#define PI 3.14159265358979f
#define DEG2RAD (PI / 180.0f)

static float my_sin_rad(float x) {
  x = my_fmod(x, 2 * PI);
  if (x > PI) x -= 2 * PI;
  if (x < -PI) x += 2 * PI;
  float t = x, s = x;
  for (int i = 1; i <= 10; i++) {
    t *= -x * x / (float)(2 * i * (2 * i + 1));
    s += t;
  }
  return s;
}

static float my_sin(float x) { return my_sin_rad(x * DEG2RAD); }
static float my_cos(float x) { return my_sin_rad(x * DEG2RAD + PI / 2); }

static float my_tan(float x) {
  float c = my_cos(x);
  if (my_fabs(c) < 1e-7f) return 0;
  return my_sin(x) / c;
}

static float my_exp(float x) {
  float s = 1, t = 1;
  for (int i = 1; i <= 20; i++) {
    t *= x / (float)i;
    s += t;
  }
  return s;
}

static float my_ln(float x) {
  if (x <= 0) return 0;
  float e = 0;
  while (x > 2) { x /= 2; e++; }
  while (x < 1) { x *= 2; e--; }
  float u = x - 1;
  float s = 0, t = u;
  for (int i = 1; i <= 30; i++) {
    s += t / (float)i;
    t *= -u;
  }
  return s + e * 0.6931471805599453f;
}

static float my_log10(float x) { return my_ln(x) / 2.302585093f; }

static float my_pow(float base, float exponent) {
  if (base == 0) return 0;
  if (exponent == 0) return 1;
  if (exponent == (float)(int)exponent && exponent > 0 && exponent < 100) {
    float r = 1;
    int n = (int)exponent;
    for (int i = 0; i < n; i++) r *= base;
    return r;
  }
  return my_exp(exponent * my_ln(base));
}

static float my_sqrt(float x) {
  if (x <= 0) return 0;
  return my_pow(x, 0.5f);
}

#define TOK_NUM   1
#define TOK_VAR_X 2
#define TOK_ADD   3
#define TOK_SUB   4
#define TOK_MUL   5
#define TOK_DIV   6
#define TOK_POW   7
#define TOK_SIN   8
#define TOK_COS   9
#define TOK_TAN   10
#define TOK_EXP   11
#define TOK_LN    12
#define TOK_LOG   13
#define TOK_SQRT  14
#define TOK_FNPOW 15
#define TOK_NEG   16

#define MAX_TOKENS 64

static uint8_t rpn_types[MAX_TOKENS];
static float rpn_values[MAX_TOKENS];
static uint8_t rpn_len;

static uint8_t op_stack[32];
static uint8_t op_top;

static int precedence(uint8_t op) {
  if (op == TOK_ADD || op == TOK_SUB) return 1;
  if (op == TOK_MUL || op == TOK_DIV) return 2;
  if (op == TOK_POW) return 3;
  if (op == TOK_NEG) return 4;
  return 0;
}

static int is_right_assoc(uint8_t op) { return op == TOK_POW; }
static int is_function(uint8_t op) { return op >= TOK_SIN && op <= TOK_FNPOW; }

static void emit(uint8_t type, float value) {
  rpn_types[rpn_len] = type;
  rpn_values[rpn_len] = value;
  rpn_len++;
}

static int str_match(const char *s, const char *word) {
  while (*word) {
    if (*s != *word) return 0;
    s++; word++;
  }
  return 1;
}

#define LPAREN 254

static void compile(const char *expr) {
  rpn_len = 0;
  op_top = 0;
  const char *p = expr;
  int expect_operand = 1;

  while (*p) {
    if (*p == ' ') { p++; continue; }

    if (*p == 'x' && !str_match(p, "xp(")) {
      emit(TOK_VAR_X, 0);
      p++;
      expect_operand = 0;
    }
    else if (str_match(p, "pi")) {
      emit(TOK_NUM, PI);
      p += 2;
      expect_operand = 0;
    }
    else if ((*p >= '0' && *p <= '9') || *p == '.') {
      float val = 0;
      while (*p >= '0' && *p <= '9')
        val = val * 10 + (*p++ - '0');
      if (*p == '.') {
        p++;
        float frac = 0.1f;
        while (*p >= '0' && *p <= '9') {
          val += (*p++ - '0') * frac;
          frac *= 0.1f;
        }
      }
      emit(TOK_NUM, val);
      expect_operand = 0;
    }
    else if (str_match(p, "sin("))  { op_stack[op_top++] = TOK_SIN;  p += 3; expect_operand = 1; }
    else if (str_match(p, "cos("))  { op_stack[op_top++] = TOK_COS;  p += 3; expect_operand = 1; }
    else if (str_match(p, "tan("))  { op_stack[op_top++] = TOK_TAN;  p += 3; expect_operand = 1; }
    else if (str_match(p, "exp("))  { op_stack[op_top++] = TOK_EXP;  p += 3; expect_operand = 1; }
    else if (str_match(p, "sqrt(")) { op_stack[op_top++] = TOK_SQRT; p += 4; expect_operand = 1; }
    else if (str_match(p, "ln("))   { op_stack[op_top++] = TOK_LN;   p += 2; expect_operand = 1; }
    else if (str_match(p, "log("))  { op_stack[op_top++] = TOK_LOG;  p += 3; expect_operand = 1; }
    else if (str_match(p, "pow("))  { op_stack[op_top++] = TOK_FNPOW; p += 3; expect_operand = 1; }
    else if (*p == ',') {
      while (op_top > 0 && op_stack[op_top - 1] != LPAREN)
        emit(op_stack[--op_top], 0);
      p++;
      expect_operand = 1;
    }
    else if (*p == '(') {
      op_stack[op_top++] = LPAREN;
      p++;
      expect_operand = 1;
    }
    else if (*p == ')') {
      while (op_top > 0 && op_stack[op_top - 1] != LPAREN)
        emit(op_stack[--op_top], 0);
      if (op_top > 0) op_top--;
      if (op_top > 0 && is_function(op_stack[op_top - 1]))
        emit(op_stack[--op_top], 0);
      p++;
      expect_operand = 0;
    }
    else if (*p == '-' && expect_operand) {
      op_stack[op_top++] = TOK_NEG;
      p++;
      expect_operand = 1;
    }
    else {
      uint8_t op;
      switch (*p) {
        case '+': op = TOK_ADD; break;
        case '-': op = TOK_SUB; break;
        case '*': op = TOK_MUL; break;
        case '/': op = TOK_DIV; break;
        case '^': op = TOK_POW; break;
        default: p++; continue;
      }
      while (op_top > 0 && op_stack[op_top - 1] != LPAREN &&
             !is_function(op_stack[op_top - 1]) &&
             (precedence(op_stack[op_top - 1]) > precedence(op) ||
              (precedence(op_stack[op_top - 1]) == precedence(op) && !is_right_assoc(op))))
        emit(op_stack[--op_top], 0);
      op_stack[op_top++] = op;
      p++;
      expect_operand = 1;
    }
  }

  while (op_top > 0)
    emit(op_stack[--op_top], 0);
}

static float eval_stack[32];

static float eval_rpn(float x) {
  uint8_t sp = 0;
  for (uint8_t i = 0; i < rpn_len; i++) {
    uint8_t t = rpn_types[i];
    if (t == TOK_NUM) {
      eval_stack[sp++] = rpn_values[i];
    } else if (t == TOK_VAR_X) {
      eval_stack[sp++] = x;
    } else if (t == TOK_NEG) {
      eval_stack[sp - 1] = -eval_stack[sp - 1];
    } else if (t >= TOK_SIN && t <= TOK_SQRT) {
      float a = eval_stack[--sp];
      float r = 0;
      switch (t) {
        case TOK_SIN:  r = my_sin(a); break;
        case TOK_COS:  r = my_cos(a); break;
        case TOK_TAN:  r = my_tan(a); break;
        case TOK_EXP:  r = my_exp(a); break;
        case TOK_LN:   r = my_ln(a); break;
        case TOK_LOG:  r = my_log10(a); break;
        case TOK_SQRT: r = my_sqrt(a); break;
      }
      eval_stack[sp++] = r;
    } else if (t == TOK_FNPOW) {
      float b = eval_stack[--sp];
      float a = eval_stack[--sp];
      eval_stack[sp++] = my_pow(a, b);
    } else {
      float b = eval_stack[--sp];
      float a = eval_stack[--sp];
      float r = 0;
      switch (t) {
        case TOK_ADD: r = a + b; break;
        case TOK_SUB: r = a - b; break;
        case TOK_MUL: r = a * b; break;
        case TOK_DIV: r = (b != 0) ? a / b : 0; break;
        case TOK_POW: r = my_pow(a, b); break;
      }
      eval_stack[sp++] = r;
    }
  }
  return eval_stack[0];
}

static char* ftoa(float val, char *buf, int decimals) {
  char *w = buf;
  if (val < 0) { *w++ = '-'; val = -val; }
  float scale = 1;
  for (int i = 0; i < decimals; i++) scale *= 10;
  uint32_t scaled = (uint32_t)(val * scale + 0.5f);
  uint32_t div = (uint32_t)scale;
  uint32_t integer = scaled / div;
  uint32_t frac = scaled % div;
  w = my_itoa(integer, w);
  if (decimals > 0 && frac > 0) {
    *w++ = '.';
    for (int i = decimals - 1; i >= 0; i--) {
      uint32_t d = 1;
      for (int j = 0; j < i; j++) d *= 10;
      *w++ = '0' + (frac / d) % 10;
    }
    while (*(w - 1) == '0') w--;
  }
  *w = '\0';
  return w;
}

#define W 64
#define H 64
#define X_MIN (-100.0f)
#define X_MAX (100.0f)

int main() {
  init_display();

  // Draw axes
  for (int i = 0; i < H; i++)
    write_pixel(W / 2, i,255, 40, 40, 40);
  for (int i = 0; i < W; i++)
    write_pixel(i, H / 2,255, 40, 40, 40);

  my_printf("f(x)= eg: sin(x)+cos(x)");
  char stdin_buf[252];
  const char *input = my_stdin(stdin_buf, sizeof(stdin_buf));

  compile(input);

  float values[W];
  float y_min = 1e20f, y_max = -1e20f;
  for (int i = 0; i < W; i++) {
    float x = X_MIN + (X_MAX - X_MIN) * i / (W - 1);
    float y = eval_rpn(x);
    values[i] = y;
    if (y < y_min) y_min = y;
    if (y > y_max) y_max = y;
  }

  float y_range = y_max - y_min;
  if (y_range < 0.001f) { y_min -= 1; y_max += 1; y_range = 2; }
  y_min -= y_range * 0.05f;
  y_max += y_range * 0.05f;
  y_range = y_max - y_min;

  // Draw curve
  int prev_py = -1;
  for (int i = 0; i < W; i++) {
    int py = H - 1 - (int)((values[i] - y_min) / y_range * (H - 1));
    if (py < 0) py = 0;
    if (py >= H) py = H - 1;

    if (prev_py >= 0 && i > 0) {
      int from = prev_py, to = py;
      if (from > to) { int tmp = from; from = to; to = tmp; }
      for (int y = from; y <= to; y++)
        write_pixel(i, y,255, 0, 255, 0);
    } else {
      write_pixel(i, py,255, 0, 255, 0);
    }
    prev_py = py;
  }

  flush_display();

  // Print bounds
  char buf[64];
  char *p;

  p = buf;
  *p++ = 'f'; *p++ = '('; *p++ = 'x'; *p++ = ')'; *p++ = ' '; *p++ = '='; *p++ = ' ';
  const char *s = input;
  while (*s) *p++ = *s++;
  *p = '\0';
  my_printf("%s", buf);

  p = buf;
  *p++ = 'X'; *p++ = ':'; *p++ = ' ';
  p = ftoa(X_MIN, p, 1);
  *p++ = ' '; *p++ = 't'; *p++ = 'o'; *p++ = ' ';
  p = ftoa(X_MAX, p, 1);
  *p = '\0';
  my_printf("%s", buf);

  p = buf;
  *p++ = 'Y'; *p++ = ':'; *p++ = ' ';
  p = ftoa(y_min, p, 2);
  *p++ = ' '; *p++ = 't'; *p++ = 'o'; *p++ = ' ';
  p = ftoa(y_max, p, 2);
  *p = '\0';
  my_printf("%s", buf);

  close_display();
  return 0;
}
