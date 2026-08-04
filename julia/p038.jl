# Problem 38: Pandigital Multiples
# Answer: 932718654

function ispandigital(s)
    n = length(s)
    set = [Char('0' + i) for i in 1:9]
    sort(collect(s)) == set
end
    

ans = 0
for i in 1:99999
    global ans
    s = string(i)
    for j in 2:9
        if length(s) > 9
            break
        end
        s = s * string(i * j)
        if ispandigital(s)
            ans = max(ans, parse(Int, s))
        end
    end
end

println(ans)
