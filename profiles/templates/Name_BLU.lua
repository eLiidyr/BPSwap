local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position.

    -- Capes: (name, set)
    manager:addCape('WSD - STR', {})

    -- Weapons: (name, equip, set)
    manager:addWeapon("Tizona / Thibron", true, {main="Tizona", sub="Thibron"})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed", {})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Tizona - Trash",    1, {},
    {
        ["Aftermath: Lv.1"] = {

        },
        ["Aftermath: Lv.2"] = {

        },
        ["Aftermath: Lv.3"] = {

        },
    })
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
    manager:addPrecast("Ranged",            {})

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
    manager:addMidcast("Soporific",             false, {})
    manager:addMidcast("Yawn",                  false, {})
    manager:addMidcast("Reaving Wind",          false, {})
    manager:addMidcast("Fetaher Tickle",        false, {})
    manager:addMidcast("Occultation",           false, {})
    manager:addMidcast("Sudden Lunge",          false, {})
    manager:addMidcast("Head Butt",             false, {})
    manager:addMidcast("Tail Slap",             false, {})
    manager:addMidcast("Sound Blast",           false, {})
    manager:addMidcast("Wild Carrot",           false, {})
    manager:addMidcast("Healing Breeze",        false, {})
    manager:addMidcast("Plenilune Embrace",     false, {})
    manager:addMidcast("White Wind",            false, {})
    manager:addMidcast("Restoral",              false, {})
    manager:addMidcast("Diamondhide",           false, {})
    manager:addMidcast("Magic Barrier",         false, {})

    do -- Physical Spells - Attack.
        manager:addMidcast("Delta Thrust",          1, {})
        manager:addMidcast("Barbed Crescent",       1, {})
        manager:addMidcast("Heavy Strike",          1, {})
        manager:addMidcast("Thrashing Assault",     1, {})
        manager:addMidcast("Empty Thrash",          1, {})
        manager:addMidcast("Sickle Slash",          1, {})
        manager:addMidcast("Paralyzing Triad",      1, {})
        manager:addMidcast("Cannonball",            1, {})
        manager:addMidcast("Saurian Slide",         1, {})
        manager:addMidcast("Sweeping Gouge",        1, {})
        manager:addMidcast("Sinker Drill",          1, {})
        manager:addMidcast("Glutinous Dart",        1, {})
        manager:addMidcast("Amorphic Spikes",       1, {})
        manager:addMidcast("Quadrastrike",          1, {})
        manager:addMidcast("Heavy Strike",          1, {})
        manager:addMidcast("Delta Thrust",          1, {})
        manager:addMidcast("Quad. Continuum",       1, {})
        manager:addMidcast("Cannonball",            1, {})
        manager:addMidcast("Benthic Typhoon",       1, {})
        manager:addMidcast("Whirl of Rage",         1, {})
        manager:addMidcast("Vanity Dive",           1, {})
        manager:addMidcast("Goblin Rush",           1, {})
        manager:addMidcast("Final Sting",           1, {})
        manager:addMidcast("Vertical Cleave",       1, {})
        manager:addMidcast("Ram Charge",            1, {})
        manager:addMidcast("Sub-zero Smash",        1, {})
        manager:addMidcast("Disseverment",          1, {})
        manager:addMidcast("Asuran Claws",          1, {})
        manager:addMidcast("Hysteric Barrage",      1, {})
        manager:addMidcast("Spinal Cleave",         1, {})
        manager:addMidcast("Frenetic Rip",          1, {})
        manager:addMidcast("Frypan",                1, {})
        manager:addMidcast("Hydro Shot",            1, {})
        manager:addMidcast("Body Slam",             1, {})
        manager:addMidcast("Seedspray",             1, {})
        manager:addMidcast("Death Scissors",        1, {})
        manager:addMidcast("Spiral Spin",           1, {})
        manager:addMidcast("Dimensional Death",     1, {})
        manager:addMidcast("Mandibular Bite",       1, {})
        manager:addMidcast("Terror Touch",          1, {})
        manager:addMidcast("Uppercut",              1, {})
        manager:addMidcast("Jet Stream",            1, {})
        manager:addMidcast("Pinecone Bomb",         1, {})
        manager:addMidcast("Smite of Rage",         1, {})
        manager:addMidcast("Grand Slam",            1, {})
        manager:addMidcast("Screwdriver",           1, {})
        manager:addMidcast("Claw Cyclone",          1, {})
        manager:addMidcast("Bludgeon",              1, {})
        manager:addMidcast("Helldive",              1, {})
        manager:addMidcast("Feather Storm",         1, {})
        manager:addMidcast("Battle Dance",          1, {})
        manager:addMidcast("Queasyshroom",          1, {})
        manager:addMidcast("Power Attack",          1, {})
        manager:addMidcast("Wild Oats",             1, {})
        manager:addMidcast("Sprout Smack",          1, {})
        manager:addMidcast("Foot Kick",             1, {})

    end

    do -- Physical Spells - Accuracy.
        manager:addMidcast("Delta Thrust",          2, {})
        manager:addMidcast("Barbed Crescent",       2, {})
        manager:addMidcast("Heavy Strike",          2, {})
        manager:addMidcast("Thrashing Assault",     2, {})
        manager:addMidcast("Empty Thrash",          2, {})
        manager:addMidcast("Sickle Slash",          2, {})
        manager:addMidcast("Paralyzing Triad",      2, {})
        manager:addMidcast("Cannonball",            2, {})
        manager:addMidcast("Saurian Slide",         2, {})
        manager:addMidcast("Sweeping Gouge",        2, {})
        manager:addMidcast("Sinker Drill",          2, {})
        manager:addMidcast("Glutinous Dart",        2, {})
        manager:addMidcast("Amorphic Spikes",       2, {})
        manager:addMidcast("Quadrastrike",          2, {})
        manager:addMidcast("Heavy Strike",          2, {})
        manager:addMidcast("Delta Thrust",          2, {})
        manager:addMidcast("Quad. Continuum",       2, {})
        manager:addMidcast("Cannonball",            2, {})
        manager:addMidcast("Benthic Typhoon",       2, {})
        manager:addMidcast("Whirl of Rage",         2, {})
        manager:addMidcast("Vanity Dive",           2, {})
        manager:addMidcast("Goblin Rush",           2, {})
        manager:addMidcast("Final Sting",           2, {})
        manager:addMidcast("Vertical Cleave",       2, {})
        manager:addMidcast("Ram Charge",            2, {})
        manager:addMidcast("Sub-zero Smash",        2, {})
        manager:addMidcast("Disseverment",          2, {})
        manager:addMidcast("Asuran Claws",          2, {})
        manager:addMidcast("Hysteric Barrage",      2, {})
        manager:addMidcast("Spinal Cleave",         2, {})
        manager:addMidcast("Frenetic Rip",          2, {})
        manager:addMidcast("Frypan",                2, {})
        manager:addMidcast("Hydro Shot",            2, {})
        manager:addMidcast("Body Slam",             2, {})
        manager:addMidcast("Seedspray",             2, {})
        manager:addMidcast("Death Scissors",        2, {})
        manager:addMidcast("Spiral Spin",           2, {})
        manager:addMidcast("Dimensional Death",     2, {})
        manager:addMidcast("Mandibular Bite",       2, {})
        manager:addMidcast("Terror Touch",          2, {})
        manager:addMidcast("Uppercut",              2, {})
        manager:addMidcast("Jet Stream",            2, {})
        manager:addMidcast("Pinecone Bomb",         2, {})
        manager:addMidcast("Smite of Rage",         2, {})
        manager:addMidcast("Grand Slam",            2, {})
        manager:addMidcast("Screwdriver",           2, {})
        manager:addMidcast("Claw Cyclone",          2, {})
        manager:addMidcast("Bludgeon",              2, {})
        manager:addMidcast("Helldive",              2, {})
        manager:addMidcast("Feather Storm",         2, {})
        manager:addMidcast("Battle Dance",          2, {})
        manager:addMidcast("Queasyshroom",          2, {})
        manager:addMidcast("Power Attack",          2, {})
        manager:addMidcast("Wild Oats",             2, {})
        manager:addMidcast("Sprout Smack",          2, {})
        manager:addMidcast("Foot Kick",             2, {})

    end

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {},
    {
        ["Burst Affinity"] = {
        }
    })
    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged(manager.__CONST.DEFAULT, 1, {})

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