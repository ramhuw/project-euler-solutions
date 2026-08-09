# Problem 50: Consecutive Prime Sum
# Answer: 997651

using Primes

ps = primes(1000000)
pset = Set(ps)
n = length(ps)

sum = [0]
s = 0
for p in ps
    global s, sum
    s += p
    push!(sum, s)
end

len = 0
ans = 0

for i in 1:n
    for j in i:n
        global ans, len, ps, pset, sum
        if sum[j+1] - sum[i] in pset
            if j + 1 - i > len
                len = j + 1 - i
                ans = sum[j+1] - sum[i]
            end
        elseif sum[j+1] - sum[i] >= 1000000
            break
        end
    end
end

println(ans)