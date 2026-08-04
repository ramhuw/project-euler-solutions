# Problem 44: Pentagon Numbers
# Answer: 5482660

function ispantagon(x)
    y = isqrt(1 + 24 * x)
    y ^ 2 == 1 + 24 * x && mod(1 + y, 6) == 0
end

function p(i)
    i*(3*i-1) ÷ 2
end

gap = 0
found = false
n = 2
while !found
    global gap, n, found
    for i in 1:n
        for j in i:(n-i)
            a = p(i)
            b = p(j)
            if ispantagon(a+b) && ispantagon((abs(a-b)))
                if !found
                    found = true
                    gap = abs(a-b)
                else
                    gap = min(gap, abs(a-b))
                end
            end
        end
    end
    n += 1
end

println(gap)