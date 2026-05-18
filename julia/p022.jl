# Problem 22: Names Scores
# Answer: 871198282

input = read("../input/0022_names.txt", String)
names = split(input, ",")
sort!(names)

function al(name)
    ans = 0
    for c in name
        if c != '\"'
            ans += uppercase(c) - 'A' + 1
        end
    end
    ans
end

result = sum([al(names[i]) * i for i in 1:(length(names))])

println(result)
