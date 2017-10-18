#include <stdio.h>
#include <math.h>
#include <glib.h>

int frequency_of_primes(int n)
{
    int i, j;
    int freq = n - 1;
    for(i = 2; i <= n; ++i)
    {
        for(j = sqrt(i); j > 1; --j)
        {
            if(i % j == 0)
            {
                --freq;
                break;
            }
        }
    }
    return freq;
}

int main()
{
    printf("C performance comparison test\n");
    GTimer *timer = g_timer_new();
    g_timer_start (timer);
    int f = frequency_of_primes(99999);
    printf("# of primes < 100,000: %d\n", f);
    g_timer_stop(timer);
    gulong microseconds;
    gdouble elapsed = g_timer_elapsed(timer, &microseconds);
    printf("Time elapsed: %.4f\n", elapsed);

    return 0;
}
