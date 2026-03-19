#pragma once
#include <cuda_runtime.h>
#include <culbas_v2.h>
#include <cuComplex.h>
#include <thrust/complex.h>

cudaError_t gramMatrixCUDA(const cuDoubleComplex* Frame, cuDoubleComplex* Gram, int rows, int cols);