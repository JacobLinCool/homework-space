#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "square.h"

int main(int argc, char *argv[]) {
    for (size_t i = 1; i < (size_t)argc; i++) {
        int64_t n = atoll(argv[i]);
        printf("%" PRId64 " -> %" PRId64 "\n", n, square(n));
    }

    return EXIT_SUCCESS;
}
