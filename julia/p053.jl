# Problem 53: Combinatoric Selections
# Answer: 4075

count = 0
for n in 1:100
    for r in 0:n
        global count
        if div(factorial(big(n)), factorial(big(r)) * factorial(big(n-r))) > 1000000
            count += 1
        end
    end
end
println(count)