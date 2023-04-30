local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Chango",                         true, {})
    manager:addWeapon("Conqueror",                      true, {})
    manager:addWeapon("Ukonvasara",                     true, {})
    manager:addWeapon("Naegling",                       true, {})
    manager:addWeapon("Farsha",                         true, {})
    manager:addWeapon("Ikenga's Axe",                   true, {})
    manager:addWeapon("Loxotic Mace +1",                true, {})
    manager:addWeapon("Dolichenus / Ikenga's Axe",      true, {})
    manager:addWeapon("Loxotic Mace +1 / Ikenga's Axe", true, {})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Basic TP",  1, {},
    {
        ["Fighter's Roll"] = {

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
    manager:addMidcast("Mighty Strikes",    false, {})
    manager:addMidcast("Provoke",           false, {})
    manager:addMidcast("Berserk",           false, {})
    manager:addMidcast("Defender",          false, {})
    manager:addMidcast("Warcry",            false, {})
    manager:addMidcast("Aggressor",         false, {})
    manager:addMidcast("Retaliation",       false, {})
    manager:addMidcast("Warrior's Charge",  false, {})
    manager:addMidcast("Tomahawk",          false, {})
    manager:addMidcast("Restraint",         false, {})
    manager:addMidcast("Blood Rage",        false, {})
    manager:addMidcast("Brazen Rush",       false, {})

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Seraph Blade",      1, 0, {})
    manager:addWeaponSkill("Seraph Blade",      1, 3000, {})
    manager:addWeaponSkill("Sanguine Blade",    1, 0, {})
    manager:addWeaponSkill("Sanguine Blade",    1, 3000, {})
    manager:addWeaponSkill("Requiescat",        1, 0, {})
    manager:addWeaponSkill("Requiescat",        1, 3000, {})
    manager:addWeaponSkill("Seraph Strike",     1, 0, {})
    manager:addWeaponSkill("Seraph Strike",     1, 3000, {})
    manager:addWeaponSkill("Aeolian Edge",      1, 0, {})
    manager:addWeaponSkill("Aeolian Edge",      1, 3000, {})
    manager:addWeaponSkill("Cloudsplitter",     1, 0, {})
    manager:addWeaponSkill("Cloudsplitter",     1, 3000, {})

    manager:addWeaponSkill("Savage Blade", 1, 0, {})
    manager:addWeaponSkill("Savage Blade", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("True Strike", 1, 0, {})
    manager:addWeaponSkill("True Strike", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Judgment", 1, 0, {})
    manager:addWeaponSkill("Judgment", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Realmrazer", 1, 0, {})
    manager:addWeaponSkill("Realmrazer", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Black Halo", 1, 0, {})
    manager:addWeaponSkill("Black Halo", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Evisceration", 1, 0, {})
    manager:addWeaponSkill("Evisceration", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Upheaval", 1, 0, {})
    manager:addWeaponSkill("Upheaval", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("King's Justice", 1, 0, {})
    manager:addWeaponSkill("King's Justice", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Ukko's Fury", 1, 0, {})
    manager:addWeaponSkill("Ukko's Fury", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Metatron Torment", 1, 0, {})
    manager:addWeaponSkill("Metatron Torment", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Raging Rush", 1, 0, {})
    manager:addWeaponSkill("Raging Rush", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Fell Cleave", 1, 0, {})
    manager:addWeaponSkill("Fell Cleave", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Decimation", 1, 0, {})
    manager:addWeaponSkill("Decimation", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Mistral Axe", 1, 0, {})
    manager:addWeaponSkill("Mistral Axe", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Resolution", 1, 0, {})
    manager:addWeaponSkill("Resolution", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Impulse Drive", 1, 0, {})
    manager:addWeaponSkill("Impulse Drive", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    manager:addWeaponSkill("Stardiver", 1, 0, {})
    manager:addWeaponSkill("Stardiver", 1, 3000, {},
    {
        ["Mighty Strikes"] = {
        },
    })

    -- Magic Accuracy Weapon Skill.
    manager:addWeaponSkill("Flat Blade",    1, 0, {})
    
    do -- Clones.
        manager:addWeaponSkill("Brainshaker",   1, 0, manager.sets.weaponskills["Flat Blade"])
        manager:addWeaponSkill("Shield Break",  1, 0, manager.sets.weaponskills["Flat Blade"])
        manager:addWeaponSkill("Armor Break",   1, 0, manager.sets.weaponskills["Flat Blade"])
        manager:addWeaponSkill("Full Break",    1, 0, manager.sets.weaponskills["Flat Blade"])

    end

end}
return profile