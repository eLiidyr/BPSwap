local profile = {build = function(manager)
    manager.x, manager.y = 2000, 15 -- Display Position

    -- Capes:

    -- Weapons: (name, equip, set)
    manager:addWeapon("Naegling/Maxentius", true, {main="Naegling",sub="Maxentius"})
    manager:addWeapon("Naegling/Sakpata",   true, {main="Naegling",sub="Sakpata's Sword"})
    manager:addWeapon("Bunzi/Maxentius",    true, {main="Bunzi's Rod",sub="Maxentius"})

    -- Idle: (name, set, buffed)
    manager:addIdle("DT - Speed",   {ammo="Staunch Tathlum +1",head={ name="Nyame Helm", augments={'Path: B',}},body={ name="Nyame Mail", augments={'Path: B',}},hands={ name="Nyame Gauntlets", augments={'Path: B',}},legs="Carmine Cuisses +1",feet="Nyame Sollerets",neck="Warder's Charm +1",waist="Carrier's Sash",left_ear="Odnowa Earring +1",right_ear="Eabani Earring",left_ring="Defending Ring",right_ring="Stikini Ring +1",back="Moonlight Cape",})
    manager:addIdle("DT - Max",     {ammo="Staunch Tathlum +1",head={ name="Nyame Helm", augments={'Path: B',}},body={ name="Nyame Mail", augments={'Path: B',}},hands={ name="Nyame Gauntlets", augments={'Path: B',}},legs="Nyame Flanchard",feet="Nyame Sollerets",neck="Warder's Charm +1",waist="Carrier's Sash",left_ear="Odnowa Earring +1",right_ear="Eabani Earring",left_ring="Defending Ring",right_ring="Stikini Ring +1",back="Moonlight Cape",})
    manager:addIdle("DT - Refresh", {ammo="Staunch Tathlum +1",head={ name="Nyame Helm", augments={'Path: B',}},body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},hands={ name="Nyame Gauntlets", augments={'Path: B',}},legs="Nyame Flanchard",feet="Nyame Sollerets",neck="Warder's Charm +1",waist="Fucho-no-Obi",left_ear="Odnowa Earring +1",right_ear="Eabani Earring",left_ring="Stikini Ring +1",right_ring="Stikini Ring +1",back="Moonlight Cape",})

    -- Engaged: (name, mode, set, buffed)
    manager:addEngaged("Tizona - Trash",    1, {ammo={ name="Coiste Bodhar", augments={'Path: A',}},head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},feet="Malignance Boots",neck="Mirage Stole +2",waist={ name="Sailfi Belt +1", augments={'Path: A',}},left_ear="Telos Earring",right_ear="Suppanomimi",left_ring="Chirich Ring +1",right_ring="Petrov Ring",back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},})
    manager:addEngaged("Tizona - Hybrid",   1, {ammo={ name="Coiste Bodhar", augments={'Path: A',}},head="Malignance Chapeau",body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},hands="Malignance Gloves",legs="Malignance Tights",feet="Malignance Boots",neck="Mirage Stole +2",waist={ name="Sailfi Belt +1", augments={'Path: A',}},left_ear="Telos Earring",right_ear="Suppanomimi",left_ring="Chirich Ring +1",right_ring="Defending Ring",back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},})

    -- Precast: (name, set, buffed)
    manager:addPrecast("Fast Cast", {ammo="Sapience Orb",head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},body="Dread Jupon",hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},legs="Aya. Cosciales +2",feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},neck="Warder's Charm +1",waist="Witful Belt",left_ear="Loquac. Earring",right_ear="Eabani Earring",left_ring="Defending Ring",right_ring="Naji's Loop",back="Moonlight Cape",})
    manager:addPrecast("Elemental Magic",   manager.sets.precast['Fast Cast'])
    manager:addPrecast("Enfeebling Magic",  manager.sets.precast['Fast Cast'])
    manager:addPrecast("Enhancing Magic",   manager.sets.precast['Fast Cast'])
    manager:addPrecast("Healing Magic",     manager.sets.precast['Fast Cast'])
    manager:addPrecast("Divine Magic",      manager.sets.precast['Fast Cast'])
    manager:addPrecast("Dark Magic",        manager.sets.precast['Fast Cast'])
    manager:addPrecast("Blue Magic",        manager.sets.precast['Fast Cast'])
    manager:addPrecast("Ninjutsu",          manager.sets.precast['Fast Cast'])

    -- Midcast: (name, mode, set, buffed)

    -- Midnuke: (name, mode, set, buffed)
    manager:addMidnuke("Nuke - Basic", 1, {ammo="Ghastly Tathlum",head={ name="Nyame Helm", augments={'Path: B',}},body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},neck="Mirage Stole +2",waist="Eschan Stone",left_ear="Friomisi Earring",right_ear="Eabani Earring",left_ring="Shiva Ring +1",right_ring="Stikini Ring +1",back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},},
    {
        ["Burst Affinity"] = {
            main="Qutrub Knife"
        }
    })

    manager:addMidnuke("Nuke - Naked", 1, manager.__CONST.NAKED)

    -- Ranged: (weapon, mode, set, buffed)
    manager:addRanged("Armageddon", 1, {basic_pew_pew},
    {
        ["Aftermath Lv. 3"] = {
            
        }
    })

    -- Weaponskills: (name, mode, tp, set, buffed)
    manager:addWeaponSkill("Savage Blade", 1, {ammo={ name="Coiste Bodhar", augments={'Path: A',}},head={ name="Nyame Helm", augments={'Path: B',}},body={ name="Nyame Mail", augments={'Path: B',}},hands={ name="Nyame Gauntlets", augments={'Path: B',}},legs="Nyame Flanchard",feet="Nyame Sollerets",neck="Mirage Stole +2",waist={ name="Sailfi Belt +1", augments={'Path: A',}},left_ear="Telos Earring",right_ear="Ishvara Earring",left_ring="Epaminondas's Ring",right_ring="Ilabrat Ring",back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},
    {
        ["Defense Boost"] = {
            body="Gleti's Cuirass"
        }
    })

end}
return profile