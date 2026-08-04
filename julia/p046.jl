# Problem 46: Goldbach's Other Conjecture
# Answer: 5777

using Primes

primes = []

p = 3
while true
    global p, primes
    if isprime(p)
        push!(primes, p)
    else
        found = true
        for prime in primes
            n2 = (p - prime) ÷ 2
            if isqrt(n2) ^ 2 == n2
                found = false
                break
            end
        end
        if found
            println(p)
            break
        end
    end
    p += 2
end