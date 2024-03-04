# BioSimplex

```@raw html
<p align="center">
  <img src="assets/logo.drawio.svg" height="250"><br/>
  <i>Representing DNA sequences as tetahedrals (Simplex)</i>
</p>
```

```@raw html
<div align="center">

[![Documentation](https://img.shields.io/badge/documentation-online-blue.svg?logo=Julia&logoColor=white)](https://camilogarciabotero.github.io/BioSimplex.jl/dev/)
[![Latest Release](https://img.shields.io/github/release/camilogarciabotero/BioSimplex.jl.svg)](https://github.com/camilogarciabotero/BioSimplex.jl/releases/latest)
<br/>
[![CI Workflow](https://github.com/camilogarciabotero/BioSimplex.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/camilogarciabotero/BioSimplex.jl/actions/workflows/CI.yml)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/camilogarciabotero/BioSimplex.jl/blob/main/LICENSE)
[![Work in Progress](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Downloads](https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/BioSimplex&label=downloads)](https://pkgs.genieframework.com?packages=BioSimplex)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

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
