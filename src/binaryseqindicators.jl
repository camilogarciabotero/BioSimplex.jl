# Binary sequence indicators for DNA sequences
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

## Some steps to create a spectrogram out of a DNA sequence using RGB indicators and windowing the DFFT

# using FFTW, DSP

# First we need to make a short DFFT of the sequence to get the frequency content

# dseq = randdnaseq(1000)
# bs = biosimplex(dseq)

# bsfft = fft(bs) 

# bsps = abs2.(bsfft) # This is the power spectrum


# Then we need some sort of distance measure

# DSP.hamming() # This is a window function

# We can use the spectogram function from DSP to get the spectrogram

# spectrogram(bsps) # This only works for vectors... That should be the resulted from the DFFT of the biosimplex (?)


