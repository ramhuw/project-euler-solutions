# Problem 32: Pandigital Products
# Answer: 45228

function ispan(a, b, c)
    n = 9
    set = Set(collect(1:n))
    while a != 0
        d = a % 10
        if !(d in set)
            return false
        end
        a ÷= 10
        delete!(set, d)
    end
    while b != 0
        d = b % 10
        if !(d in set)
            return false
        end
        b ÷= 10
        delete!(set, d)
    end
    while c != 0
        d = c % 10
        if !(d in set)
            return false
        end
        c ÷= 10
        delete!(set, d)
    end
    return isempty(set)
end

products = Set()
let i = 1
    while i < 100000
        let j = i + 1
            while j < 100000
                k = i * j
                if length(string(i)) + length(string(j)) + length(string(k)) > 9
                    break
                end
                if ispan(i, j, k)
                    global products
                    push!(products, k)
                end
                j += 1
            end
        end
        i += 1
    end
end
ans = 0
for product in products
    global ans
    ans += product
end
println(ans)