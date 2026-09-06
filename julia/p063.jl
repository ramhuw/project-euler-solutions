# Problem 63: Powerful Digit Counts
# Answer: 49

ans = 1
for a in 2:9
    global ans
    b = big(a)
    n = 1
    while b >= big(10)^(n-1)
        ans += 1
        b *= a
        n += 1
    end
end
println(ans)