--[[
Problem:
Sort strings into an arrow pattern simpliar to left arrow key "<"
https://codegolf.stackexchange.com/questions/182615/arrow-those-variables

Example:
sheriffOfNottingham
kingRichard
maidMarian
bow
arrows
princeJohn
sherwoodForest

Lua 5.4 106 characters
table.sort(s,function(a,b)return#a>#b end)r={}for i,v in pairs(s)do r[i%2==1 and i//2+1or#s-(i/2-1)]=v end
]]

s={"bow", "arrows", "sheriffOfNottingham", "kingRichard", "maidMarian", "princeJohn", "sherwoodForest"}

table.sort(s,function(a,b)return#a>#b end)r={}for i,v in pairs(s)do r[i%2==1 and i//2+1or#s-(i/2-1)]=v end

for i, v in pairs(r) do
	print(v)
end