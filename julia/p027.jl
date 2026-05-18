# Problem 27: Quadratic Primes
# Answer: -59231

using Primes
function produce(a, b)
    n = 0
    while isprime(n^2 + a * n + b)
        n += 1
    end
    n
end

(am, bm) = argmax(t -> produce(t[1], t[2]), [(a, b) for a in -999:999 for b in -999:999])
println(am * bm)
