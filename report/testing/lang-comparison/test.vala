int frequency_of_primes (int n) {
    int i, j;
    int freq = n - 1;
    for (i = 2; i <= n; ++i) {
        for (j = (int) Math.sqrt (i); j > 1; --j) {
            if (i % j == 0) {
                --freq;
                break;
            }
        }
    }
    return freq;
}

public static int main() {
    stdout.printf ("Vala performance comparison test\n\n");
    var timer = new Timer ();
    timer.start ();
    int f = frequency_of_primes (99999);
    stdout.printf ("# of primes < 100,000: %d\n", f);
    timer.stop ();
    stdout.printf ("Time elapsed: %g seconds\n", timer.elapsed());

    return 0;
}
