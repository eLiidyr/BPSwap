local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Weapons", true, {})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Naegling - Trash",  1, {})
    manager:addEngaged("Naegling - Hybrid", 1, {})
    manager:addEngaged("Murgleis - Trash",  1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Murgleis - Hybrid", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Almace - Trash", 1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
    manager:addEngaged("Almace - Hybrid", 1, {},
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
    manager:addPrecast("Ranged",            {},
    {
        ["Flurry"] = {
            
        }
    })

    -- Midcast: (name, mode, set, buffed)
    manager:addMidcast("Wild Card",             false, {})
    manager:addMidcast("Snake Eye",             false, {})
    manager:addMidcast("Fold",                  false, {})
    manager:addMidcast("CorsairRoll",           false, {})
    manager:addMidcast("CorsairShot",           false, {})
    manager:addMidcast("Double-Up",             false, manager.sets.midcast['CorsairRoll'])

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {},
    {
        ["Triple Shot"] = {

        },
    })
    manager:addRanged("Fomalhaut", 1, {},
    {
        ["Triple Shot"] = {

        },
    })
    manager:addRanged("Armageddon", 1, {},
    {
        ["Triple Shot"] = {

        },
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.1:Triple Shot"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.2:Triple Shot"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
        ["Aftermath: Lv.3:Triple Shot"] = {

        },
    })
    manager:addRanged("Death Penalty", 1, {},
    {
        ["Triple Shot"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
        ["Aftermath: Lv.3:Triple Shot"] = {

        },
    })

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Flat Blade", 1, 0, {})

end}
return profile