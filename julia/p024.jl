# Problem 24: Lexicographic Permutations
# Answer: 2783915460
using Combinatorics

items = collect(0:9)

let i = 1
    for combo in permutations(items)
        if i == 1000000
            println(parse(Int, join([string(c) for c in combo], "")))
            break
        end
        i += 1
    end
end
