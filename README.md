# The-Night-Just-Begins
## Work in progress

Mod for cyberpunk that interacts with it's environment

for now you can only change NCPD Reputation by using this command below in Cyber Engine Tweaks:

local player = Game.GetPlayer()player:SetNCPDReputation(int)

If the number is above or equals 50, then if you approach a NCPD patrol, they won't react to you unless you start attacking.
If the number is below 50, then vanilla cyberpunk detection system will initiate.
