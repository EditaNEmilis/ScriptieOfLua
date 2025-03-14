wait(1) -- Delay before triggering the script

-- Function
local function typewriter(object,text,length)
	for i = 1,#text, 1 do
		object.Text = string.sub(text,1,i)
		wait(length)
	end
end

-- Start the script to type out
typewriter(script.Parent.TextBox, "Hello World!", 0.1)