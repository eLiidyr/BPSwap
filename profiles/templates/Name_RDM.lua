local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Naegling / Thibron", true, {main="Naegling", sub="Thibron"})
    manager:addWeapon("Maxentius / Thibron", true, {main="Maxentius", sub="Thibron"})
    manager:addWeapon("Crocea Mors / Daybreak", true, {main="Crocea Mors", sub="Daybreak"})

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
    manager:addMidcast("Chainspell",            false, {})
    manager:addMidcast("Convert",               false, {})
    manager:addMidcast("Composure",             false, {})
    manager:addMidcast("Saboteur",              false, {})
    manager:addMidcast("Spontaneity",           false, {})
    manager:addMidcast("Elemental Magic",       false, {})
    manager:addMidcast("Enfeebling Magic",      false, {})
    manager:addMidcast("Enhancing Magic",       false, {})
    manager:addMidcast("Healing Magic",         false, {})
    manager:addMidcast("Divine Magic",          false, {})
    manager:addMidcast("Dark Magic",            false, {})
    manager:addMidcast("Enfeeble - Skill",      false, {})
    manager:addMidcast("Enfeeble - Duration",   false, {})
    manager:addMidcast("Enfeeble - Potency",    false, {})
    manager:addMidcast("Enfeeble - MND",        false, {})
    manager:addMidcast("Enfeeble - INT",        false, {})
    manager:addMidcast("Enfeeble - Accuracy",   false, {})
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

        -- Skill Based Enfeebles.
        manager:addMidcast("Frazzle III",   false, manager.sets.midcast["Enfeeble - Skill"])
        manager:addMidcast("Distract III",  false, manager.sets.midcast["Enfeeble - Skill"])
        manager:addMidcast("Poison II",     false, manager.sets.midcast["Enfeeble - Skill"])
        manager:addMidcast("Poison",        false, manager.sets.midcast["Enfeeble - Skill"])

        -- Duration Based Enfeebles.
        manager:addMidcast("Sleep II",      false, manager.sets.midcast["Enfeeble - Duration"])
        manager:addMidcast("Sleep",         false, manager.sets.midcast["Enfeeble - Duration"])
        manager:addMidcast("Break",         false, manager.sets.midcast["Enfeeble - Duration"])
        manager:addMidcast("Blind",         false, manager.sets.midcast["Enfeeble - Duration"])
        manager:addMidcast("Silence",       false, manager.sets.midcast["Enfeeble - Duration"])

        -- Potency Based Enfeebles.
        manager:addMidcast("Gravity II",    false, manager.sets.midcast["Enfeeble - Potency"])
        manager:addMidcast("Gravity",       false, manager.sets.midcast["Enfeeble - Potency"])

        -- MND Based Enfeebles.
        manager:addMidcast("Paralyze II",   false, manager.sets.midcast["Enfeeble - MND"])
        manager:addMidcast("Paralyze",      false, manager.sets.midcast["Enfeeble - MND"])
        manager:addMidcast("Addle II",      false, manager.sets.midcast["Enfeeble - MND"])
        manager:addMidcast("Addle",         false, manager.sets.midcast["Enfeeble - MND"])
        manager:addMidcast("Slow II",       false, manager.sets.midcast["Enfeeble - MND"])
        manager:addMidcast("Slow",          false, manager.sets.midcast["Enfeeble - MND"])

        -- INT Based Enfeebles.
        manager:addMidcast("Blind II",      false, manager.sets.midcast["Enfeeble - INT"])
        manager:addMidcast("Blind",         false, manager.sets.midcast["Enfeeble - INT"])

        -- Full Magic Accuracy Enfeebles.
        manager:addMidcast("Frazzle II",    false, manager.sets.midcast["Enfeeble - Accuracy"])
        manager:addMidcast("Distract II",   false, manager.sets.midcast["Enfeeble - Accuracy"])
        manager:addMidcast("Frazzle",       false, manager.sets.midcast["Enfeeble - Accuracy"])
        manager:addMidcast("Distract",      false, manager.sets.midcast["Enfeeble - Accuracy"])
        manager:addMidcast("Dispel",        false, manager.sets.midcast["Enfeeble - Accuracy"])

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Burst", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Flat Blade",    1, 0, {})
    manager:addWeaponSkill("Brainshaker",   1, 0, {})

    manager:addWeaponSkill("Seraph Blade", 1, 0, {})
    manager:addWeaponSkill("Seraph Blade", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Savage Blade", 1, 0, {})
    manager:addWeaponSkill("Savage Blade", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Sanguine Blade", 1, 0, {})
    manager:addWeaponSkill("Sanguine Blade", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Chant du Cygne", 1, 0, {})
    manager:addWeaponSkill("Chant du Cygne", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Requiescat", 1, 0, {})
    manager:addWeaponSkill("Requiescat", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Seraph Strike", 1, 0, {})
    manager:addWeaponSkill("Seraph Strike", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("True Strike", 1, 0, {})
    manager:addWeaponSkill("True Strike", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Realmrazer", 1, 0, {})
    manager:addWeaponSkill("Realmrazer", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Black Halo", 1, 0, {})
    manager:addWeaponSkill("Black Halo", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Aeolian Edge", 1, 0, {})
    manager:addWeaponSkill("Aeolian Edge", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

    manager:addWeaponSkill("Evisceration", 1, 0, {})
    manager:addWeaponSkill("Evisceration", 1, 3000, {},
    {
        ["Berserk:Attack Boost:Minuet:Minuet:Minuet"] = {
        },
    })

end}
return profile