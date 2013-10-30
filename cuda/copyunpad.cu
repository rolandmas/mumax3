
// Copy src (size S, larger) to dst (size D, smaller)
extern "C" __global__ void
copyunpad(float* __restrict__  dst, int Dx, int Dy, int Dz,
          float* __restrict__  src, int Sx, int Sy, int Sz) {

    int iz = blockIdx.z * blockDim.z + threadIdx.z;
    int iy = blockIdx.y * blockDim.y + threadIdx.y;
    int ix = blockIdx.x * blockDim.x + threadIdx.x;

    if (i<Dz && j<Dy && k<Dx) {
        dst[(iz*Dy + iy)*Dx + ix] = src[(iz*Sy + iy)*Sx + ix];
    }
}

