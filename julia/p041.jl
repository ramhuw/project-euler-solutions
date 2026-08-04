# Problem 41: Pandigital Prime
# Answer: 7652413
using Primes

ans = 0

function check(a, pos)
    global ans
    if pos > length(a)
        n = 0
        for i in 1:length(a)
            n = 10 * n + a[i]
        end
        if n > ans && isprime(n)
            ans = n
        end
    end
    for i in pos:length(a)
        a[pos], a[i] = a[i], a[pos]
        check(a, pos+1)
        a[pos], a[i] = a[i], a[pos]
    end
end

for n in 9:-1:4
    global ans
    check(collect(1:n), 1)
    if ans > 0
        break
    end
end

println(ans)