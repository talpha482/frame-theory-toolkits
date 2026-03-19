# FrameKit: A Toolkit for Frame Theory Research

![License](https://img.shields.io/badge/license-Apache%202.0-blue)
![CUDA](https://img.shields.io/badge/CUDA-11.8%2B-green)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20WSL2-lightgrey)

---

## Description

**FrameKit** is an open-source computational research toolkit for frame theory, designed for both high-performance GPU computing and symbolic mathematical exploration. Written in **CUDA/C++** for GPU-accelerated numerical computation and **Wolfram Language** for symbolic analysis, FrameKit bridges the gap between large-scale HPC workloads and interactive mathematical research.

The toolkit is designed to be **interoperable** — heavy numerical computations run on NVIDIA GPU architectures via the CUDA backend, while results can be exported through intermediate files (`.csv`, `.m`, `.wl`) and consumed directly within Wolfram Mathematica for symbolic verification, visualization, and further analysis.

FrameKit is optimized for high-dimensional, complex-valued matrix operations that arise naturally in frame theory, including Gram matrix analysis, tight frame generation, and inner product space computations over complex Hilbert spaces.

---

## Features

### Core Linear Algebra
- **Gram Matrix Computation** — computes G = AᴴA for complex matrices using cuBLAS `cublasZgemm` with conjugate transpose, returning the full n×n Gram matrix
- **Hermitian Transpose** — explicitly computes and stores Aᴴ as a new matrix via `cublasZgeam` with `CUBLAS_OP_C`
- **M-Inner Products** — batch Hermitian inner product calculations ⟨x, y⟩_M = xᴴMy across collections of vectors and matrices using `cublasZdotc` and `cublasZhemv`
- **Moment function** - 

### Frame Generation
- **Equiangular Tight Frames (ETF)** — generates ETFs of user-defined size (n vectors in ℂᵈ) satisfying the equiangularity condition |⟨fᵢ, fⱼ⟩| = c for all i ≠ j
- **Unit-Norm Frames** — generates unit-norm frames of user-defined size with configurable frame bounds A, B satisfying AI ≤ S ≤ BI where S is the frame operator

### Interoperability
- **Export pipeline** — numerical results exportable as `.csv` and Wolfram-readable `.m` files for seamless consumption in Mathematica
- **Wolfram Language package** — `FrameKit.wl` wraps exported results with symbolic utilities for visualization, verification, and further algebraic manipulation

---

## Requirements

### CUDA Backend
- NVIDIA GPU with compute capability sm_75 or higher (Turing, Ampere, Ada Lovelace supported)
- CUDA Toolkit 11.8 or newer
- cuBLAS (included with CUDA Toolkit)
- CMake 3.20+
- GCC 9+ or Clang 10+ (host compiler)

### Wolfram Backend
- Wolfram Mathematica 13.0+
- Wolfram Language kernel (for `.wl` scripts without GUI)

---

## Building

## License

Apache 2.0 — see [LICENSE](LICENSE) for details.

---

## Citation

If you use FrameKit in your research, please cite:

```bibtex
@software{framekit,
  author  = {Your Name},
  title   = {FrameKit: A Toolkit for Frame Theory Research},
  year    = {2026},
  url     = {https://github.com/yourname/FrameKit}
}
```
---
### Usage for the Testing run
Portions of this research were conducted with high-performance computational resources provided by Louisiana State University (http://www.hpc.lsu.edu).

---
