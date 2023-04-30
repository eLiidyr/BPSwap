local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Burtgang / Aegis", true, {main="Burtgang", sub="Aegis"})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Burtgang - Trash", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Burtgang - Hybrid", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Burtgang - Max Defense", 1, {},
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
    manager:addMidcast("Invincible",            false, {})
    manager:addMidcast("Holy Circle",           false, {})
    manager:addMidcast("Shield Bash",           false, {})
    manager:addMidcast("Sentinel",              false, {})
    manager:addMidcast("Cover",                 false, {})
    manager:addMidcast("Rampart",               false, {})
    manager:addMidcast("Fealty",                false, {})
    manager:addMidcast("Chivalry",              false, {})
    manager:addMidcast("Divine Emblem",         false, {})
    manager:addMidcast("Elemental Magic",       false, {})
    manager:addMidcast("Enfeebling Magic",      false, {})
    manager:addMidcast("Enhancing Magic",       false, {})
    manager:addMidcast("Healing Magic",         false, {})
    manager:addMidcast("Divine Magic",          false, {})
    manager:addMidcast("Dark Magic",            false, {})
    manager:addMidcast("Phalanx",               false, {})
    manager:addMidcast("Reprisal",              false, {})
    manager:addMidcast("Enlight",               false, {})
    manager:addMidcast("Flash",                 false, {})
    manager:addMidcast("Cure", false, {},
    {
        ["Aurorastorm"] = {

        }
    })

    do -- Spell Copies.

        -- Curing Spells.
        manager:addMidcast("Cure II",       false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure III",      false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure IV",       false, manager.sets.midcast["Cure"])

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Flat Blade",        1, 0, {})
    manager:addWeaponSkill("Savage Blade",      1, 0, {})
    manager:addWeaponSkill("Atonement",         1, 0, {})
    manager:addWeaponSkill("Chant du Cygne",    1, 0, {})
    manager:addWeaponSkill("Requiescat",        1, 0, {})

end}
return profile