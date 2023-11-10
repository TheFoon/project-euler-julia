function factor(n)
    f = 2
    facts = []
    while f <= n
        if n % f == 0
            n = n / f
            push!(facts, f)
        else
            if f == 2
                f += 1
            else
                f += 2
            end
        end
    end
    return facts
end

factor(600851475143)