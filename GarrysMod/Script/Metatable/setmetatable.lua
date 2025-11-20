-- Pupil Meta function
local Pupil_meta = {
	GetName = function(self)
		return self.name
	end
}

Pupil_meta.__index = Pupil_meta
-- If a key cannot be found in an object, it will look in it's metatable's __index metamethod instead

-- Pupil dict
local Pupil = {
	name = "Sneed Chuck"
}

-- Set Metatable
setmetatable(Pupil, Pupil_meta)

-- Print list
print(Pupil:GetName())
-- This will look for the "GetName" key in Pupil, but it doesn't have one, so it will look in it's metatable (Pupil_meta) __index key instead