@testset "Aqua" begin

    Aqua.test_ambiguities(BioSimplex)
    Aqua.test_persistent_tasks(BioSimplex)
    Aqua.test_piracies(BioSimplex)
    Aqua.test_stale_deps(BioSimplex)
    Aqua.test_unbound_args(BioSimplex)
    Aqua.test_undefined_exports(BioSimplex)

end