local user_input = "The user's input lives in this variable" -- User's input variable

local Panel = vgui.Create("DHTML")
Panel:SetURL("example.com/something.html") -- URL
Panel:Center()
Panel:SetSize(100, 100)
Panel:RunJavascript("MyJavaScriptFunction('" .. string.JavascriptSafe(user_input) .. "')") -- Run Javascript