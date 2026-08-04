# Problem 33: Digit Cancelling Fractions
# Answer: 100

function check(n, d)
    n1 = div(n, 10)
    n2 = mod(n, 10)
    d1 = div(d, 10)
    d2 = mod(d, 10)
    (n2 != 0 && d2 != 0) && (n//d == n1//d2 && n2 == d1)
end

fractions = Set()
for i in 10:99
    for j in (i+1):99
        if check(i, j)
            push!(fractions, i//j)
        end
    end
end

ans = 1
for f in fractions
    global ans
    ans *= f
end
println(denominator(ans))