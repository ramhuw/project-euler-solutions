# Problem 112: Bouncy Numbers
# Answer: 1587000

function isdecreasing(n)
    p = 0
    m = n
    while m != 0
        q = m % 10
        if q < p
            return false
        end
        p = q
        m ÷= 10
    end
    return true
end

function isincreasing(n)
    p = 9
    m = n
    while m != 0
        q = m % 10
        if q > p
            return false
        end
        p = q
        m ÷= 10
    end
    return true
end

count = 0
total = 99
while count / total < 0.99
    global count, total
    total += 1
    if !isincreasing(total) && !isdecreasing(total)
        count += 1
    end
end

println(total)
    