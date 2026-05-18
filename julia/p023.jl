# Problem 23: Non-Abundant Sums
# Answer: 4179871
using Primes

function divisorsum(n)
    prime_factors = factor(n)
    ladder = [[p^k for k in 0:e] for (p, e) in prime_factors]
    sum([prod(s) for s in Iterators.product(ladder...)]) - n
end

function isabundant(n)
    divisorsum(n) > n
end

ab = []
for i in 1:28123
    if isabundant(i)
        push!(ab, i)
    end
end
ans = Set(1:28123)

for i in ab
    for j in ab
        if i + j ∈ ans
            delete!(ans, i + j)
        end
    end
end

println(sum(ans))
