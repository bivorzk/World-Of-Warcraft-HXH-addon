local function MusicPlayer()
    PlayMusic("Interface\\AddOns\\HxHMusic\\Music\\HxHMusic.mp3")
end

local function stop()
    StopMusic()
end

local function OnEvent(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        message("Welcome to the game! Please type /hxh1 to continue.")
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", OnEvent)

SlashCmdList["HXH"] = MusicPlayer
SLASH_HXH1 = "/hxh1"

SlashCmdList["STOPZENE"] = stop
SLASH_STOPZENE1 = "/stopzene"
