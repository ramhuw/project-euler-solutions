# Problem 18: Maximum Path Sum I
# Answer: 1074

triangle = [[parse(Int, x) for x in split(line)] for line in readlines("../input/p018.txt")]

n = length(triangle)

for i in 2:n
    for j in 1:i
        a = j > 1 ? triangle[i-1][j-1] : 0
        b = j < i ? b = triangle[i-1][j] : 0
        triangle[i][j] += max(a, b)
    end
end
println(maximum(triangle[n]))
