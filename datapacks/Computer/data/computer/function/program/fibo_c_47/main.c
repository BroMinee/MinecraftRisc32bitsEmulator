#include <stdint.h>


uint32_t fibo(uint16_t n);

int main()
{
        uint32_t a = fibo(47);
        return 0;
}

uint32_t fibo(uint16_t n)
{
        if(n <2 ) return n;
        uint32_t a = 0, b = 1, temp;
        for (uint32_t i = 2; i <= n; i++)
        {
                temp = a + b;
                a = b;
                b = temp;
        }
        return b;
}
