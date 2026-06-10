# Problem 34: Digit Factorials
# Answer: 40730

n = 1
f9 = factorial(9)
while f9 * n >= 10^(n-1)
    global n
    n += 1
end

function check(x::Int)
    y = x
    result = 0
    while y != 0
        result += factorial(y % 10)
        y = div(y, 10)
    end
    x == result
end
ans = 0
for i in 3:10^(n-1)
    global ans
    if check(i)
        ans += i
    end
end

println(ans)
