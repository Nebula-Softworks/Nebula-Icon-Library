local module = {}

module.Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/MaterialIcons.lua"))()
module.Lucide = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Icon-Library/master/LucideIcons.lua"))()

function module:GetIcon(name, source)
	return module[source][name]
end

return module
