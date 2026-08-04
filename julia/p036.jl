# Problem 34: Double-base Palindromes
# Answer: 872187

function ispanlindrom(s)
    n = length(s)
    for i in 1:(n÷2)
        if s[i] != s[n-i+1]
            return false
        end
    end
    true
end

ans = 0
for i in 1:999999
    global ans
    if string(i, base=2) |> ispanlindrom && string(i) |> ispanlindrom
        ans += i
    end
end

println(ans)