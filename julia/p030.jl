# Problem 30: Digit Fifth Powers
# Answer: 443839

n = 1
while 9^5 * n >= 10^n
    global n
    n += 1
end

function check(x::Int)
    y = x
    result = 0
    while y != 0
        result += (y % 10)^5
        y = div(y, 10)
    end
    x == result
end

ans = 0
for i in 2:10^n
    global ans
    if check(i)
        ans += i
    end
end

println(ans)