# Problem 92: Square Digit Chains
# Answer: 8581146

function sq(n)
    ans = 0
    while n != 0
        ans += (n % 10) ^ 2
        n ÷= 10
    end
    ans
end
sq(85)

tests = Set(1:10000000)
e1 = Set(1)
e2 = Set(89)
delete!(tests, 1)
delete!(tests, 89)

for c in 1:10000000
    global tests, e1, e2

    if !(c in tests)
        continue
    end
    t = Set()
    while !(c in e1 || c in e2)
        delete!(tests, c)
        push!(t, c)
        c = sq(c)
    end
    if c in e1
        union!(e1, t)
    elseif c in e2
        union!(e2, t)
    end
end

ans = length(e2)
println(ans)