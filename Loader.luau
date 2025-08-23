local module = {}

module.Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/MaterialIcons.luau"))()
module.Lucide = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/LucideIcons.luau"))()
module.Phosphor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Phosphor.luau"))()
module["Phosphor-Filled"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Phosphor%20Filled.luau"))()
module["SF-Symbols"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/SFSymbols.luau"))()

function module:GetIcon(name, source)
	source = source or "Material"

	game:GetService("ContentProvider"):PreloadAsync({
		`rbxassetid://{module[source][name]}`
	})

	return module[source][name]
end

return module
