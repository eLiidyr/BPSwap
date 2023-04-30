local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position

    -- Capes:
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Tizona / Thibron", true, {main="Tizona", sub="Thibron"})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Tizona - Trash",    1, {})
    manager:addEngaged("Tizona - Hybrid",   1, {})

    -- Precast: (name, set, buffed)
    manager:addPrecast("Fast Cast", {})
    manager:addPrecast("Elemental Magic",   manager.sets.precast['Fast Cast'])
    manager:addPrecast("Enfeebling Magic",  manager.sets.precast['Fast Cast'])
    manager:addPrecast("Enhancing Magic",   manager.sets.precast['Fast Cast'])
    manager:addPrecast("Healing Magic",     manager.sets.precast['Fast Cast'])
    manager:addPrecast("Divine Magic",      manager.sets.precast['Fast Cast'])
    manager:addPrecast("Dark Magic",        manager.sets.precast['Fast Cast'])
    manager:addPrecast("Blue Magic",        manager.sets.precast['Fast Cast'])
    manager:addPrecast("Ninjutsu",          manager.sets.precast['Fast Cast'])

    -- Midcast: (name, mode, set, buffed)
    manager:addMidcast("Azure Lore",            false, {})
    manager:addMidcast("Burst Affinity",        false, {})
    manager:addMidcast("Chain Affinity",        false, {})
    manager:addMidcast("Convergence",           false, {})
    manager:addMidcast("Diffusion",             false, {})
    manager:addMidcast("Efflux",                false, {})
    manager:addMidcast("Unbridled Learning",    false, {})
    manager:addMidcast("Unbridled Wisdom",      false, {})
    manager:addMidcast("Dream Flower",          false, {})
    manager:addMidcast("Reaving Wind",          false, {})
    manager:addMidcast("Occultation",           false, {})

    do -- Physical Spells - Attack.
        manager:addMidcast("Delta Thrust",          1, {})
        manager:addMidcast("Barbed Crescent",       1, {})
        manager:addMidcast("Heavy Strike",          1, {})
        manager:addMidcast("Thrashing Assault",     1, {})
        manager:addMidcast("Empty Thrash",          1, {})
        manager:addMidcast("Sudden Lunge",          1, {})
        manager:addMidcast("Sickle Slash",          1, {})
        manager:addMidcast("Paralyzing Triad",      1, {})
        manager:addMidcast("Cannonball",            1, {})

    end

    do -- Physical Spells - Accuracy.
        manager:addMidcast("Delta Thrust",          2, {})
        manager:addMidcast("Barbed Crescent",       2, {})
        manager:addMidcast("Heavy Strike",          2, {})
        manager:addMidcast("Thrashing Assault",     2, {})
        manager:addMidcast("Empty Thrash",          2, {})
        manager:addMidcast("Sudden Lunge",          2, {})
        manager:addMidcast("Sickle Slash",          2, {})
        manager:addMidcast("Paralyzing Triad",      2, {})
        manager:addMidcast("Cannonball",            2, {})

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {},
    {
        ["Burst Affinity"] = {
        }
    })

    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.RANGED, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Flat Blade", 1, 0, {})
    manager:addWeaponSkill("Seraph Blade", 1, 0, {})
    manager:addWeaponSkill("Seraph Blade", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Savage Blade", 1, 0, {})
    manager:addWeaponSkill("Savage Blade", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Sanguine Blade", 1, 0, {})
    manager:addWeaponSkill("Sanguine Blade", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Chant du Cygne", 1, 0, {})
    manager:addWeaponSkill("Chant du Cygne", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Expiacion", 1, 0, {})
    manager:addWeaponSkill("Expiacion", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Requiescat", 1, 0, {})
    manager:addWeaponSkill("Requiescat", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Seraph Strike", 1, 0, {})
    manager:addWeaponSkill("Seraph Strike", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("True Strike", 1, 0, {})
    manager:addWeaponSkill("True Strike", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Judgment", 1, 0, {})
    manager:addWeaponSkill("Judgment", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Flash Nova", 1, 0, {})
    manager:addWeaponSkill("Flash Nova", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Realmrazer", 1, 0, {})
    manager:addWeaponSkill("Realmrazer", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

    manager:addWeaponSkill("Black Halo", 1, 0, {})
    manager:addWeaponSkill("Black Halo", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        }
    })

end}
return profile