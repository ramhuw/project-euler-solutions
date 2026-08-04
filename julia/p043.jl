# Problem 43: Sub-string Divisibility
# Answer: 16695334890

primes = [2, 3, 5, 7, 11, 13, 17]

ans = 0

function check(a)
    global ans, primes
    digits = [parse(Int, d) for d in collect(string(a))]
    for i in 2:8
        n = 100*digits[i] + 10*digits[i+1] + digits[i+2]
        if mod(n, primes[i-1]) != 0
            return
        end
    end
    ans += a
end

function search(arr, pos)
    if pos > length(arr) && arr[1] != 0
        a = 0
        for x in arr
            a = a * 10 + x
        end
        check(a)
    else
        for j in pos:length(arr)
            arr[pos], arr[j] = arr[j], arr[pos]
            search(arr,pos+1)
            arr[pos], arr[j] = arr[j], arr[pos]
        end
    end
end

search([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 1)

println(ans)

