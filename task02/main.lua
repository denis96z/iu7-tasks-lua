assert(type("string") == "string")
assert(type(100000.0) == "number")
assert(type(print) == "function")
assert(type(true) == "boolean")
assert(type(nil) == "nil")
assert(type(type(X)) == "string")

print(4, 0.4, 4.57e-3, 0.3e12, 5E+20)
-- 4       0.4     0.00457 300000000000.0  5e+20

print(0xff, 0x1A3, 0x0.2, 0x1p-1, 0xa.bp2)
-- 255     419     0.125   0.5     42.75

a = "str1"

print(a, #a)
-- str1    4

b = string.gsub(a, 'str', "string")

print(a, b)
-- str1    string1

print("This line1\b is a \r\n new line with \t a tab.")
-- This line is a
--  new line with   a tab.

print("New line:\10")

print([==[
<html>
  <head><title>##Title</title></head>
  <body></body>
</html>
]==])

print("10" + 1)
-- 11.0

print(1 .. 2 .. 3)
-- 123

print(tonumber("10"), tostring(10))
-- 10      10

a = {}

a["x"] = 10
a["x"] = a["x"] + 1

a[10] = "a"
a[10] = a[10] .. "b"

assert(a["x"] == 11)
assert(a[10] == "ab")

b = a
a = nil

print(b["x"])
-- 11

a = {}
for i = 1, 1000 do
    a[i] = i * 2
end

print(a[10])
-- 20

a.x = 15
print(a.x)
-- 15
