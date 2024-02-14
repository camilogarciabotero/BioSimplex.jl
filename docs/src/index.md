# BioSimplex

```@raw html
<p align="center">
  <img src="assets/logo.drawio.svg" height="150"><br/>
  <i>Representing DNA sequences as tetahedrals (Simplex)</i>
</p>
```

## Overview

> Representing DNA sequences as tetahedrals (Simplex)

This packages has a single public function `biosimplex` that takes a `BioSequence` and returns a *Simplex* representation of a *BioSequence*. The *Simplex* representation is a 3D representation of the *BioSequence* where each base is represented by a tetrahedron. The *Simplex* representation is useful for to generate a numerical representation of the *BioSequence* that can be used in machine learning models.

## Installation

You can install BioSimplex from the julia REPL. Press ] to enter pkg mode, and enter the following:

```julia
pkg> add BioSimplex
```