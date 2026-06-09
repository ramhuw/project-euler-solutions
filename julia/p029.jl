# Problem 29: Distinct Powers
# Answer: 9183

lower = big(2)
upper = big(100)
choices = Set(collect(Iterators.product(lower:upper, lower:upper)))
ans = Set()
for choice in choices
    push!(ans, choice[1]^choice[2])
end

println(length(ans))