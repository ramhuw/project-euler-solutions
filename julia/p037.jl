# Problem 37: Truncatable Primes
# Answer: 748317

using Primes

primes = Set(["2", "3", "5", "7"])

function check(p)
    global primes
    n = length(string(p))
    d = 1
    while d < n
        left = string(p)[1:d]
        right = string(p)[d+1:end]
        if !(left in primes) || !(right in primes)
            return false
        end
        d += 1
    end
    return true
end

count = 0
ans = 0
let i = 10
    while count < 11
        global count, ans
        i = nextprime(i+1)
        push!(primes, string(i))
        if check(i)
            ans += i
            count += 1
        end
    end
end

println(ans)
