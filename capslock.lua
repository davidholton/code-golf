--[[
Input a string. Any "A" or "a" will change the capslock setting for the string
Example:	AsTrAInG CAC
 Output:	StRInG Cc

167 byte readable version:
s=""
a=0
io.read():gsub(".", function(c)
	if c:find("[aA]") then
		a = not a
	else
		l = c:lower()
		s = s .. (a and c or l == c and c:upper() or l)
	end
end)
print(s)

138 byte one liner:
s=""a=0 io.read():gsub(".",function(c)if c:find"[aA]"then a=not a else l=c:lower()s=s..(a and c or l==c and c:upper()or l)end end)print(s)
--]]

s=""a=0 io.read():gsub(".",function(c)if c:find"[aA]"then a=not a else l=c:lower()s=s..(a and c or l==c and c:upper()or l)end end)print(s)
