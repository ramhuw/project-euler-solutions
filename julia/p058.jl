# Problem 58: Spiral Primes
# Answer: 26241

using Primes

l = 1
ps = 0
n = 1
while true
    l += 2
    for i in 1:4
        n += l - 1
        if isprime(n)
            ps += 1
        end
    end
    if ps / (2 * l - 1) < 0.1
        println(l)
        break
    end
end
