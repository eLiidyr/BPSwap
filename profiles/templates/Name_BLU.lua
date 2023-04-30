local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position

    -- Capes:
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Naegling / Maxentius", true, {main="Naegling",sub="Maxentius"})

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
    manager:addWeaponSkill("Savage Blade", 1, 0, {})
    manager:addWeaponSkill("Savage Blade", 1, 3000, {},
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

end}
return profile