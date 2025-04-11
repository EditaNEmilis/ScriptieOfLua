function Coin()
	local rand = math.random(1, 2)

	-- Heads or Tails
	if rand == 1 then
		print("Heads")
	else
		print("Tails")
	end

	return rand
end