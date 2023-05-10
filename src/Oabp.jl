module Oabp

export sphere, sphere64, rosenbrock, ackley, rastrigin, griewank, schwefel, zakharov, levy, stybtang, trid, cec2020_f1, cec2020_f2, cec2020_f3, cec2020_f4, cec2020_f5, cec2020_f6, cec2020_f7, cec2020_f8, cec2020_f9, cec2020_f10, get_solution

using HardTestProblems: HardTestProblems

function sphere(x::Vector{Float64})
  return sum(x .^ 2)
end

function sphere64(x::Vector{Float64})
  return sum((x .- 64) .^ 2)
end

function rosenbrock(x::Vector{Float64})
  return sum(100 * (x[2:end] .- x[1:(end - 1)] .^ 2) .^ 2 .+ (1 .- x[1:(end - 1)]) .^ 2)
end

function ackley(x::Vector{Float64})
  return -20 * exp(-0.2 * sqrt(sum(x .^ 2) / length(x))) - exp(sum(cos.(2 * pi * x)) / length(x)) + 20 + exp(1) - 4.440892098500626e-16
end

function rastrigin(x::Vector{Float64})
  return sum(x .^ 2 - 10 * cos.(2 * pi * x) .+ 10)
end

function griewank(x::Vector{Float64})
  return sum(x .^ 2) / 4000 - prod(cos.(x ./ sqrt.(collect(1:length(x))))) + 1
end

function schwefel(x::Vector{Float64})
  return 418.9829 * length(x) .- sum(x .* sin.(sqrt.(abs.(x))))
end

function zakharov(x::Vector{Float64})
  return sum(x .^ 2) + sum(0.5 * collect(1:length(x)) .* x) .^ 2 + sum(0.5 * collect(1:length(x)) .* x) .^ 4
end

function levy(x::Vector{Float64})
  w = 1 .+ (x .- 1) ./ 4
  return sin.(pi * w[1]) .^ 2 + sum((w[1:(end - 1)] .- 1) .^ 2 .* (1 .+ 10 * sin.(pi * w[1:(end - 1)] .+ 1) .^ 2)) .+ (w[end] .- 1) .^ 2 .* (1 .+ sin.(2 * pi * w[end]) .^ 2) - 1.4997597826618576e-32
end

function stybtang(x::Vector{Float64})
  n = length(x)
  return sum(x .^ 4 .- 16 * x .^ 2 .+ 5 * x) ./ 2 + 39.16599 * n
end

function trid(x::Vector{Float64})
  n = length(x)
  m = -n * (n + 4) * (n - 1) / 6
  return sum((x .- 1) .^ 2) - sum(x[2:end] .* x[1:(end - 1)]) - m
end

function get_solution(fn::Function, dimension::Int64)
  if fn == sphere
	return fill(0.0, dimension)
  elseif fn == sphere64
	return fill(64.0, dimension)
  elseif fn == rosenbrock
	return fill(1.0, dimension)
  elseif fn == ackley
	return fill(0.0, dimension)
  elseif fn == rastrigin
	return fill(0.0, dimension)
  elseif fn == griewank
	return fill(0.0, dimension)
  elseif fn == schwefel
	return fill(420.9687, dimension)
  elseif fn == zakharov
	return fill(0.0, dimension)
  elseif fn == levy
	return fill(1.0, dimension)
  elseif fn == stybtang
	return fill(-2.903534, dimension)
  elseif fn == trid
	i = 1.0:dimension
	return i .* (dimension + 1 .- i)
  end
end

end
