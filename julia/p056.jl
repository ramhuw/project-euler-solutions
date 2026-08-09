# Problem 56: Powerful Digit Sum
# Answer: 972

function pds(a, b)
    n = a ^ b
    sum([parse(Int, c) for c in string(n)])
end

ans = maximum([pds(big(a), big(b)) for a in 2:99 for b in 2:99])