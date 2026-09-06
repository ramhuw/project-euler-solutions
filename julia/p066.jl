# Problem 66: Diophantine Equation
# Answer: 661

using Oscar

function pell(D)
    K, a = quadratic_field(D)
    O = equation_order(K)
    U, unit_map = unit_group(O)

    # U[1] is the torsion generator; U[2] is the fundamental unit
    ε = elem_in_nf(unit_map(U[2]))

    # Pell equation requires norm +1
    η = absolute_norm(ε) == -1 ? ε^2 : ε

    if coeff(η, 0) < 0
        η = -η
    end
    if coeff(η, 1) < 0
        η = inv(η)
    end

    x = ZZ(coeff(η, 0))
    y = ZZ(coeff(η, 1))

    return x
end

ans = 0
gx = 0
for D in collect(2:1000)
    global ans, gx
    d = isqrt(D)
    if d * d == D 
        continue
    else
        x = pell(D)
        if gx < x
            gx = x
            ans = D
        end
    end
end
println(ans)