-- class attributes (state)
local Person = {
    name = ''
}

-- constructor
function Person:new(obj)
    obj = obj or {}
    setmetatable(obj,self)
    self.__index = self

    return obj
end

-- methods 
function Person:getName()
    print("I'm " ..self.name)
end

-- instancitating 
local person = Person:new({
        name = 'Mg Mg'
    })
-- calling method
person:getName(person)

