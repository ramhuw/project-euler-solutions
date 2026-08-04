# Problem 47: Distinct Primes Factors
# Answer: 134043

using Primes

i = 1
found = false
while !found
    global i, found
    found = true
    for j in 0:3
        if length(factor(i+j)) != 4
            found = false
            break
        end
    end
    i += 1
end

println(i-1)
