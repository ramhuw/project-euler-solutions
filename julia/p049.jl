# Problem 49: Prime Permutations
# Answer: 296962999629

using Primes

function check(a, b)
    sort(collect(string(a))) == sort(collect(string(b)))
end

primes = []
count = 0
i = nextprime(1000)
while i < 10000
    global primes, count, i
    count += 1
    push!(primes, i)
    i = nextprime(i+1)
end

for i in 1:count
    for j in (i+1):count
        if !check(primes[i], primes[j])
            continue
        end
        for k in (j+1):count
            if !check(primes[j], primes[k])
                continue
            end
            if primes[k] - primes[j] == primes[j] - primes[i]
                println(primes[i], primes[j], primes[k])
            end
        end
    end
end