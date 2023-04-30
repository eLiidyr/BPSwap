local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Refresh - SHield",   true, {main="Bolelabunga", sub="Genmei Shield"})
    manager:addWeapon("Staff Full DT",      true, {main="Malignance Pole", sub="Mensch Strap +1"})
    manager:addWeapon("Club Full DT",       true, {main="Mafic Cudgel", sub="Genmei Shield"})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Melee - Trash",  1, {})
    manager:addEngaged("Melee - Hybrid", 1, {})

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

    -- Midcast: (name, mode, set, buffed)
    manager:addMidcast("Benediction",           false, {})
    manager:addMidcast("Martyr",                false, {})
    manager:addMidcast("Devotion",              false, {})
    manager:addMidcast("Divine Caress",         false, {})
    manager:addMidcast("Sacrosanctity",         false, {})
    manager:addMidcast("Elemental Magic",       false, {})
    manager:addMidcast("Enfeebling Magic",      false, {})
    manager:addMidcast("Enhancing Magic",       false, {})
    manager:addMidcast("Healing Magic",         false, {})
    manager:addMidcast("Divine Magic",          false, {})
    manager:addMidcast("Dark Magic",            false, {})
    manager:addMidcast("Aquaveil",              false, {})
    manager:addMidcast("Stoneskin",             false, {})
    manager:addMidcast("Regen",                 false, {})
    manager:addMidcast("Cursna",                false, {})
    manager:addMidcast("Barspells",             false, {})
    manager:addMidcast("Na-Spells",             false, {})
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

        -- Regens.
        manager:addMidcast("Regen II",      false, manager.sets.midcast["Regen"])
        manager:addMidcast("Regen III",     false, manager.sets.midcast["Regen"])
        manager:addMidcast("Regen IV",      false, manager.sets.midcast["Regen"])

        -- Na Spells.
        manager:addMidcast("Poisona",       false, manager.sets.midcast["Na-Spells"])
        manager:addMidcast("Paralyna",      false, manager.sets.midcast["Na-Spells"])
        manager:addMidcast("Blindna",       false, manager.sets.midcast["Na-Spells"])
        manager:addMidcast("Silena",        false, manager.sets.midcast["Na-Spells"])
        manager:addMidcast("Viruna",        false, manager.sets.midcast["Na-Spells"])
        manager:addMidcast("Stona",         false, manager.sets.midcast["Na-Spells"])

        -- Barspells.
        manager:addMidcast("Barstonra",     false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barsleepra",    false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barwatera",     false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barpoisonra",   false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barparalyzra",  false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Baraera",       false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barfira",       false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barblindra",    false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barblizzara",   false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barsilencera",  false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barthundra",    false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barvira",       false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Barpetra",      false, manager.sets.midcast["Barspells"])
        manager:addMidcast("Baramnesra",    false, manager.sets.midcast["Barspells"])

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Burst", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
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

    manager:addWeaponSkill("Hexa Strike", 1, 0, {})
    manager:addWeaponSkill("Hexa Strike", 1, 3000, {},
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

end}
return profile