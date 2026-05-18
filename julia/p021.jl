# Problem 21: Amicable Numbers
# Answer: 31626
using Primes
function divisor_sum(n)
    f = factor(n)
    ladders = [[p^i for i in 0:e] for (p, e) in f]
    sum(vec([prod(v) for v in Iterators.product(ladders...)])) - n
end

function is_amice(n)
    n != divisor_sum(n) && n == divisor_sum(divisor_sum(n))
end

ans = 0
for i in 2:10000
    global ans
    if is_amice(i)
        ans += i
    end
end
println(ans)
