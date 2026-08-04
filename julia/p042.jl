# Problem 42: Coded Triangle Numbers
# Answer: 162

using CSV

data = CSV.Rows("../input/0042_words.txt"; header=false)
words = String[]
for row in data
    global words
    append!(words, String.(collect(row)))
end

function istriangle(x) :: Bool
    n = isqrt(2*x)
    n * (n + 1) == 2 * x
end

count = 0
for word in words
    global count
    x = 0
    for c in word
        x += c - 'A' + 1
    end
    if istriangle(x)
        count += 1
    end
end

println(count)