using Primes

function truncatable_prime(n)
    n <= 10 && return false
    num = Int(floor(n))
    primes = []
    # testing right truncate
    while num >= 1
        if !isprime(num)
            if n == 137
                println(num)
            end
            return false
        end
        # truncate right
        num = Int(floor(num / 10))
        push!(primes, num)
    end
    num = Int(floor(n))
    # testing left truncate
    while num >= 1
        if !isprime(num)
            if n == 137
                println(num)
            end
            return false
        end
        # truncate right
        num = Int(num % 10 ^ floor(log10(num)))
        push!(primes, num)
    end
    return true
end

s = Set()
i = 1
while length(s) < 11
    global s, i
    if truncatable_prime(i)
        push!(s, i)
    end
    i += 1
end
println(s)
println("Length: ", length(s))
println(sum(s))
