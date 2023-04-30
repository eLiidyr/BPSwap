local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Epeolatry / Utu", true, {main="Epeolatry", sub="Utu Grip"})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Epeolatry - Trash", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Epeolatry - Hybrid", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Epeolatry - Max Defense", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })

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
    manager:addMidcast("Elemental Sforzo",      false, {})
    manager:addMidcast("Rune",                  false, {})
    manager:addMidcast("Vallation",             false, {})
    manager:addMidcast("Swordplay",             false, {})
    manager:addMidcast("Swipe",                 false, {})
    manager:addMidcast("Lunge",                 false, {})
    manager:addMidcast("Pflug",                 false, {})
    manager:addMidcast("Valiance",              false, {})
    manager:addMidcast("Embolden",              false, {})
    manager:addMidcast("Vivacious Pulse",       false, {})
    manager:addMidcast("Gambit",                false, {})
    manager:addMidcast("Battuta",               false, {})
    manager:addMidcast("Rayke",                 false, {})
    manager:addMidcast("Liement",               false, {})
    manager:addMidcast("Enfeebling Magic",      false, {})
    manager:addMidcast("Enhancing Magic",       false, {})
    manager:addMidcast("Healing Magic",         false, {})
    manager:addMidcast("Divine Magic",          false, {})
    manager:addMidcast("Dark Magic",            false, {})
    manager:addMidcast("Phalanx",               false, {})
    manager:addMidcast("Flash",                 false, {})
    manager:addMidcast("Aquaveil",              false, {})
    manager:addMidcast("Stoneskin",             false, {})
    manager:addMidcast("Temper",                false, {})
    manager:addMidcast("Regen",                 false, {})
    manager:addMidcast("Cure", false, {},
    {
        ["Aurorastorm"] = {

        }
    })

    do -- Spell Copies.

        -- Curing Spells.
        manager:addMidcast("Cure II",           false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure III",          false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure IV",           false, manager.sets.midcast["Cure"])

        -- Regens.
        manager:addMidcast("Regen II",          false, manager.sets.midcast["Regen"])
        manager:addMidcast("Regen III",         false, manager.sets.midcast["Regen"])
        manager:addMidcast("Regen IV",          false, manager.sets.midcast["Regen"])

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Dimidiation",       1, 0, {})
    manager:addWeaponSkill("Dimidiation",       1, 3000, {})

end}
return profile