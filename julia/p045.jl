# Problem 45: Triangular, Pentagonal, and Hexagonal
# Answer: 1533776805

i = 286
j = 166
k = 143

function t(n)
    n * (n + 1) ÷ 2
end

function p(n)
    n * (3 * n - 1) ÷ 2
end

function h(n)
    n * (2 * n - 1)
end

while true
    global i, j, k
    a = t(i)
    b = p(j)
    c = h(k)
    if a == b == c
        println(a)
        break
    elseif a <= b && a <= c
        i += 1
    elseif b <= a && b <= c
        j += 1
    elseif c <= a && c <= b
        k += 1
    end
end
