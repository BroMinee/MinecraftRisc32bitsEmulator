#include <stdint.h>
#include "lib/display.h"

#define CX 32
#define CY 30
#define FP 10
#define FP_ONE (1 << FP)
#define S 18

static const uint8_t palette[][3] = {
    {64, 52, 32},    {78, 108, 50},   {84, 60, 36},    {98, 135, 62},
    {111, 73, 43},   {119, 116, 128}, {130, 37, 35},   {134, 67, 65},
    {145, 143, 153}, {159, 157, 167}, {162, 46, 44},   {168, 96, 48},
    {168, 75, 73},   {168, 84, 81},   {168, 165, 175}, {172, 105, 103},
    {179, 176, 185}, {187, 109, 58},  {194, 135, 62},  {197, 194, 205},
    {199, 126, 79},  {201, 143, 107}, {205, 58, 54},   {205, 202, 213},
    {206, 122, 119}, {206, 143, 102}, {206, 203, 214}, {207, 166, 139},
    {210, 207, 218}, {213, 210, 221}, {215, 180, 157}, {243, 96, 92},
};

static const uint8_t tex_front[16][16] = {
    {20,20,20,25,11,25,20,20,20,20,20,25,11,25,20,20},
    {20,20,25,11,30,11,25,20,20,20,25,11,30,11,25,20},
    {20,25,11,30,27,30,11,25,25,25,11,30,27,30,11,25},
    {25,11,30,27,27,27,30, 0, 2, 0,30,27,27,27,30,11},
    {11,30,27,27,27,27, 4,28,23,19, 4,27,27,27,27,30},
    {17,11,21,27,27, 4,26,16,16,16, 9, 4,27,27,21,11},
    {20,17,11,21, 4,26,16,16,10,16,16, 8, 4,21,11,17},
    {20,20,17, 0,28,16,16,16,16,16,16,16, 8, 0,17,20},
    {20,20,20, 2,23,16,18,16, 7,16,31,16, 5, 2,20,20},
    {20,20,25, 0,23,16,16,16,16,16,16,16, 5, 0,25,20},
    {20,25,11,30, 4, 9,16,16, 1,16,16, 5, 4,30,11,25},
    {25,11,30,27,21, 4, 8,16,16,16, 5, 4,21,27,30,11},
    {11,30,27,27,27,21, 4, 8, 5, 5, 4,21,27,27,27,30},
    {17,11,27,27,27,27,21, 0, 2, 0,21,27,27,27,27,11},
    {20,17,11,27,27,21,11,17,17,17,11,21,27,27,11,17},
    {20,20,17,11,21,11,17,20,20,20,17,11,21,11,17,20},
};

static const uint8_t tex_side[16][16] = {
    {20,20,20,25,11,25,20,20,20,20,20,25,11,25,20,20},
    {20,20,25,11,30,11,25,20,25,20,25,11,30,11,25,20},
    {20,25,11,30,27,30,11,25, 4,25,11,30,27,30,11,25},
    {25,11,30,27,27,27,30, 0,23, 0,30,27,27,27,30,11},
    {11,30,27,27,27,21, 4,28,16,19, 4,21,27,27,27,30},
    {17,11,21,27,21, 4,29,16,16,16,19, 4,21,27,21,11},
    {20,17,11,21, 4,29,16,16, 6,16,16, 9, 4,21,11,17},
    {20,20,17, 0,28,16,16,16,16,16,16,16, 8, 0,17,20},
    {20,20,20, 2,23,16,18,16,24,16,31,16, 5, 2,20,20},
    {20,20,25, 0,23,16,16,16,16,16,16,16, 5, 0,25,20},
    {20,25,11, 4,19,16,12,16,13,16, 3,16, 5, 4,11,25},
    {25,11,30, 4,19,16,16,16,16,16,16,16, 5, 4,30,11},
    {11,30,27, 4,19,14, 9, 8, 5, 5, 5, 5, 5, 4,27,30},
    {17,11,27,21, 4, 4, 2, 0, 2, 0, 4, 4, 4,21,27,11},
    {20,17,11,27,21,21,11,17,17,17,11,21,21,27,11,20},
    {20,20,17,11,21,11,17,20,20,20,17,11,21,11,20,20},
};

static int32_t verts[8][3];
static int32_t px[8], py[8];

static void init_verts(void) {
    int32_t p = S * FP_ONE;
    int32_t n = -p;
    verts[0][0]=n; verts[0][1]=n; verts[0][2]=n;
    verts[1][0]=p; verts[1][1]=n; verts[1][2]=n;
    verts[2][0]=p; verts[2][1]=p; verts[2][2]=n;
    verts[3][0]=n; verts[3][1]=p; verts[3][2]=n;
    verts[4][0]=n; verts[4][1]=n; verts[4][2]=p;
    verts[5][0]=p; verts[5][1]=n; verts[5][2]=p;
    verts[6][0]=p; verts[6][1]=p; verts[6][2]=p;
    verts[7][0]=n; verts[7][1]=p; verts[7][2]=p;
}

#define COS_Y 786
#define SIN_Y 659
#define COS_X 887
#define SIN_X 512

static void project(void) {
    for (uint8_t i = 0; i < 8; i++) {
        int32_t x = verts[i][0];
        int32_t y = verts[i][1];
        int32_t z = verts[i][2];
        int32_t rx = (x * COS_Y + z * SIN_Y) >> FP;
        int32_t rz = (-x * SIN_Y + z * COS_Y) >> FP;
        int32_t fy = (y * COS_X - rz * SIN_X) >> FP;
        px[i] = CX + (rx >> FP);
        py[i] = CY + (fy >> FP);
    }
}

static int32_t cross2d(int32_t ax, int32_t ay, int32_t bx, int32_t by) {
    return ax * by - ay * bx;
}

static void rotate_normal(int32_t nx, int32_t ny, int32_t nz,
                           int32_t *ox, int32_t *oy, int32_t *oz) {
    int32_t rx = (nx * COS_Y + nz * SIN_Y) >> FP;
    int32_t rz = (-nx * SIN_Y + nz * COS_Y) >> FP;
    int32_t fy = (ny * COS_X - rz * SIN_X) >> FP;
    *ox = rx; *oy = fy; *oz = rz;
}

static int32_t isqrt(int32_t n) {
    if (n <= 0) return 0;
    int32_t x = n, y = (x + 1) / 2;
    while (y < x) { x = y; y = (x + n / x) / 2; }
    return x;
}

static void compute_lighting(int32_t nx, int32_t ny, int32_t nz,
                              int32_t *diff_fp8, int32_t *spec_fp8) {
    int32_t lx = 309, ly = -926, lz = -309;

    int32_t rnx, rny, rnz;
    rotate_normal(nx, ny, nz, &rnx, &rny, &rnz);

    int32_t len = isqrt(rnx * rnx + rny * rny + rnz * rnz);
    if (len > 0) {
        rnx = rnx * FP_ONE / len;
        rny = rny * FP_ONE / len;
        rnz = rnz * FP_ONE / len;
    }

    int32_t ndl = (rnx * lx + rny * ly + rnz * lz) >> FP;
    if (ndl < 0) ndl = 0;
    int32_t diff = 90 + ((166 * ndl) >> FP);
    if (diff > 256) diff = 256;

    int32_t vvx, vvy, vvz;
    rotate_normal(0, 0, -FP_ONE, &vvx, &vvy, &vvz);
    int32_t vlen = isqrt(vvx * vvx + vvy * vvy + vvz * vvz);
    if (vlen > 0) {
        vvx = vvx * FP_ONE / vlen;
        vvy = vvy * FP_ONE / vlen;
        vvz = vvz * FP_ONE / vlen;
    }

    int32_t hx = lx + vvx, hy = ly + vvy, hz = lz + vvz;
    int32_t hlen = isqrt(hx * hx + hy * hy + hz * hz);
    if (hlen > 0) {
        hx = hx * FP_ONE / hlen;
        hy = hy * FP_ONE / hlen;
        hz = hz * FP_ONE / hlen;
    }

    int32_t ndh = (rnx * hx + rny * hy + rnz * hz) >> FP;
    if (ndh < 0) ndh = 0;
    int32_t ndh2 = (ndh * ndh) >> FP;
    int32_t ndh3 = (ndh2 * ndh) >> FP;
    int32_t ndh6 = (ndh3 * ndh3) >> FP;
    int32_t spec = (204 * ndh6) >> FP;
    if (spec > 255) spec = 255;

    *diff_fp8 = diff;
    *spec_fp8 = spec;
}

static void draw_textured_face(uint8_t vi0, uint8_t vi1, uint8_t vi2, uint8_t vi3,
                                const uint8_t tex[16][16],
                                int32_t diff, int32_t spec) {
    int32_t x0 = px[vi0], y0 = py[vi0];
    int32_t x1 = px[vi1], y1 = py[vi1];
    int32_t x2 = px[vi2], y2 = py[vi2];
    int32_t x3 = px[vi3], y3 = py[vi3];

    int32_t minx = x0, maxx = x0, miny = y0, maxy = y0;
    if (x1 < minx) minx = x1; if (x1 > maxx) maxx = x1;
    if (x2 < minx) minx = x2; if (x2 > maxx) maxx = x2;
    if (x3 < minx) minx = x3; if (x3 > maxx) maxx = x3;
    if (y1 < miny) miny = y1; if (y1 > maxy) maxy = y1;
    if (y2 < miny) miny = y2; if (y2 > maxy) maxy = y2;
    if (y3 < miny) miny = y3; if (y3 > maxy) maxy = y3;
    if (minx < 0) minx = 0;
    if (miny < 0) miny = 0;
    if (maxx >= SCREEN_WIDTH) maxx = SCREEN_WIDTH - 1;
    if (maxy >= SCREEN_HEIGHT) maxy = SCREEN_HEIGHT - 1;

    int32_t a_area = cross2d(x1 - x0, y1 - y0, x2 - x0, y2 - y0);
    int32_t b_area = cross2d(x2 - x0, y2 - y0, x3 - x0, y3 - y0);

    for (int32_t spy = miny; spy <= maxy; spy++) {
        for (int32_t spx = minx; spx <= maxx; spx++) {
            int32_t dpx = spx - x0, dpy = spy - y0;

            if (a_area != 0) {
                int32_t w1a = cross2d(dpx, dpy, x2 - x0, y2 - y0);
                int32_t w2a = cross2d(x1 - x0, y1 - y0, dpx, dpy);
                if (a_area > 0 ? (w1a >= 0 && w2a >= 0 && w1a + w2a <= a_area)
                               : (w1a <= 0 && w2a <= 0 && w1a + w2a >= a_area)) {
                    int32_t u = (w1a + w2a) * 16 / a_area;
                    int32_t v = w2a * 16 / a_area;
                    if (u < 0) u = 0; if (u > 15) u = 15;
                    if (v < 0) v = 0; if (v > 15) v = 15;
                    uint8_t ci = tex[v][u];
                    int32_t r = (palette[ci][0] * diff >> 8) + spec;
                    int32_t g = (palette[ci][1] * diff >> 8) + spec;
                    int32_t b = (palette[ci][2] * diff >> 8) + spec;
                    if (r > 255) r = 255;
                    if (g > 255) g = 255;
                    if (b > 255) b = 255;
                    write_pixel(spx, spy, r, g, b);
                    continue;
                }
            }

            if (b_area != 0) {
                int32_t w1b = cross2d(dpx, dpy, x3 - x0, y3 - y0);
                int32_t w2b = cross2d(x2 - x0, y2 - y0, dpx, dpy);
                if (b_area > 0 ? (w1b >= 0 && w2b >= 0 && w1b + w2b <= b_area)
                               : (w1b <= 0 && w2b <= 0 && w1b + w2b >= b_area)) {
                    int32_t u = w1b * 16 / b_area;
                    int32_t v = (w1b + w2b) * 16 / b_area;
                    if (u < 0) u = 0; if (u > 15) u = 15;
                    if (v < 0) v = 0; if (v > 15) v = 15;
                    uint8_t ci = tex[v][u];
                    int32_t r = (palette[ci][0] * diff >> 8) + spec;
                    int32_t g = (palette[ci][1] * diff >> 8) + spec;
                    int32_t b = (palette[ci][2] * diff >> 8) + spec;
                    if (r > 255) r = 255;
                    if (g > 255) g = 255;
                    if (b > 255) b = 255;
                    write_pixel(spx, spy, r, g, b);
                }
            }
        }
    }
}

static void draw_line(int32_t x0, int32_t y0, int32_t x1, int32_t y1,
                       uint8_t r, uint8_t g, uint8_t b) {
    int32_t dx = x1 - x0, dy = y1 - y0;
    int32_t stepx = 1, stepy = 1;
    if (dx < 0) { dx = -dx; stepx = -1; }
    if (dy < 0) { dy = -dy; stepy = -1; }
    int32_t err = dx - dy;
    while (1) {
        if (x0 >= 0 && x0 < SCREEN_WIDTH && y0 >= 0 && y0 < SCREEN_HEIGHT)
            write_pixel(x0, y0, r, g, b);
        if (x0 == x1 && y0 == y1) break;
        int32_t e2 = err * 2;
        if (e2 > -dy) { err -= dy; x0 += stepx; }
        if (e2 < dx)  { err += dx; y0 += stepy; }
    }
}

int main(void) {
    init_display();
    init_verts();
    project();

    draw_line(px[4], py[4], px[5], py[5], 35, 25, 15);
    draw_line(px[5], py[5], px[6], py[6], 35, 25, 15);
    draw_line(px[6], py[6], px[7], py[7], 35, 25, 15);
    draw_line(px[7], py[7], px[4], py[4], 35, 25, 15);
    draw_line(px[3], py[3], px[7], py[7], 35, 25, 15);
    draw_line(px[2], py[2], px[6], py[6], 35, 25, 15);

    draw_line(px[0], py[0], px[4], py[4], 60, 40, 25);
    draw_line(px[5], py[5], px[1], py[1], 60, 40, 25);
    draw_line(px[1], py[1], px[0], py[0], 60, 40, 25);
    draw_line(px[0], py[0], px[3], py[3], 60, 40, 25);
    draw_line(px[2], py[2], px[3], py[3], 60, 40, 25);
    draw_line(px[2], py[2], px[1], py[1], 60, 40, 25);

    int32_t diff_top, spec_top, diff_right, spec_right, diff_left, spec_left;
    compute_lighting(0, -FP_ONE, 0, &diff_top, &spec_top);
    compute_lighting(FP_ONE, 0, 0, &diff_right, &spec_right);
    compute_lighting(0, 0, -FP_ONE, &diff_left, &spec_left);

    draw_textured_face(0, 4, 5, 1, tex_front, diff_top, spec_top);
    draw_textured_face(1, 5, 6, 2, tex_side, diff_right, spec_right);
    draw_textured_face(0, 1, 2, 3, tex_side, diff_left, spec_left);

    flush_display();
    close_display();
    return 0;
}
