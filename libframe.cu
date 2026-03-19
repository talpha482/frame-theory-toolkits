#include <iostream>
#include <math.h>
#include <stdio.h>

#include "culbas_v2.h"
#include "cuComplex.h"
#include "thrust/complex.h"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include "libframe.cuh"

//////////////
/// Purposes: Creating the Gram Matrices from a Frame - Matrices of Inner Products
/// Basically: Create the Hermitian Matrices First
/// Then we would multiplying with frame and giving them into a new Gram Matrices 
//////////////

cudaError_t gramMatrixCUDA(
	const cuDoubleComplex* Frame, 
	cuDoubleComplex* Gram, 
	int rows, int cols)
{
	
	cuDoubleComplex* alpha = make_cuDoubleComplex(1, 0);
	cuDoubleComplex* beta = make_cuDoubleComplex(0, 0);
	cudaError_t cudaStatus;

	int N = rows * cols;
	cuDoubleComplex *Hermitian;
	cudaStatus = cudaMalloc(&Hermitian, N * sizeof(cuDoubleComplex));
	cudastatus = cudaMalloc(&Gram, N * sizeof(cuDoubleComplex));

	culbasZdotc();

	cublasZgeam();

	cudaFree(Hermitian);
}

///
// Creating Projective Frame
///

__global__ void projFrame(
	const cuDoubleComplex* Frame,
	int rows, int cols){
}

///
// Creating Matrices Including Angles
///

__global__ void angleMatrix(
	const cuDoubleComplex* Frame,
	cuDoubleComplex* AngleMatrix,
	int rows, int cols) {

}


/// Exporting Matrices
/// 
///

__global__ void exportingMatrices(
	const cuDoubleComplex* Matrices,
	int rows, int cols
) {
	for (int incrementRows = 0; increment < rows; increment++) {
		for (int incrementCols = 0; incrementCols < cols; increment++) {

		}
	}
}