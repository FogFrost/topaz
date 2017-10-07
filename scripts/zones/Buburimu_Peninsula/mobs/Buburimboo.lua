-----------------------------------
-- Area: Buburimu Peninsula
--  MOB: Buburimboo
-----------------------------------

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Buburimboo's Window Open Time
    local wait = math.random((3600),(7200));
    SetServerVariable("[POP]Buburimboo", os.time() + wait); -- 1-2 hours
    DisallowRespawn(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Buburimboo");
    SetServerVariable("[PH]Buburimboo", 0);
    DisallowRespawn(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
