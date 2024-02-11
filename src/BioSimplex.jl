module BioSimplex

# write your code here
using BioSequences:
    DNAAlphabet,
    NucleicSeqOrView,
    @dna_str,
    @view

include("binaryseqindicators.jl")
export biosimplex

end