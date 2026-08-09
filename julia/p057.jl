# Problem 57: Square Root Convergents
# Answer: 153

i = big(1)
ans = 0

function size(n)
    length(string(n))
end

for _ in 1:1000
    global ans, i
    i = big(1) + big(1)//(big(1) + i)
    if size(numerator(i)) > size(denominator(i))
        ans += 1
    end
end

println(ans)