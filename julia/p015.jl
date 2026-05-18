# Problem 15: Lattice Paths
# Answer: 137846528820

sol = zeros(Integer, 21, 21)

sol[1, 1] = 1

for i in 1:21
    for j in 1:21
        if i > 1
            sol[i, j] += sol[i-1, j]
        end
        if j > 1
            sol[i, j] += sol[i, j-1]
        end
    end
end

println(sol[21, 21])
