# OfflineGameUpdater

So you had the problem that the Roblox Servers Crashed while Realising 
a Update of your Game?

This Projekt is supposed to solve this.

For what to use it?

If you have a Map or an new Egg you want to realese at a certain time but you are not online or just dont want Roblox to crash you create the new Map Store it in the Folder more Info in Setup. Then after you are done you set the UpdateTime and the NewMap will be loaded at that Time. Keep in mind that you need to publish the NewVersion with the Module and probably restart befor the Update so you dont have old Servers witheout the Module. even if you have new joiners it will check if its after the update time and load the Map.

Warning: Restart/Migrate the Game at a lower PlayerCount so when you get To the Update time you dont have to Migrate the Servers and potentially crash Roblox.

How to set it UP:

1. Create a Module in ServerScriptService and name it TasksModule and put the Code from Tasks.lua inside. Configurate it (UpdateTime, Load in Studio ...)

2. Create a script in ServerScriptService and name it whatever you want its only important that the Module is named TasksModule since we load it in the script to run it. Paste the code from main.lua inside

3. Folders Create a Folder called "UPDATE_HOLDER", "UPDATE_OLD_MAP", "UPDATE_NEW_MAP" in ServerStorage

When its not Update Time the Old Map gets Loaded if you have like a Limited Event you can Put it in there so every time someone joins befor the Update the LimitedEvent gets Loaded you can let it empty too. on Update time the New Map gets Loaded and the Old one will be Parented to ServerStorage.