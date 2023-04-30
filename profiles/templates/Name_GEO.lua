local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("My Weapons", true, {})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Basic TP",  1, {})

    -- Precast: (name, set, buffed)
    manager:addPrecast("Fast Cast",         {})
    manager:addPrecast("Elemental Magic",   manager.sets.precast['Fast Cast'])
    manager:addPrecast("Enfeebling Magic",  manager.sets.precast['Fast Cast'])
    manager:addPrecast("Enhancing Magic",   manager.sets.precast['Fast Cast'])
    manager:addPrecast("Healing Magic",     manager.sets.precast['Fast Cast'])
    manager:addPrecast("Divine Magic",      manager.sets.precast['Fast Cast'])
    manager:addPrecast("Dark Magic",        manager.sets.precast['Fast Cast'])
    manager:addPrecast("Blue Magic",        manager.sets.precast['Fast Cast'])
    manager:addPrecast("Ninjutsu",          manager.sets.precast['Fast Cast'])
    manager:addPrecast("Ranged",            {})

    -- Midcast: (name, mode, set, buffed)
    manager:addMidcast(manager.__CONST.INDI,    false, {})
    manager:addMidcast(manager.__CONST.GEO,     false, {})
    manager:addMidcast("Chainspell",            false, {})
    manager:addMidcast("Convert",               false, {})
    manager:addMidcast("Composure",             false, {})
    manager:addMidcast("Saboteur",              false, {})
    manager:addMidcast("Spontaneity",           false, {})
    manager:addMidcast("Stymie",                false, {})
    manager:addMidcast("Elemental Magic",       false, {})
    manager:addMidcast("Enfeebling Magic",      false, {})
    manager:addMidcast("Enhancing Magic",       false, {})
    manager:addMidcast("Healing Magic",         false, {})
    manager:addMidcast("Divine Magic",          false, {})
    manager:addMidcast("Dark Magic",            false, {})
    manager:addMidcast("Inundation",            false, {})
    manager:addMidcast("Aquaveil",              false, {})
    manager:addMidcast("Stoneskin",             false, {})
    manager:addMidcast("Cure",                  false, {},
    {
        ["Aurorastorm"] = {

        }
    })
    manager:addMidcast("Curaga",                false, {},
    {
        ["Aurorastorm"] = {

        }
    })

    do -- Spell Copies.

        -- Curing Spells.
        manager:addMidcast("Cure II",       false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure III",      false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure IV",       false, manager.sets.midcast["Cure"])
        manager:addMidcast("Curaga II",     false, manager.sets.midcast["Curaga"])
        manager:addMidcast("Curaga III",    false, manager.sets.midcast["Curaga"])

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Burst", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Brainshaker",   1, 0, {})
    manager:addWeaponSkill("Seraph Strike", 1, 0, {})
    manager:addWeaponSkill("Seraph Strike", 1, 3000, {})
    manager:addWeaponSkill("True Strike",   1, 0, {})
    manager:addWeaponSkill("True Strike",   1, 3000, {})
    manager:addWeaponSkill("Realmrazer",    1, 0, {})
    manager:addWeaponSkill("Realmrazer",    1, 3000, {})
    manager:addWeaponSkill("Black Halo",    1, 0, {})
    manager:addWeaponSkill("Black Halo",    1, 3000, {})
    manager:addWeaponSkill("Aeolian Edge",  1, 0, {})
    manager:addWeaponSkill("Aeolian Edge",  1, 3000, {})

end}
return profile