--[[
Problem:
Given a table with strings return whether any of the strings is a prefix of another
https://codegolf.stackexchange.com/questions/79092/is-it-a-prefix-code/

Example:
Truthy cases:
a = {"Hello", "World"}
a = {"Code", "Golf", "Is", "Cool"}
a = {"1", "2", "3", "4", "5"}
a = {"This", "test", "case", "is", "true"}
a = {"111", "010", "000", "1101", "1010", "1000", "0111", "0010", "1011", "0110", "11001", "00110", "10011", "11000", "00111", "10010"}
Falsey cases:
a = {"This", "test", "case", "is", "false", "t"}
a = {"4", "42"}                   
a = {"1", "2", "3", "34"}
a = {"This", "test", "case", "is", "false", "t"}
a = {"He", "said", "Hello"}
a = {"0", "00", "00001"}
a = {"Duplicate", "Duplicate", "Keys", "Keys"}

Lua 5.4 85 characters
b=0 for i=1,#a do for j=1,#a do b=i~=j and 1==a[j]:find(a[i])or b end end print(b==0)

]]

a = {"This", "test", "case", "is", "true"}
-- a = {"This", "test", "case", "is", "false", "t"}

b=0 for i=1,#a do for j=1,#a do b=i~=j and 1==a[j]:find(a[i])or b end end print(b==0)
