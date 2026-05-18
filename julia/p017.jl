# Problem 17: Number Letter Counts
# Answer: 21124

using SpelledOut

function num_letter(n)
    count(c -> c != ' ' && c != '-', spelled_out(n))
end
result = sum([num_letter(n) for n in 1:1000]) + 3 * (1000 - 100 - 9)
println(result)
