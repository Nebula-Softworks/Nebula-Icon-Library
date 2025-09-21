local module = {}

module.Material = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/MaterialIcons.luau"))()
module.Lucide = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/LucideIcons.luau"))()
module.Phosphor = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Phosphor.luau"))()
module["Phosphor-Filled"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Phosphor%20Filled.luau"))()
module["SF"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/SFSymbols.luau"))()
module["Symbols"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Symbols.luau"))()
module["Symbols-Filled"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Symbols-Filled.luau"))()
module["Lab"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/LucideLab.luau"))()
module.Fluency = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Fluency.luau"))()

module.nebulaIcons = {
	stripes = 8834748103,
	circles = 73048796459024,
	nebula = 76656741080367,
	home = 111043355839507,
	keycache = 13587387127,
	apps = 13300918120,
	view_in_ar = 113380429914565,
	home_material = 9080449299,
	location = 6034996695,
	sparkle = 4483362748,
}

function module:GetIcon(name, source)
	source = source or "Symbols"

	game:GetService("ContentProvider"):PreloadAsync({
		`rbxassetid://{module[source][name]}`
	})

	return module[source][name]
end

return module
