# Simplex sequence indicators for DNA sequences
function ua(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Bool where {N}
    return (@view sequence[n:n]) == dna"A"
end
 
function uc(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Bool where {N}
    return (@view sequence[n:n]) == dna"C"
end
 
function ug(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Bool where {N}
    return (@view sequence[n:n]) == dna"G" 
end
 
function ut(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Bool where {N}
    return (@view sequence[n:n]) == dna"T"
end

# RGB indicators for DNA sequences
function xr(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Float64 where {N}
    return (√2/3) * (2 * ut(sequence, n) - uc(sequence, n) - ug(sequence, n))
end

function xg(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Float64 where {N}
    return (√6/3) * (uc(sequence, n) - ug(sequence, n))
end

function xb(sequence::NucleicSeqOrView{DNAAlphabet{N}}, n::Int64)::Float64 where {N}
    return (1/3) * (3 * ua(sequence, n) - ut(sequence, n) - uc(sequence, n) - ug(sequence, n))
end

@doc raw"""
    biosimplex(sequence::NucleicSeqOrView{DNAAlphabet{N}}) -> Matrix{Float64}

The `biosimplex` function takes a nucleic acid sequence `sequence` and returns a matrix of indicators for binary sequences.

# Arguments
- `sequence::NucleicSeqOrView{DNAAlphabet{N}}`: The input nucleic acid sequence.

# Returns
- `mtx::Matrix{Float64}`: The matrix of indicators for binary sequences.

The matrix `mtx` has dimensions 3 x seqlen, where seqlen is the length of the input sequence. Each row of the matrix corresponds to a different indicator: xr, xg, and xb.

The function uses the following precedent methods:
- `xr(sequence, i)`: Returns the indicator for the presence of the nucleotide 'r' at position `i` in the sequence.
- `xg(sequence, i)`: Returns the indicator for the presence of the nucleotide 'g' at position `i` in the sequence.
- `xb(sequence, i)`: Returns the indicator for the presence of the nucleotide 'b' at position `i` in the sequence.

Those methods are called the RGB indicators of a DNA sequence in a defined tetrahedron space called a simplex. Mathematically, the nucleotides can be represented in a tetrahedron space by adopting a coordinate system with the following basis vectors:

```math
\begin{aligned}
& A \rightarrow\left(a_r, a_g, a_b\right)=\mathbf{k} \\
& C \rightarrow\left(c_r, c_g, c_b\right)=\frac{-\sqrt{2}}{3} \mathbf{i}+\frac{\sqrt{6}}{3} \mathbf{j}-\frac{1}{3} \mathbf{k} \\
& G \rightarrow\left(g_r, g_g, g_b\right)=\frac{-\sqrt{2}}{3} \mathbf{i}-\frac{\sqrt{6}}{3} \mathbf{j}-\frac{1}{3} \mathbf{k} \\
& T \rightarrow\left(t_r, t_g, t_b\right)=\frac{2 \sqrt{2}}{3} \mathbf{i}-\frac{1}{3} \mathbf{k}
\end{aligned}
```

The RGB indicators are then calculated as follows:

```math
\begin{aligned}
& x_r[n]=\frac{\sqrt{2}}{3}\left(2 u_T[n]-u_C[n]-u_G[n]\right) \\
& x_g[n]=\frac{\sqrt{6}}{3}\left(u_C[n]-u_G[n]\right) \\
& x_b[n]=\frac{1}{3}\left(3 u_A[n]-u_T[n]-u_C[n]-u_G[n]\right)
\end{aligned}
```

Finally, the simplex space is a 3D space where the RGB indicators are used to represent the DNA sequences.
"""
function biosimplex(sequence::NucleicSeqOrView{DNAAlphabet{N}}) where {N}
    seqlen = length(sequence)
    mtx = Matrix{Float64}(undef, 3, seqlen)
    @inbounds for i in 1:seqlen
        mtx[1, i] = xr(sequence, i)
        mtx[2, i] = xg(sequence, i)
        mtx[3, i] = xb(sequence, i)
    end
    return mtx
end