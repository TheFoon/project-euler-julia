a = 1
b = 1
sum = 0
while b <= 4000000
    global a, b, sum
    a, b = b, a + b
    if b % 2 == 0
        sum += b
    end
end
print(sum, "\n")
