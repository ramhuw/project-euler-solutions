# Problem 28: Number Spiral Diagonals
# Answer: 669171001

d = 1001
sp = [0 for i in 1:d, j in 1:d]
i = j = div(d, 2) + 1
count = 1
sp[i, j] = count
while count < d^2
    global i, j, count
    if i <= j && i + j <= d + 1
        j += 1
    elseif i + j > d + 1 && i < j
        i += 1
    elseif i >= j && i + j > d + 1
        j -= 1
    else
        i -= 1
    end
    count += 1
    sp[i, j] = count
end

ans = sum([sp[i, i] + sp[i, d + 1 - i] for i in 1:d]) - 1
println(ans)

