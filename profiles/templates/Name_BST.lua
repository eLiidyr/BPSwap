local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position

    -- Capes: (name, set)

    -- Weapons: (name, equip, set)

    -- Idle: (name, set, buffed)

    -- Engaged: (name, mode, set, buffed)

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

    -- Ranged: (weapon, mode, set, buffed)

    -- Weaponskills: (name, mode, tp, set, buffed)

end}
return profile