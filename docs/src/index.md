# BioSimplex

```@raw html
<p align="center">
  <img src="assets/logo.drawio.svg" height="250"><br/>
  <i>Representing DNA sequences as tetahedrals (Simplex)</i>
</p>
```

```@raw html
<div style="text-align: center;">

<a href="https://camilogarciabotero.github.io/BioSimplex.jl/dev/"><img src="https://img.shields.io/badge/documentation-online-blue.svg?logo=Julia&logoColor=white" alt="Documentation"></a>
<a href="https://github.com/camilogarciabotero/BioSimplex.jl/releases/latest"><img src="https://img.shields.io/github/release/camilogarciabotero/BioSimplex.jl.svg" alt="Latest Release"></a>

<br/>
<a href="https://github.com/camilogarciabotero/BioSimplex.jl/actions/workflows/CI.yml"><img src="https://github.com/camilogarciabotero/BioSimplex.jl/actions/workflows/CI.yml/badge.svg" alt="CI Workflow"></a>
<a href="https://github.com/camilogarciabotero/BioSimplex.jl/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green.svg" alt="License"></a>
<a href="https://www.repostatus.org/#wip"><img src="https://www.repostatus.org/badges/latest/wip.svg" alt="Work in Progress"></a>
<a href="https://pkgs.genieframework.com?packages=BioSimplex"><img src="https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/BioSimplex&label=downloads" alt="Downloads"></a>
<a href="https://github.com/JuliaTesting/Aqua.jl">
  <img src="https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg" alt="Aqua QA">
</a>

</div>
```

## Overview

> Representing DNA sequences as regular tetrahedrals (Simplex)

This packages has a single public function `biosimplex` that takes a `BioSequence` and returns a *Simplex* representation of a *BioSequence*. The *Simplex* representation is a 3D representation of the *BioSequence* where each base can be represented as unit vectors pointing into a regular tetrahedron (Silverman et al., 1986; Coward, 1997).

## Installation

You can install BioSimplex from the julia REPL. Press ] to enter pkg mode, and enter the following:

```julia
pkg> add BioSimplex
```

## Usage

```julia
using BioSequences, BioSimplex

# Create a BioSequence
seq = dna"ATCG"

# Convert the BioSequence to a Simplex representation 
biosimplex(seq)

3×4 Matrix{Float64}:
 0.0   0.942809  -0.471405  -0.471405
 0.0   0.0        0.816497  -0.816497
 1.0  -0.333333  -0.333333  -0.333333
```

## Applications

The *Simplex* representation is useful for to generate a numerical representation of the sequences so that it can be used in machine learning models.

## References

Coward, E. (1997). Equivalence of two Fourier methods for biological sequences. Journal of Mathematical Biology, 36(1), 64–70. https://doi.org/10.1007/s002850050090

Silverman, B. D., & Linsker, R. (1986). A measure of DNA periodicity. Journal of Theoretical Biology, 118(3), 295–300. https://doi.org/10.1016/S0022-5193(86)80060-1
