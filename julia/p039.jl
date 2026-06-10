# Problem 39: Integer Right Triangles
# Answer: 840

function find(p)
    let count = 0
        for a in 1:p-1
            for b in a:p-1
                c = p - a - b
                if c < b
                    break
                elseif c^2 == a^2 + b^2
                    count += 1
                end
            end
        end
        return count
    end
end
m = 0
ans = 12
for p in 3:1000
    global m, ans
    new_m = find(p)
    if new_m > m
        m = new_m
        ans = p
    end
end

println(ans)

