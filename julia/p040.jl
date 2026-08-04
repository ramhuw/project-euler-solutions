# Problem 40: Champernowne's Constant
# Answer: 210

d = []
i = 1

while length(d) < 1000000
    global d, i
    t = []
    j = i
    while j != 0
        pushfirst!(t, j % 10)
        j ÷= 10
    end
    append!(d, t)
    i += 1
end

ans = 1

for i in 0:6
    global ans
    ans *= d[10^i]
end

println(ans)