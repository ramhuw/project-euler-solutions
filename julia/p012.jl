# Problem 12: Highly Divisible Triangular Number
# Answer: 76576500

using Primes

function numfac(n)
    d = 1
    for (_, v) in factor(n)
        d *= (v + 1)
    end
    d
end

let i = 0
    while true
        i += 1
        n = i * (i + 1) ÷ 2
        if numfac(n) >= 500
            println(n)
            break
        end
    end
end
