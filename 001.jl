sum = 0
n = 1
while n < 1000
    global n, sum
    if n % 3 == 0 || n % 5 == 0
        sum += n
    end
    n += 1
end
print(sum, "\n")
