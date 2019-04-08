--[[
Problem:
Code gold challange from:
https://codegolf.stackexchange.com/questions/180509/it-took-me-a-lot-of-time-to-make-this-pls-like-youtube-comments-1

Example:
Input: Hello
Output:
H
He
Hel
Hell
Hello
Hell
Hel
He
H

Lua 5.4
67 Bytes
]]
s = "Hello"

a=math.abs n=s:len()for i=1,n*2-1 do print(s:sub(0,a(a(i-n)-n)))end