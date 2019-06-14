#include <stdio.h>

__global__ void HelloFromGPU()
{
    printf("Hello World from GPU!\n");
}

int main()
{
    printf("Hello World from CPU!\n");

    HelloFromGPU<<<1, 10>>>();
    cudaDeviceReset();

    return 0;
}