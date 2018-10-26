--[[
-- Input a string. Any "A" or "a" will change the capslock setting for the string
-- Example:	AsTrAInG CAC
--  Output:	StRInG Cc

-- 171 byte readable version:
a = 0
s = ""
io.read():gsub(".", function(c)
	if c:find("[aA]") then
		a = not a
	else
		l = c:lower()
		s = s .. (a and c or l == c and c:upper() or l)
	end
end)
print(s)

-- 137 byte one liner:
a=0s=""io.read():gsub(".",function(c)if c:find"[aA]"then a=not a else l=c:lower()s=s..(a and c or l==c and c:upper()or l)end end)print(s)

This uses Lua 5.4

--]]

a=0s=""io.read():gsub(".",function(c)if c:find"[aA]"then a=not a else l=c:lower()s=s..(a and c or l==c and c:upper()or l)end end)print(s)
