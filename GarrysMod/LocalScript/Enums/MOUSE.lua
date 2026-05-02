local testVal = 0 -- Test value

-- Input Mouse hook
hook.Add("InputMouseApply", "testMouseWheel", function(cmd, x, y, ang)
    testVal = testVal + cmd:GetMouseWheel() * 2 -- Any scale number you want to use
    print(testVal)
end)