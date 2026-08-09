# Problem 55: Lychrel Numbers
# Answer: 249

function islychrel(n)
    step = 1
    k = n + parse(BigInt, reverse(string(n)))
    while !ispalindrome(k)
        k = k + parse(BigInt, reverse(string(k)))
        step += 1
        if step >= 50
            return true
        end
    end
    return false
end

function ispalindrome(n)
    string(n) == reverse(string(n))
end

ans = filter(islychrel, big(1):big(9999)) |> length

println(ans)