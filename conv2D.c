#include "conv2D.h"
#include <stdio.h>

void conv2D(int input[INPUT_ROWS][INPUT_COLS],
            int kernel[KERNEL_SIZE][KERNEL_SIZE],
            int output[OUTPUT_ROWS][OUTPUT_COLS]) {
    // Giao diện SDAccel
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=kernel offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem2
    #pragma HLS PIPELINE

    // Sử dụng bộ nhớ BRAM cho các mảng input, kernel, output
    #pragma HLS RESOURCE variable=input core=RAM_2P_BRAM
    #pragma HLS RESOURCE variable=kernel core=RAM_2P_BRAM
    #pragma HLS RESOURCE variable=output core=RAM_2P_BRAM

    // Phân vùng mảng input và kernel
    #pragma HLS ARRAY_PARTITION variable=input complete dim=2
    #pragma HLS ARRAY_PARTITION variable=kernel complete dim=2

    // Vòng lặp quét cửa sổ kernel trên input
    for (int i = 0; i <= INPUT_ROWS - KERNEL_SIZE; i++) {
        for (int j = 0; j <= INPUT_COLS - KERNEL_SIZE; j++) {
            int sum = 0; // Tính tổng tích lũy cho một vị trí output
            for (int ki = 0; ki < KERNEL_SIZE; ki++) {
                #pragma HLS UNROLL
                for (int kj = 0; kj < KERNEL_SIZE; kj++) {
                    #pragma HLS UNROLL
                    sum += input[i + ki][j + kj] * kernel[ki][kj];
                }
            }
            output[i][j] = sum;
        }
    }
}

void printMatrix(int rows, int cols, int matrix[rows][cols]) {
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			printf("%d ", matrix[i][j]);
        }
        printf("\n");
	}
}
