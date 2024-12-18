#ifndef CONV2D_H
#define CONV2D_H

#define INPUT_ROWS 5
#define INPUT_COLS 5
#define KERNEL_SIZE 3

#define OUTPUT_ROWS (INPUT_ROWS - KERNEL_SIZE + 1)
#define OUTPUT_COLS (INPUT_COLS - KERNEL_SIZE + 1)

void conv2D(int input[INPUT_ROWS][INPUT_COLS], 
            int kernel[KERNEL_SIZE][KERNEL_SIZE], 
            int output[OUTPUT_ROWS][OUTPUT_COLS]);

void printMatrix(int rows, int cols, int matrix[rows][cols]);

#endif
