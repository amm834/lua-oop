-- Think as magic function in PHP 
-- __add (lua says metamethod) 
-- when __add a.k.a '+' operator overload by second table to the first table 
-- it execute custom implementation what I was implementated in __add function (technically method)
-- 5 + 5

local metatable = {
    __add = function (x,y)
        return x.num + y.num
    end
}

local x = { num = 10 }
local y = { num = 20 }

setmetatable(x,metatable)
setmetatable(y,metatable)

print(x + y)
