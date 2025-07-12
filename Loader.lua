local module = {}

module.Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/MaterialIcons.lua"))()
module.Lucide = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/LucideIcons.lua"))()
module.Phosphor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/refs/heads/master/Phosphor.lua"))()

function module:GetIcon(name, source)
	source = source or "Material"

	return module[source][name]
end

return module
