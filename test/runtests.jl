using GaussElim
using Test

@testset "GaussElim.jl" begin
    @test Es(2,1,2) == [0 1; 1 0]
end
