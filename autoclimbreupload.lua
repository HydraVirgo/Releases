local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "logle555 custom",
    LoadingTitle = "Rayfield UI",
    LoadingSubtitle = "thanks for buying",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, 
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "lofiware", 
       RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
       Title = "lofiware",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/lofiware)",
       FileName = "lofiware",
       SaveKey = true,
       GrabKeyFromSite = false, 
       Key = "Hello"
    }
 })
 
 local Tab = Window:CreateTab("Main", 4483362458)
 local Section = Tab:CreateSection("Features")
 Rayfield:Notify({
    Title = "heyy",
    Content = "hi thanks for buying",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { 
       Ignore = {
          Name = "hi",
          Callback = function()
       end
    },
 },
 })
 
local Button = Tab:CreateButton({
   Name = "Auto Climb",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/WyvLich/Releases/main/yes",true))()
   end,
})
