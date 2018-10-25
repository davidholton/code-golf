--[[
Input string...
Using "A" or "a" will change the capslock

Readable version
s = ""
a = 0
io.read():gsub(".", function(c)
	if c:find("[aA]") then
		a = not a
	else
		s = s .. (a and c:lower"" or c:upper())
	end
end)
print(s)

121 bytes one liner:
s=""a=0 io.read():gsub(".",function(c)if c:find"[aA]"then a=not a else s=s..(a and c:lower()or c:upper())end end)print(s)
--]]

s=""a=0 io.read():gsub(".",function(c)if c:find"[aA]"then a=not a else s=s..(a and c:lower()or c:upper())end end)print(s)