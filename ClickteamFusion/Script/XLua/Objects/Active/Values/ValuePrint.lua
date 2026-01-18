function ValuePrint(id)
	-- Object and Value
	local object = mmf.newObject(id)
	local value = object.values['NumberValue']

	print(tostring(value))
end