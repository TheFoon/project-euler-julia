s = Set()
for a::BigInt in 2:100
    for b::BigInt in 2:100
        push!(s, a ^ b)
    end
end
print(length(s))
