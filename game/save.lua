--The code for this is pretty weird so i'll explain it.
--Each course.lua file contains the location of a save.lua file in the same directory.
--A different one is used for each course, to make support for custom courses (in the future) a bit easier.
--When a course is loaded, the save.lua is read, and the variables are saved for when a puzzle is completed.
--It's done this way because the file gets wiped when a puzzle is completed and rewritten, but changing one
--of the variables (corresponding of the level you're playing) to true.

savedata = {}

function savedata.read()
 
 local savegame = io.open(savefile, "r")
 
 if savegame == nil then
	savedata.create()
 end
 
 dofile(savefile)

end

function savedata.write()

 local savegame = io.open(savefile, "w")
 
 savegame:write("level1a.completed = "..tostring(level1a.completed), "\n")
 savegame:write("level1b.completed = "..tostring(level1b.completed), "\n")
 savegame:write("level1c.completed = "..tostring(level1c.completed), "\n")
 savegame:write("level1d.completed = "..tostring(level1d.completed), "\n")
 savegame:write("level1e.completed = "..tostring(level1e.completed), "\n")
 savegame:write("level1f.completed = "..tostring(level1f.completed), "\n")
 savegame:write("level1g.completed = "..tostring(level1g.completed), "\n")
 savegame:write("level1h.completed = "..tostring(level1h.completed), "\n")

 savegame:write("", "\n")

 savegame:write("level2a.completed = "..tostring(level2a.completed), "\n")
 savegame:write("level2b.completed = "..tostring(level2b.completed), "\n")
 savegame:write("level2c.completed = "..tostring(level2c.completed), "\n")
 savegame:write("level2d.completed = "..tostring(level2d.completed), "\n")
 savegame:write("level2e.completed = "..tostring(level2e.completed), "\n")
 savegame:write("level2f.completed = "..tostring(level2f.completed), "\n")
 savegame:write("level2g.completed = "..tostring(level2g.completed), "\n")
 savegame:write("level2h.completed = "..tostring(level2h.completed), "\n")

 savegame:write("", "\n")

 savegame:write("level3a.completed = "..tostring(level3a.completed), "\n")
 savegame:write("level3b.completed = "..tostring(level3b.completed), "\n")
 savegame:write("level3c.completed = "..tostring(level3c.completed), "\n")
 savegame:write("level3d.completed = "..tostring(level3d.completed), "\n")
 savegame:write("level3e.completed = "..tostring(level3e.completed), "\n")
 savegame:write("level3f.completed = "..tostring(level3f.completed), "\n")
 savegame:write("level3g.completed = "..tostring(level3g.completed), "\n")
 savegame:write("level3h.completed = "..tostring(level3h.completed), "\n")

 savegame:write("", "\n")

 savegame:write("level4a.completed = "..tostring(level4a.completed), "\n")
 savegame:write("level4b.completed = "..tostring(level4b.completed), "\n")
 savegame:write("level4c.completed = "..tostring(level4c.completed), "\n")
 savegame:write("level4d.completed = "..tostring(level4d.completed), "\n")
 savegame:write("level4e.completed = "..tostring(level4e.completed), "\n")
 savegame:write("level4f.completed = "..tostring(level4f.completed), "\n")
 savegame:write("level4g.completed = "..tostring(level4g.completed), "\n")
 savegame:write("level4h.completed = "..tostring(level4h.completed), "\n")
 
 savegame:write("", "\n")

 savegame:write("level5a.completed = "..tostring(level5a.completed), "\n")
 savegame:write("level5b.completed = "..tostring(level5b.completed), "\n")
 savegame:write("level5c.completed = "..tostring(level5c.completed), "\n")
 savegame:write("level5d.completed = "..tostring(level5d.completed), "\n")
 savegame:write("level5e.completed = "..tostring(level5e.completed), "\n")
 savegame:write("level5f.completed = "..tostring(level5f.completed), "\n")
 savegame:write("level5g.completed = "..tostring(level5g.completed), "\n")
 savegame:write("level5h.completed = "..tostring(level5h.completed), "\n")

 savegame:write("", "\n")

 savegame:write("level6a.completed = "..tostring(level6a.completed), "\n")
 savegame:write("level6b.completed = "..tostring(level6b.completed), "\n")
 savegame:write("level6c.completed = "..tostring(level6c.completed), "\n")
 savegame:write("level6d.completed = "..tostring(level6d.completed), "\n")
 savegame:write("level6e.completed = "..tostring(level6e.completed), "\n")
 savegame:write("level6f.completed = "..tostring(level6f.completed), "\n")
 savegame:write("level6g.completed = "..tostring(level6g.completed), "\n")
 savegame:write("level6h.completed = "..tostring(level6h.completed), "\n")

 savegame:write("", "\n")

 savegame:write("level7a.completed = "..tostring(level7a.completed), "\n")
 savegame:write("level7b.completed = "..tostring(level7b.completed), "\n")
 savegame:write("level7c.completed = "..tostring(level7c.completed), "\n")
 savegame:write("level7d.completed = "..tostring(level7d.completed), "\n")
 savegame:write("level7e.completed = "..tostring(level7e.completed), "\n")
 savegame:write("level7f.completed = "..tostring(level7f.completed), "\n")
 savegame:write("level7g.completed = "..tostring(level7g.completed), "\n")
 savegame:write("level7h.completed = "..tostring(level7h.completed), "\n")

 savegame:write("", "\n")

 savegame:write("level8a.completed = "..tostring(level8a.completed), "\n")
 savegame:write("level8b.completed = "..tostring(level8b.completed), "\n")
 savegame:write("level8c.completed = "..tostring(level8c.completed), "\n")
 savegame:write("level8d.completed = "..tostring(level8d.completed), "\n")
 savegame:write("level8e.completed = "..tostring(level8e.completed), "\n")
 savegame:write("level8f.completed = "..tostring(level8f.completed), "\n")
 savegame:write("level8g.completed = "..tostring(level8g.completed), "\n")
 savegame:write("level8h.completed = "..tostring(level8h.completed), "\n")

 io.close(savegame)

end

function savedata.levelcleared()
  
  if leveltosave == "level1a" then level1a.completed = true end
  if leveltosave == "level1b" then level1b.completed = true end
  if leveltosave == "level1c" then level1c.completed = true end
  if leveltosave == "level1d" then level1d.completed = true end
  if leveltosave == "level1e" then level1e.completed = true end
  if leveltosave == "level1f" then level1f.completed = true end
  if leveltosave == "level1g" then level1g.completed = true end
  if leveltosave == "level1h" then level1h.completed = true end
  
  if leveltosave == "level2a" then level2a.completed = true end
  if leveltosave == "level2b" then level2b.completed = true end
  if leveltosave == "level2c" then level2c.completed = true end
  if leveltosave == "level2d" then level2d.completed = true end
  if leveltosave == "level2e" then level2e.completed = true end
  if leveltosave == "level2f" then level2f.completed = true end
  if leveltosave == "level2g" then level2g.completed = true end
  if leveltosave == "level2h" then level2h.completed = true end
  
  if leveltosave == "level3a" then level3a.completed = true end
  if leveltosave == "level3b" then level3b.completed = true end
  if leveltosave == "level3c" then level3c.completed = true end
  if leveltosave == "level3d" then level3d.completed = true end
  if leveltosave == "level3e" then level3e.completed = true end
  if leveltosave == "level3f" then level3f.completed = true end
  if leveltosave == "level3g" then level3g.completed = true end
  if leveltosave == "level3h" then level3h.completed = true end
  
  if leveltosave == "level4a" then level4a.completed = true end
  if leveltosave == "level4b" then level4b.completed = true end
  if leveltosave == "level4c" then level4c.completed = true end
  if leveltosave == "level4d" then level4d.completed = true end
  if leveltosave == "level4e" then level4e.completed = true end
  if leveltosave == "level4f" then level4f.completed = true end
  if leveltosave == "level4g" then level4g.completed = true end
  if leveltosave == "level4h" then level4h.completed = true end
  
  if leveltosave == "level5a" then level5a.completed = true end
  if leveltosave == "level5b" then level5b.completed = true end
  if leveltosave == "level5c" then level5c.completed = true end
  if leveltosave == "level5d" then level5d.completed = true end
  if leveltosave == "level5e" then level5e.completed = true end
  if leveltosave == "level5f" then level5f.completed = true end
  if leveltosave == "level5g" then level5g.completed = true end
  if leveltosave == "level5h" then level5h.completed = true end
  
  if leveltosave == "level6a" then level6a.completed = true end
  if leveltosave == "level6b" then level6b.completed = true end
  if leveltosave == "level6c" then level6c.completed = true end
  if leveltosave == "level6d" then level6d.completed = true end
  if leveltosave == "level6e" then level6e.completed = true end
  if leveltosave == "level6f" then level6f.completed = true end
  if leveltosave == "level6g" then level6g.completed = true end
  if leveltosave == "level6h" then level6h.completed = true end
  
  if leveltosave == "level7a" then level7a.completed = true end
  if leveltosave == "level7b" then level7b.completed = true end
  if leveltosave == "level7c" then level7c.completed = true end
  if leveltosave == "level7d" then level7d.completed = true end
  if leveltosave == "level7e" then level7e.completed = true end
  if leveltosave == "level7f" then level7f.completed = true end
  if leveltosave == "level7g" then level7g.completed = true end
  if leveltosave == "level7h" then level7h.completed = true end
  
  if leveltosave == "level8a" then level8a.completed = true end
  if leveltosave == "level8b" then level8b.completed = true end
  if leveltosave == "level8c" then level8c.completed = true end
  if leveltosave == "level8d" then level8d.completed = true end
  if leveltosave == "level8e" then level8e.completed = true end
  if leveltosave == "level8f" then level8f.completed = true end
  if leveltosave == "level8g" then level8g.completed = true end
  if leveltosave == "level8h" then level8h.completed = true end
  
end

function savedata.create()

  local savegame = io.open(savefile, "w")
  
  savegame:write("level1a.completed = ".."false", "\n")
  savegame:write("level1b.completed = ".."false", "\n")
  savegame:write("level1c.completed = ".."false", "\n")
  savegame:write("level1d.completed = ".."false", "\n")
  savegame:write("level1e.completed = ".."false", "\n")
  savegame:write("level1f.completed = ".."false", "\n")
  savegame:write("level1g.completed = ".."false", "\n")
  savegame:write("level1h.completed = ".."false", "\n")
  
  savegame:write("", "\n")

  savegame:write("level2a.completed = ".."false", "\n")
  savegame:write("level2b.completed = ".."false", "\n")
  savegame:write("level2c.completed = ".."false", "\n")
  savegame:write("level2d.completed = ".."false", "\n")
  savegame:write("level2e.completed = ".."false", "\n")
  savegame:write("level2f.completed = ".."false", "\n")
  savegame:write("level2g.completed = ".."false", "\n")
  savegame:write("level2h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level3a.completed = ".."false", "\n")
  savegame:write("level3b.completed = ".."false", "\n")
  savegame:write("level3c.completed = ".."false", "\n")
  savegame:write("level3d.completed = ".."false", "\n")
  savegame:write("level3e.completed = ".."false", "\n")
  savegame:write("level3f.completed = ".."false", "\n")
  savegame:write("level3g.completed = ".."false", "\n")
  savegame:write("level3h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level4a.completed = ".."false", "\n")
  savegame:write("level4b.completed = ".."false", "\n")
  savegame:write("level4c.completed = ".."false", "\n")
  savegame:write("level4d.completed = ".."false", "\n")
  savegame:write("level4e.completed = ".."false", "\n")
  savegame:write("level4f.completed = ".."false", "\n")
  savegame:write("level4g.completed = ".."false", "\n")
  savegame:write("level4h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level5a.completed = ".."false", "\n")
  savegame:write("level5b.completed = ".."false", "\n")
  savegame:write("level5c.completed = ".."false", "\n")
  savegame:write("level5d.completed = ".."false", "\n")
  savegame:write("level5e.completed = ".."false", "\n")
  savegame:write("level5f.completed = ".."false", "\n")
  savegame:write("level5g.completed = ".."false", "\n")
  savegame:write("level5h.completed = ".."false", "\n")
  
  savegame:write("", "\n")

  savegame:write("level6a.completed = ".."false", "\n")
  savegame:write("level6b.completed = ".."false", "\n")
  savegame:write("level6c.completed = ".."false", "\n")
  savegame:write("level6d.completed = ".."false", "\n")
  savegame:write("level6e.completed = ".."false", "\n")
  savegame:write("level6f.completed = ".."false", "\n")
  savegame:write("level6g.completed = ".."false", "\n")
  savegame:write("level6h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level7a.completed = ".."false", "\n")
  savegame:write("level7b.completed = ".."false", "\n")
  savegame:write("level7c.completed = ".."false", "\n")
  savegame:write("level7d.completed = ".."false", "\n")
  savegame:write("level7e.completed = ".."false", "\n")
  savegame:write("level7f.completed = ".."false", "\n")
  savegame:write("level7g.completed = ".."false", "\n")
  savegame:write("level7h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level8a.completed = ".."false", "\n")
  savegame:write("level8b.completed = ".."false", "\n")
  savegame:write("level8c.completed = ".."false", "\n")
  savegame:write("level8d.completed = ".."false", "\n")
  savegame:write("level8e.completed = ".."false", "\n")
  savegame:write("level8f.completed = ".."false", "\n")
  savegame:write("level8g.completed = ".."false", "\n")
  savegame:write("level8h.completed = ".."false", "\n")
  
  io.close(savegame)

end