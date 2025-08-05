local brick = game["Environment"]["Brick"]

-- Tween function, alpha range from 1 to 0 in a 5 seconds duration
Tween:TweenColor(Color.New(1,1,1,1), Color.New(1,1,1,0), 5, function(val)
    brick.Color = val -- Apply the color to the function value
end, TweenType.linear, function() -- Linear animation
    print("Tween animation has been finished") -- Print if the animation is finished
end)