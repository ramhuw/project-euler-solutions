# Problem 26: Reciprocal Cycles
# Answer: 983

function cycle(d::Integer)
    while d % 2 == 0
        d = div(d, 2)
    end
    while d % 5 == 0
        d = div(d, 5)
    end
    if d == 1
        return 0
    end
    k = 1
    v = 10
    while (v % d) != 1
        k += 1
        v = (v * 10) % d
    end
    return k
end

ans = argmax(cycle, 1:999)
println(ans)
