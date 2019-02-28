function fact(n)
    if n < 0 then
        return nil
    end
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

print("Starting: ", arg[0], "\n")

if not (arg[1] == nil) then
    a = tonumber(arg[1])
else
    print("Number: ")
    a = io.read("*n")
end

f = fact(a)

print("Factorial: ")
print(f)
