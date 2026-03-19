///////////////////////////////
// Libraries for the Implementations of ETFs Generations of certain dimensions
// 
// 
///////////////////////////////

// Standard CPP libraries
#include <iostream>

#include <helper_cuda.cu>
#include <math.h>

// Standard CUDA Includes
#include <cooperative_groups.h>
#include <cuda_gl_interlop.h>
#include <cuda_runtime.h>

namespace cg = cooperative_groups;

// Header Files Include
#include "etfsgenerator_cuda.cuh"

///////////////////////////////
// Equiangular Tight Frames Generations: Combinatoric Approaches
///////////////////////////////

__global__ void hermitian(float* A, float* B, float* C) {

}
