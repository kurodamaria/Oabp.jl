using Oabp
using Test

@testset "Oabp.jl" begin
    for d in 1:1
        @test sphere(get_solution(sphere, d)) == 0
        @test sphere64(get_solution(sphere64, d)) == 0
        @test rosenbrock(get_solution(rosenbrock, d)) == 0
        @test ackley(get_solution(ackley, d)) == 0
        @test rastrigin(get_solution(rastrigin, d)) == 0
        @test griewank(get_solution(griewank, d)) == 0
        @test zakharov(get_solution(zakharov, d)) == 0
        @test levy(get_solution(levy, d)) == 0

        #! Inexact
        # @test schwefel(get_solution(schwefel, d)) == 0
        # @test stybtang(get_solution(stybtang, d)) == 0
    end
end
