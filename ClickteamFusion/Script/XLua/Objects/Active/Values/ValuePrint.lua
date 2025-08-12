function ValuePrint(id)
	local object = mmf.newObject(id)
	local value = object.values['NumberValue']

	print(tostring(value))
end