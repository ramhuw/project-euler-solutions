# Problem 64: Convergents of e
# Answer: 272

a = [2, 1]
p = 2

for i in 0:97
    global p
    if i % 3 == 0
        push!(a, p)
        p += 2
    else
        push!(a, 1)
    end
end

function f(a)
    if length(a) == 1
        big(a[1])
    else
        big(a[1]) + big(1) // f(a[2:end])
    end
end

x = numerator(f(a[1:100]))
ans = 0
while x != 0
    global ans, x
    ans += x % 10
    x ÷= 10
end
println(ans)