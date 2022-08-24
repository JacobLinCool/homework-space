#include "square.h"

#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

void expect(int64_t expected, int64_t actual) {
    if (expected != actual) {
        fprintf(stderr, "Expected %" PRId64 ", got %" PRId64 "\n", expected, actual);
        exit(EXIT_FAILURE);
    }
}

int main() {
    expect(0, square(0));
    expect(1, square(1));
    expect(4, square(2));
    expect(9, square(3));
    expect(16, square(4));
    expect(25, square(5));
    expect(36, square(6));
    expect(49, square(7));
    expect(64, square(8));
    expect(81, square(9));
    expect(100, square(10));

    return EXIT_SUCCESS;
}
