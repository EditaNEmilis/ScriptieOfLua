local function fnA()
	print(debug.info(1, "sl")) --> fnA(), line 2
	print(debug.info(2, "sl")) --> fnA(), line 6
end

fnA()