# Problem 31: Coin Sums
# Answer: 73682

coins = [1, 2, 5, 10, 20, 50, 100, 200]
target = 200
bucket = [0 for i in 1:target]
for coin in coins
    if coin <= target
        bucket[coin] += 1
    end
    for i in 1:target
        if i - coin > 0
            bucket[i] += bucket[i - coin]
        end
    end
end

println(bucket[target])