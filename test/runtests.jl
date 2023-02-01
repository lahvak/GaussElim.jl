using GaussElim
using Test

@testset "GaussElim.jl" begin
    @test Es(2,1,2) == [0 1; 1 0]
    @test Em(2,1,2) == [2 0; 0 1]
    @test Ea(2,2,1,2) == [1 0; 2 1]
end
