# BioSimplex

# BioMarkovChains

```@raw html

<p align="center">
  <img src="assets/logo.svg" height="150"><br/>
  <i>Representing biological sequences as Markov chains</i>
</p>
```

```@raw html

<div style="text-align: center;">

<a href="https://camilogarciabotero.github.io/BioMarkovChains.jl/dev/"><img src="https://img.shields.io/badge/documentation-online-blue.svg?logo=Julia&logoColor=white" alt="Documentation"></a>
<a href="https://github.com/camilogarciabotero/BioMarkovChains.jl/releases/latest"><img src="https://img.shields.io/github/release/camilogarciabotero/BioMarkovChains.jl.svg" alt="Latest Release"></a>
<a href="https://zenodo.org/badge/latestdoi/665161607"><img src="https://zenodo.org/badge/665161607.svg" alt="DOI"></a>
<br/>
<a href="https://github.com/camilogarciabotero/BioMarkovChains.jl/actions/workflows/CI.yml"><img src="https://github.com/camilogarciabotero/BioMarkovChains.jl/actions/workflows/CI.yml/badge.svg" alt="CI Workflow"></a>
<a href="https://github.com/camilogarciabotero/BioMarkovChains.jl/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green.svg" alt="License"></a>
<a href="https://www.repostatus.org/#wip"><img src="https://www.repostatus.org/badges/latest/wip.svg" alt="Work in Progress"></a>
<a href="https://pkgs.genieframework.com?packages=BioMarkovChains"><img src="https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/BioMarkovChains&label=downloads" alt="Downloads"></a>
<a href="https://github.com/JuliaTesting/Aqua.jl">
  <img src="https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg" alt="Aqua QA">
</a>

</div>

```


> A simple Julia package to convert BioSequences into a tethrahedral representation

This packages has a single public function `biosimplex` that takes a `BioSequence` and returns a *Simplex* representation of a *BioSequence*. The *Simplex* representation is a 3D representation of the *BioSequence* where each base is represented by a tetrahedron. The *Simplex* representation is useful for to generate a numerical representation of the *BioSequence* that can be used in machine learning models.

## Installation

<p>
BioSimplex is a &nbsp;
    <a href="https://julialang.org">
        <img src="https://raw.githubusercontent.com/JuliaLang/julia-logo-graphics/master/images/julia.ico" width="16em">
        Julia Language
    </a>
    &nbsp; package. To install BioSimplex,
    please <a href="https://docs.julialang.org/en/v1/manual/getting-started/">open
    Julia's interactive session (known as REPL)</a> and press <kbd>]</kbd>
    key in the REPL to use the package mode, then type the following command
</p>

```julia
pkg> add BioSimplex