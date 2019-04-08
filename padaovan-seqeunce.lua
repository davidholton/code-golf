--[[
Problem:
Return the nth term in the Padovan sequence
https://codegolf.stackexchange.com/questions/182797/patience-young-padovan

Example:
n    output
0 -> 1
1 -> 1
2 -> 1
3 -> 2
4 -> 2
5 -> 3
6 -> 4

Lua 5.4 48 characters
function f(n)return n<3 and 1or f(n-2)+f(n-3)end
]]

function f(n)return n<3 and 1or f(n-2)+f(n-3)end

for i = 0, 16 do
	print(i .. "\t-> " .. f(i))
end