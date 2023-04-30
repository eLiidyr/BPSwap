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
    manager:addPrecast("Singing",           {})
    manager:addPrecast("Ranged",            {})

    -- Midcast: (name, mode, set, buffed)
    manager:addMidcast(manager.__CONST.DUMMY,   false, {})
    manager:addMidcast("Soul Voice",            false, {})
    manager:addMidcast("Nightingale",           false, {})
    manager:addMidcast("Troubadour",            false, {})
    manager:addMidcast("Tenuto",                false, {})
    manager:addMidcast("Marcato",               false, {})
    manager:addMidcast("Elemental Magic",       false, {})
    manager:addMidcast("Enfeebling Magic",      false, {})
    manager:addMidcast("Enhancing Magic",       false, {})
    manager:addMidcast("Healing Magic",         false, {})
    manager:addMidcast("Divine Magic",          false, {})
    manager:addMidcast("Dark Magic",            false, {})
    manager:addMidcast("Singing",               false, {})
    manager:addMidcast("Songs - Carols",        false, {})
    manager:addMidcast("Songs - Threnodies",    false, {})
    manager:addMidcast("Songs - Etudes",        false, {})
    manager:addMidcast("Songs - Debuffs",       false, {})
    manager:addMidcast("Songs - Ballads",       false, {})
    manager:addMidcast("Songs - Minnes",        false, {})
    manager:addMidcast("Songs - Minuets",       false, {})
    manager:addMidcast("Songs - Madrigals",     false, {})
    manager:addMidcast("Songs - Preludes",      false, {})
    manager:addMidcast("Songs - Marches",       false, {})
    manager:addMidcast("Songs - Mambos",        false, {})
    manager:addMidcast("Songs - Paeons",        false, {})
    manager:addMidcast("Sentinel's Scherzo",    false, {})
    manager:addMidcast("Foe Lullaby",           false, {})
    manager:addMidcast("Foe Lullaby II",        false, {})
    manager:addMidcast("Horde Lullaby",         false, {})
    manager:addMidcast("Horde Lullaby II",      false, {})
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
        manager:addMidcast("Cure II",               false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure III",              false, manager.sets.midcast["Cure"])
        manager:addMidcast("Cure IV",               false, manager.sets.midcast["Cure"])
        manager:addMidcast("Curaga II",             false, manager.sets.midcast["Curaga"])
        manager:addMidcast("Curaga III",            false, manager.sets.midcast["Curaga"])

        -- Carols.
        manager:addMidcast("Fire Carol II",         false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Ice Carol II",          false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Wind Carol II",         false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Water Carol II",        false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Earth Carol II",        false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Lightning Carol II",    false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Light Carol II",        false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Dark Carol II",         false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Fire Carol",            false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Ice Carol",             false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Wind Carol",            false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Water Carol",           false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Earth Carol",           false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Lightning Carol",       false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Light Carol",           false, manager.sets.midcast["Songs - Carols"])
        manager:addMidcast("Dark Carol",            false, manager.sets.midcast["Songs - Carols"])

        -- Threnodies.
        manager:addMidcast("Fire Threnody II",      false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Ice Threnody II",       false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Wind Threnody II",      false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Water Threnody II",     false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Earth Threnody II",     false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Lightning Threnody II", false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Light Threnody II",     false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Dark Threnody II",      false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Fire Threnody",         false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Ice Threnody",          false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Wind Threnody",         false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Water Threnody",        false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Earth Threnody",        false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Lightning Threnody",    false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Light Threnody",        false, manager.sets.midcast["Songs - Threnodies"])
        manager:addMidcast("Dark Threnody",         false, manager.sets.midcast["Songs - Threnodies"])

        -- Etudes.
        manager:addMidcast("Dextrous Etude",        false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Vivacious Etude",       false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Quick Etude",           false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Learned Etude",         false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Spirited Etude",        false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Enchanting Etude",      false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Herculean Etude",       false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Uncanny Etude",         false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Vital Etude",           false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Swift Etude",           false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Sage Etude",            false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Logical Etude",         false, manager.sets.midcast["Songs - Etudes"])
        manager:addMidcast("Bewitching Etude",      false, manager.sets.midcast["Songs - Etudes"])

        -- Debuffs.
        manager:addMidcast("Pining Nocturn",        false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Carngae Elegy",         false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Battlefield Elegy",     false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem",           false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem II",        false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem III",       false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem IV",        false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem V",         false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem VI",        false, manager.sets.midcast["Songs - Debuffs"])
        manager:addMidcast("Foe Requiem VII",       false, manager.sets.midcast["Songs - Debuffs"])

        -- Ballads.
        manager:addMidcast("Mage's Ballad",         false, manager.sets.midcast["Songs - Ballads"])
        manager:addMidcast("Mage's Ballad II",      false, manager.sets.midcast["Songs - Ballads"])
        manager:addMidcast("Mage's Ballad III",     false, manager.sets.midcast["Songs - Ballads"])

        -- Minnes.
        manager:addMidcast("Knight's Minne",        false, manager.sets.midcast["Songs - Minnes"])
        manager:addMidcast("Knight's Minne II",     false, manager.sets.midcast["Songs - Minnes"])
        manager:addMidcast("Knight's Minne III",    false, manager.sets.midcast["Songs - Minnes"])
        manager:addMidcast("Knight's Minne IV",     false, manager.sets.midcast["Songs - Minnes"])
        manager:addMidcast("Knight's Minne V",      false, manager.sets.midcast["Songs - Minnes"])

        -- Minuets.
        manager:addMidcast("Valor Minuet",          false, manager.sets.midcast["Songs - Minuets"])
        manager:addMidcast("Valor Minuet II",       false, manager.sets.midcast["Songs - Minuets"])
        manager:addMidcast("Valor Minuet III",      false, manager.sets.midcast["Songs - Minuets"])
        manager:addMidcast("Valor Minuet IV",       false, manager.sets.midcast["Songs - Minuets"])
        manager:addMidcast("Valor Minuet V",        false, manager.sets.midcast["Songs - Minuets"])

        -- Madrigals.
        manager:addMidcast("Sword Madrigal",        false, manager.sets.midcast["Songs - Madrigals"])
        manager:addMidcast("Blade Madrigal",        false, manager.sets.midcast["Songs - Madrigals"])

        -- Preludes.
        manager:addMidcast("Hunter's Prelude",      false, manager.sets.midcast["Songs - Preludes"])
        manager:addMidcast("Archer's Prelude",      false, manager.sets.midcast["Songs - Preludes"])

        -- Marches.
        manager:addMidcast("Advancing March",       false, manager.sets.midcast["Songs - Marches"])
        manager:addMidcast("Victory March",         false, manager.sets.midcast["Songs - Marches"])
        manager:addMidcast("Honor March",           false, manager.sets.midcast["Songs - Marches"])

        -- Mambos.
        manager:addMidcast("Sheepfoe Mambo",        false, manager.sets.midcast["Songs - Mambos"])
        manager:addMidcast("Dragonfoe Mambo",       false, manager.sets.midcast["Songs - Mambos"])

        -- Paeons.
        manager:addMidcast("Army's Paeon III",      false, manager.sets.midcast["Songs - Paeons"])
        manager:addMidcast("Army's Paeon IV",       false, manager.sets.midcast["Songs - Paeons"])
        manager:addMidcast("Army's Paeon V",        false, manager.sets.midcast["Songs - Paeons"])
        manager:addMidcast("Army's Paeon VI",       false, manager.sets.midcast["Songs - Paeons"])

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {})
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Aeolian Edge",      1, 0, {})
    manager:addWeaponSkill("Aeolian Edge",      1, 3000, {})
    manager:addWeaponSkill("Rudra's Storm",     1, 0, {})
    manager:addWeaponSkill("Rudra's Storm",     1, 3000, {})
    manager:addWeaponSkill("Evisceration",      1, 0, {})
    manager:addWeaponSkill("Evisceration",      1, 3000, {})
    manager:addWeaponSkill("Mordant Rime",      1, 0, {})
    manager:addWeaponSkill("Mordant Rime",      1, 3000, {})

end}
return profile