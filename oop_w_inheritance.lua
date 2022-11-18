Animal = { weight = 0, height = 0, sound = nil }

function Animal:new(weight, height, sound)
	setmetatable({}, Animal)
	self.weight = weight
	self.height = height
	self.sound = sound

	return self
end

function Animal:getHeight()
	return string.format("Animal height is %d", self.height)
end

spot = Animal:new(10, 20, "Meow")

print(spot:getHeight())

-- inherit
Cat = Animal:new()

function Cat:new(height, weight, sound, fav)
	setmetatable({}, Cat)
	self.height = height
	self.weight = weight
	self.sound = sound
	self.fav = fav

	return self
end

function Cat:getFav()
	return string.format("Fav one is %s", self.fav)
end

meow = Cat:new(20, 40, "wtf", "food")
print(meow:getFav())
