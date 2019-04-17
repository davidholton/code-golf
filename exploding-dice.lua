--[[
Problem:
Given n > 1 sided dice follow the exploding dice rules with uniform randomness
https://codegolf.stackexchange.com/questions/183073/simulating-exploding-dice

Example:
n = 6
Roll 4 => Output is 4
Roll 6 => Output is 11 (6, 5)
Roll 6 => Output is 22 (6, 6, 6, 4) 

Lua 5.4 83 characters
math.randomseed(os.time())f=loadstring"r=math.random(1,n)return r==n and r+f()or r"

Without uniform randomness the randomseed is not needed bringing the function down to 57 characters

]]

n = 6

math.randomseed(os.time())f=loadstring"r=math.random(1,n)return r==n and r+f()or r"

print("Total: " .. f())
