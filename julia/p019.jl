# Problem 19: Counting Sundays
# Answer: 171

using Dates

s = Date(1901, 1, 1)
e = Date(2000, 12, 31)
result = 0

let current = s
    while current <= e
        global result
        if day(current) == 1 && dayofweek(current) == 7
            result += 1
        end
        current += Day(1)
    end
end

println(result)
