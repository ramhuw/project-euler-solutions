# Problem 11: Largest Product in a Grid
# Answer: 70600674

matrix = [[parse(Int, x) for x in split(line)] for line in readlines("../input/p011.txt")]

let ans = 0

    for row in 1:20
        for col in 1:17
            s = 1
            for i in 0:3
                s *= matrix[row][col+i]
            end
            ans = max(ans, s)
        end
    end

    for col in 1:20
        for row in 1:17
            s = 1
            for i in 0:3
                s *= matrix[row+i][col]
            end
            ans = max(ans, s)
        end
    end

    for col in 1:17
        for row in 1:17
            s = 1
            for i in 0:3
                s *= matrix[row+i][col+i]
            end
            ans = max(ans, s)
        end
    end

    for row in 1:17
        for col in 4:20
            s = 1
            for i in 0:3
                s *= matrix[row+i][col-i]
            end
            ans = max(ans, s)
        end
    end

    println(ans)
end
