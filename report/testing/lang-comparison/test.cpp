#include <cstdio>
#include <ctime>
#include <cmath>

int frequency_of_primes(int n) {
    int i, j;
    int freq = n - 1;
    for(i = 2; i <= n; ++i) {
        for(j = sqrt(i); j > 1; --j) {
            if(i % j == 0) {
                --freq;
                break;
            }
        }
    }
    return freq;
}

int main() {
    printf("C++ performance comparison test\n");
    int t = clock();
    int f = frequency_of_primes(99999);
    printf("# of primes < 100,000: %d\n", f);
    t = clock() - t;
    printf("Time elapsed: %.4f seconds\n", ((float)t)/CLOCKS_PER_SEC);

    return 0;
}
