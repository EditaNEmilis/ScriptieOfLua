local starterGui = game:GetService("StarterGui")

-- Set Core of Menu Theme
starterGui:SetCore("AvatarContextMenuTheme", {
	BackgroundImage = "", -- Background Image ID
	BackgroundTransparency = 0.5, -- Background Transparency

	-- Set Colors
	BackgroundColor = Color3.fromRGB(111, 145, 242),
	NameTagColor = Color3.fromRGB(0, 0, 200),
	NameUnderlineColor = Color3.fromRGB(213, 233, 255),
	ButtonFrameColor = Color3.fromRGB(15, 24, 65),
	ButtonFrameTransparency = 0.2,
	ButtonUnderlineColor = Color3.fromRGB(213, 233, 255),

	-- Font
	Font = Enum.Font.SciFi,
})