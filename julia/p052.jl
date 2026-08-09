# Problem 52: Permuted Multiples
# Answer: 

function check(a, b)
    sort(collect(string(a))) == sort(collect(string(b)))
end

for i in Iterators.countfrom(10)
    flag = true
    for j in 2:6
        if !check(i, j * i)
            flag = false
            break
        end
    end
    if flag
        println(i)
        break
    end
end