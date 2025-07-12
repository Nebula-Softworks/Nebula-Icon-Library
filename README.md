# Nebula Icon Library 🪐  
The Ultimate Icon Library For Roblox Interfaces.  
  
## How to Use The Nebula Icon Library In Starlight  
For any Icon parameter in starlight, it always accepts the asset id of the image.  
We can use the GetIcon function from the Library to return an asset id of our choice  
  
to do so, we do  
```lua
NebulaIcons:GetIcon()
```
  
This accepts the name of the icon we are using, and where the icon comes from (eg. Material)  
so an example will be  
```lua
NebulaIcons:GetIcon("view_in_ar", "Material")
```
this returns the id of the view_in_ar icon from Material Icons (6031079158)  
we can then set this to the Icon parameter of whatever element we're adding  
```lua
local Button = Groupbox:CreateButton({
  Name = "Button",
  Icon = NebulaIcons:GetIcon("view_in_ar", "Material"),
  Callback = function() end,
})
```
> if you are using the Alpha 1 Release of starlight, set ImageSource to `custom`  

  
## How to use Nebula Icons Outside of Starlight  
Let's say you're using Nebula Icons for your own projects in roblox, or another UI Library  
this will show you how to use this without errors  
  
For example, lets say we are trying to use this on Rayfield  
rayfield icons accept a number without the prefix, the same as starlight. so we do not have to make any changes to how we pass the icons  
```lua
local Tab = Window:CreateTab('Rayfield Tab', NebulaIcons:GetIcon("view_in_ar", "Material"))
```
  
but lets say we are using this on a library like [CompKiller](https://github.com/4lpaca-pin/CompKiller/blob/main/examples/Full.luau) (which for gods sake looks like starlight wtf WHYYY :sob:) or just making UIs in roblox and setting the icon via scripting
the icons accept the full image parameter from ImageLabel. this means we have to include the `rbxassetid://` prefix. Now this is very simple as well. we can simply use `..` that lua provides to join strings  
  
heres it in action:  
```lua
Compkiller:Loader("rbxassetid://" ..  NebulaIcons:GetIcon("view_in_ar", "Material"), 2.5).yield();
```
  
### I might fix the grammar/typos soon but yea  

  
## Available Icon Libraries:
- Material Icons (outdated/old, some funny names and no current documentation/searcher). | Default  
- [Lucide Icons](https://lucide.dev/icons). (some names have been changed, but should still generally be easy to use)  
- [Phosphor Icons](https://phosphoricons.com/). | Regular And Filled Style  
  Champagne Renamed to glass-liquid  
  Cigaratte Renamed to cig (and variations)  
  Gender-Intersex renamed to gender-intermix  
- Material Symbols | COMING SOON  
### More Icons will be coming soon
