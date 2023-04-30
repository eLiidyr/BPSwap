local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Common Buffs for THF.
    local basic_buffs = {

        ["Feint"] = {

        },
        ["Sneak Attack"] = {

        },
        ["Trick Attack"] = {

        },
        ["Sneak Attack:Trick Attack"] = {

        },
        ["Assassin's Charge"] = {

        },

    }

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Weapons", true, {})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Naegling - Trash",  1, {}, basic_buffs)
    manager:addEngaged("Naegling - Hybrid", 1, {}, basic_buffs)

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
    manager:addPrecast("Ranged",            {},
    {
        ["Flurry"] = {
            
        }
    })

    -- Midcast: (name, mode, set, buffed)
    manager:addMidcast("Perfect Dodge",     false, {})
    manager:addMidcast("Steal",             false, {})
    manager:addMidcast("Sneak Attack",      false, {})
    manager:addMidcast("Flee",              false, {})
    manager:addMidcast("Trick Attack",      false, {})
    manager:addMidcast("Mug",               false, {})
    manager:addMidcast("Hide",              false, {})
    manager:addMidcast("Accomplice",        false, {})
    manager:addMidcast("Collaborator",      false, {})
    manager:addMidcast("Assassin's Charge", false, {})
    manager:addMidcast("Feint",             false, {})
    manager:addMidcast("Despoil",           false, {})
    manager:addMidcast("Conspirator",       false, {})

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Flat Blade", 1, 0, {})

end}
return profile