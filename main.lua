-- https://www.lua.org/docs.html
-- https://www.tutorialspoint.com/lua/index.htm

-- Basic Syntax
-- line comment

--[[ 
  multi-line comment
--]]

print("Hello World!")

io.write("Hello world from ", _VERSION, "!\n")


-- Variables
-- Variable definition:
local a, b

-- Initialization
a = 10
b = 30

print("value of a:", a)

print("value of b:", b)

-- Swapping of variables
b, a = a, b

print("value of a:", a)

print("value of b:", b)

f = 70.0/3.0
print("value of f", f)

-- Data Types
t = 10
print(type(5.8*t)) --> number
print(type(true)) --> boolean
print(type(print)) --> function
print(type(nil)) --> nil
print(type(type(ABC))) --> string

-- Loops
-- while Loop
a = 10

while(a < 20)
do
  print("value of a:", a)
  a = a+1
end

-- for Loop
for i = 10, 1, -1 
do 
  print(i) 
end

-- repeat...until Loop
a = 10

repeat
  print("value of a:", a)
  a = a + 1
until(a > 15)

-- break
while(true)
do
  print("This loop will run forever.")
  break
end

-- Decision Making
-- if
a = 10;

if(a < 20)
then
  print("a is less than 20");
else
  print("a is more than 20");
end

print("value of a is :", a);

-- elseif
a = 100

if(a == 10)
then
  print("Value of a is 10")
elseif(a == 20)
then
  print("Value of a is 20")
elseif(a == 30)
then
  print("Value of a is 30")
else
  print("None of the values is matching" )
end

print("Exact value of a is: ", a)

-- Functions
function max(num1, num2)
  if (num1 > num2) then
    result = num1;
  else
    result = num2;
  end

  return result; 
end

num = max(24, 12)

print(num)

function average(...)
  result = 0
  local arg = {...}
  
  for i, v in ipairs(arg) do
    result = result + v
  end
  
  return result/#arg
end

print("The average is", average(10, 5, 3, 4, 5, 6))

-- String
string1 = "Lua"
print("\"String 1 is\"", string1)

string2 = 'Tutorial'
print("String 2 is", string2)

string3 = [["Lua Tutorial"]]
print("String 3 is", string3)

-- Array
array = {"Lua", "Tutorial"}

for i = 0, 2 do
  print(array[i])
end

array = {}

for i = -2, 2 do
  array[i] = i *2
end

for i = -2,2 do
  print(array[i])
end

-- Multidimensional Array
-- Initializing the array
array = {}

for i = 1, 3 do
  array[i] = {}
	
  for j = 1, 3 do
    array[i][j] = i*j
  end
end

-- Accessing the array

for i = 1, 3 do
  for j = 1, 3 do
    print(array[i][j])
  end
end
