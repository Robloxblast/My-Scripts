local whitelist = {
    "wrestonmain", -- owner
    "Ben_Muhammed17", -- admin
    "xzk_7402", --lifetime
    "Wreston_Jr",
    "nephis001", --lifetime
    "dronareva", --lifetime
    "eitch9nine", --lifetime giveaway
    "MyDogJaxIsCute", --lifetime
    "Eldekatrecent4", --lifetime
    "wasdawdawdwad7",
}

local function trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

local function isPlayerWhitelisted(playerName)
    local trimmedPlayerName = trim(playerName:lower())
    
    for _, name in ipairs(whitelist) do
        local trimmedWhitelistName = trim(name:lower())
        
        if trimmedWhitelistName == trimmedPlayerName then
            return true
        end
    end
    
    print("Player is not whitelisted") 
    return false
end

return {
    isPlayerWhitelisted = isPlayerWhitelisted
}
