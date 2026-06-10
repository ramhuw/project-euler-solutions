# Problem 35: Circular Primes
# Answer: 55
using Primes, Combinatorics
function check(i)
    s = string(i)
    ss = []
    for i in 1:length(s)
        push!(ss, s[i+1:end] * s[1:i])
    end
    for c in ss
        cc = join(c)
        j = parse(Int, cc)
        if !isprime(j)
            return false
        end
    end
    return true
end
ans = (1:1000000) |> filter(check) |> length
println(ans)