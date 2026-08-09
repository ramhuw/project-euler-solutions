# Problem 97: Large Non-Mersenne Prime
# Answer: 8739992577

using Primes

function expt(a, b, p)
    k = big(b % totient(p))
    w = big(a)
    ans = big(1)
    while k != big(0)
        if k % big(2) == big(1)
            ans = (ans * w) % p
        end
        w = (w ^ big(2)) % p
        k ÷= 2
    end
    ans
end

ans = (28433 * expt(2, 7830457, 10000000000) + 1) % 10000000000
println(ans)