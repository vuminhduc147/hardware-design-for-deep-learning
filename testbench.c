#include <stdio.h>
#include "conv2D.h"

int main() {
    // Khai bao ma tran dau vao
    int input[INPUT_ROWS][INPUT_COLS] = {
        {1, 2, 3, 0, 1},
        {4, 5, 6, 1, 0},
        {7, 8, 9, 0, 1},
        {1, 2, 1, 2, 3},
        {0, 1, 0, 2, 1}
    };

    // Kernel tich chap (bo loc Sobel ngang)
    int kernel[KERNEL_SIZE][KERNEL_SIZE] = {
        {1, 0, -1},
        {1, 0, -1},
        {1, 0, -1}
    };

    // Ket qua output sau tich chap
    int output[INPUT_ROWS - KERNEL_SIZE + 1][INPUT_COLS - KERNEL_SIZE + 1] = {0};

    // In ma tran dau vao
    printf("Input Matrix:\n");
    printMatrix(INPUT_ROWS, INPUT_COLS, input);

    // Thuc hien tich chap
    conv2D(input, kernel, output);

    // In ket qua sau khi tinh tich chap
    printf("\nOutput Matrix after Convolution:\n");
    printMatrix(INPUT_ROWS - KERNEL_SIZE + 1, INPUT_COLS - KERNEL_SIZE + 1, output);

    return 0;
}
