using Documenter
using BioSimplex

# indigo = DocThemeIndigo.install(Configurations)

DocMeta.setdocmeta!(BioSimplex, :DocTestSetup, :(using BioSimplex); recursive = true)

makedocs(;
    modules = [BioSimplex],
    authors = "Camilo García",
    repo = "https://github.com/camilogarciabotero/BioSimplex.jl/blob/{commit}{path}#{line}",
    sitename = "BioSimplex.jl",
    format = Documenter.HTML(
        mathengine=MathJax3(),
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical="https://camilogarciabotero.github.io/BioSimplex.jl",
        repolink = "https://github.com/camilogarciabotero/BioSimplex.jl",
    ),
    pages = [
        "Home" => "index.md",
        "API" => "api.md"
    ],
)

deploydocs(; repo = "https://github.com/camilogarciabotero/BioSimplex.jl", devbranch = "main")