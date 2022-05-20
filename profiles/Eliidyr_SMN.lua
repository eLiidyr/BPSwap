local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['PET - ATT']   = { name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','"Fast Cast"+10',}},
        ['PET - MAB']   = { name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+5',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Test Sword', equip=false, set={main="Mutsunokami"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        -- MOVEMENT SPEED+.
        {name="Movement Speed", set={main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
        sub="Vox Grip",
        ammo="Sancus Sachet +1",
        head="Caller's Horn +1",
        body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        hands="Asteria Mitts +1",
        legs="Assid. Pants +1",
        feet="Herald's Gaiters",
        neck="Caller's Pendant",
        waist="Fucho-no-Obi",
        left_ear="Enmerkar Earring",
        right_ear="Evans Earring",
        left_ring="Defending Ring",
        right_ring="Stikini Ring +1",
        back="Moonlight Cape",
        }},

        -- DAMAGE TAKEN SET.
        {name="Damage Taken", set={main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
        sub="Vox Grip",
        ammo="Sancus Sachet +1",
        head="Caller's Horn +1",
        body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        hands="Asteria Mitts +1",
        legs="Assid. Pants +1",
        feet="Baayami Sabots +1",
        neck="Caller's Pendant",
        waist="Fucho-no-Obi",
        left_ear="Enmerkar Earring",
        right_ear="Evans Earring",
        left_ring="Defending Ring",
        right_ring="Stikini Ring +1",
        back="Moonlight Cape",
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        -- Pet: Trash Build
        {name="Pet - Trash", set={main="Sakpata's Fists",
        range="Animator P +1",
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
        neck="Adad Amulet",
        waist="Klouskap Sash",
        left_ear="Kyrene's Earring",
        right_ear="Tuisto Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back="Visucius's Mantle",
        }},

        -- Pet: Haste Build
        {name="Pet - Haste", set={main="Sakpata's Fists",
        range="Animator P +1",
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
        neck="Adad Amulet",
        waist="Klouskap Sash",
        left_ear="Kyrene's Earring",
        right_ear="Tuisto Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back="Visucius's Mantle",            
        }},

        -- Pet: Haste Build
        {name="Pet - STP", set={main="Sakpata's Fists",
        range="Animator P +1",
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
        neck="Adad Amulet",
        waist="Klouskap Sash",
        left_ear="Kyrene's Earring",
        right_ear="Tuisto Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back="Visucius's Mantle",
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        -- Pet: Trash Build
        {name="Pet - Trash", set={}},

        -- Pet: Haste Build
        {name="Pet - Haste", set={}},

        -- Pet: Haste Build
        {name="Pet - STP", set={}},
     
    }
    
    
    -- [[ MIDNUKE SETS ]] 
    sets["Midnuke"] = {}
    sets["Midnuke"]["Attack"] = {

        -- Free Nuke Build.
        {name="Free Nuke", set={}},
        
        -- Magic Burst Build.
        {name="Magic Burst", set={}},

        -- Vagary Nuking.
        {name="Vagary Nukes", set={}},
        
        -- Nakid Nuking.
        {name="Nakid Nukes", set={main=empty,sub=empty,range=empty,ammo=empty,head=empty,neck=empty,ear1=empty,ear2=empty,body=empty,hands=empty,ring1=empty,ring2=empty,back=empty,waist=empty,legs=empty,feet=empty}},
        
    }
    
    sets["Midnuke"]["Accuracy"] = {

        -- Free Nuke Build.
        {name="Free Nuke", set={}},
        
        -- Magic Burst Build.
        {name="Magic Burst", set={}},

        -- Vagary Nuking.
        {name="Vagary Nukes", set={}},
        
        -- Nakid Nuking.
        {name="Nakid Nukes", set={main=empty,sub=empty,range=empty,ammo=empty,head=empty,neck=empty,ear1=empty,ear2=empty,body=empty,hands=empty,ring1=empty,ring2=empty,back=empty,waist=empty,legs=empty,feet=empty}},
        
    }
    
    -- [[ WEAPONSKILL SETS ]] 
    sets["WeaponSkill"] = {}    
    sets["WeaponSkill"]["Attack"] = {
        
        -- Default WS Set.
        ["Default"] = {},
    
    }
        
    sets["WeaponSkill"]["Accuracy"] = {
        
        -- Default WS Set.
        ["Default"] = {},
    
    }
    
    -- [[ RANGED SETS ]] 
    sets["Ranged"] = {}
    sets["Ranged"]["Default"] = {}
    sets["Ranged"]["Critical"] = {}
    sets["Ranged"]["Double Shot"] = {}
    sets["Ranged"]["Triple Shot"] = {}

    -- Default Shots.
    sets["Ranged"]["Default"]["Attack"]         = {{name="Trash", set={}}}
    sets["Ranged"]["Default"]["Accuracy"]       = {{name="Trash", set={}}}
    sets["Ranged"]["Critical"]["Attack"]        = {{name="Trash", set={}}}
    sets["Ranged"]["Critical"]["Accuracy"]      = {{name="Trash", set={}}}
    sets["Ranged"]["Double Shot"]["Attack"]     = {{name="Trash", set={}}}
    sets["Ranged"]["Double Shot"]["Accuracy"]   = {{name="Trash", set={}}}
    sets["Ranged"]["Triple Shot"]["Attack"]     = {{name="Trash", set={}}}
    sets["Ranged"]["Triple Shot"]["Accuracy"]   = {{name="Trash", set={}}}

    -- [[ PRECAST SETS ]] 
    sets["Precast"] = {

        ["Default"] = 
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        feet="Telchine Pigaches",
        waist="Embla Sash",
        back=capes['FC']},
        
        ["Divine Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Healing Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Enhancing Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Enfeebling Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Elemental Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Dark Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Summoning Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Blue Magic"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Ninjutsu"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},
        
        ["Geomancy"] =
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Witful Belt",
        back=capes['FC']},

        ["Singing"] = 
        {main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        range={ name="Linos", augments={'"Fast Cast"+5',}},
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        feet={ name="Telchine Pigaches", augments={'Song spellcasting time -6%',}},
        waist="Embla Sash",
        back=capes['FC']},

        ["BloodPactRage"] =
        {main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        ammo="Sancus Sachet +1",
        head="Caller's Horn +1",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Bunzi's Pants",
        feet="Baayami Sabots +1",
        neck="Caller's Pendant",
        waist="Lucidity Sash",
        left_ear="Eabani Earring",
        right_ear="Evans Earring",
        left_ring="Fervor Ring",
        right_ring="Stikini Ring +1",
        back="Moonlight Cape",},

        ["BloodPactWard"] =
        {main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        ammo="Sancus Sachet +1",
        head="Caller's Horn +1",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Bunzi's Pants",
        feet="Baayami Sabots +1",
        neck="Caller's Pendant",
        waist="Lucidity Sash",
        left_ear="Eabani Earring",
        right_ear="Evans Earring",
        left_ring="Fervor Ring",
        right_ring="Stikini Ring +1",
        back="Moonlight Cape",},

    }
    
    -- [[ MIDCAST SETS ]] 
    sets["Midcast"] = {

        -- Midcast: Attack Mode sets.
        ["Attack"] = {

            ["Divine Magic"] = {},
            ["Enfeebling Magic"] = {},
            ["Elemental Magic"] = {},
            ["Dark Magic"] = {},
            ["Blue Magic"] = {},
            ["Ninjutsu"] = {},

            ["Physical"] =
            {main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Helios Band", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            body="Con. Doublet +2",
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="C. Palug Ring",
            right_ring="Varar Ring +1",
            back=capes['PET - ATT']},

            ["Magical"] =
            {main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Enticer's Pants", augments={'MP+5','Pet: Mag. Acc.+3',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Lucidity Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAB']},

            ["Hybrid"] =
            {main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+5','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+24','DMG:+17',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAB']},

            ["Ward"] =
            {},

            ["Debuff"] =
            {},

        },

        -- Midcast: Accuracy Mode sets.
        ["Accuracy"] = {

            ["Divine Magic"] = {},
            ["Enfeebling Magic"] = {},
            ["Elemental Magic"] = {},
            ["Dark Magic"] = {},
            ["Blue Magic"] = {},
            ["Ninjutsu"] = {},

            ["Physical"] =
            {main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Helios Band", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            body="Con. Doublet +2",
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - ATT']},

            ["Magical"] =
            {main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+5','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+24','DMG:+17',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Enticer's Pants", augments={'MP+5','Pet: Mag. Acc.+3',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAB']},

            ["Hybrid"] =
            {main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+5','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+24','DMG:+17',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAB']},

            ["Ward"] =
            {},

            ["Debuff"] =
            {},

        },

        -- Midcast Sets.
        ["Physical"] =
            {main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Helios Band", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            body="Con. Doublet +2",
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - ATT']},

            ["Magical"] =
            {main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+5','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+24','DMG:+17',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Enticer's Pants", augments={'MP+5','Pet: Mag. Acc.+3',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAB']},

            ["Hybrid"] =
            {main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+5','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+24','DMG:+17',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAB']},

            ["Ward"] =
            {},

            ["Debuff"] =
            {},

        ["Cure"] =
        {main="Chatoyant Staff",
        sub="Curatio Grip",
        range={ name="Linos", augments={'Mag. Evasion+8','"Cure" potency +3%','MND+4',}},
        head={ name="Kaykaus Mitra +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        body="Bunzi's Robe",
        hands="Inyan. Dastanas +2",
        legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        waist="Bishop's Sash",
        left_ear="Beatific Earring",
        right_ear="Healing Earring",
        left_ring="Menelaus's Ring",
        right_ring="Sirona's Ring",
        back=capes['CURE']},

        ["Curaga"] =
        {main="Chatoyant Staff",
        sub="Curatio Grip",
        range={ name="Linos", augments={'Mag. Evasion+8','"Cure" potency +3%','MND+4',}},
        head={ name="Kaykaus Mitra +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        body="Bunzi's Robe",
        hands={ name="Kaykaus Cuffs +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        feet={ name="Kaykaus Boots +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
        waist="Bishop's Sash",
        left_ear="Beatific Earring",
        right_ear="Regal Earring",
        left_ring="Menelaus's Ring",
        right_ring="Sirona's Ring",
        back=capes['CURE']},

    }

    -- [[ MIDCAST CLONES ]] 
    sets["Midcast"]["Cure II"]              = sets["Midcast"]["Cure"]
    sets["Midcast"]["Cure III"]             = sets["Midcast"]["Cure"]
    sets["Midcast"]["Cure IV"]              = sets["Midcast"]["Cure"]

    sets["Midcast"]["Curaga II"]            = sets["Midcast"]["Curaga"]
    sets["Midcast"]["Curaga III"]           = sets["Midcast"]["Curaga"]


    -- [[ COMBINED SETS ]] 
    sets["Name"] = set_combine(sets["Name"],
    {})

    -- [[ USER DEFINED FUNCTIONS ]] 
    user.settings = function(bp)

    end

    user.Precast = function(bp, spell)
        local enabled = false
        
        if enabled and bp and spell then
            
        end
        return enabled

    end

    user.Midcast = function(bp, spell)
        local enabled = false

        if enabled and bp and spell then

        end
        return enabled

    end

    user.Aftercast = function(bp, spell)
        local enabled = false

        if enabled and bp and spell then

        end
        return enabled

    end

    user.statusChange = function(bp, new, old)
        local enabled = false

        if enabled and bp and new and old then

        end
        return enabled

    end

    user.buffChange = function(bp, name, gain, details)
        local enabled = false
        
        if enabled and bp and name then

        end
        return enabled

    end

    user.petChange = function(bp, pet, gain)
        local enabled = false

        if enabled and bp and pet then

        end
        return enabled

    end

    user.petMidcast = function(bp, spell)
        local enabled = false

        if enabled and bp and spell then

        end
        return enabled

    end

    user.petAftercast = function(bp, spell)
        local enabled = false

        if enabled and bp and spell then

        end
        return enabled

    end

    user.petStatusChange = function(bp, new, old)
        local enabled = false

        if enabled and bp and new and old then

        end
        return enabled

    end

    user.commands = function(bp, command)
        local enabled = false

        if enabled and bp and command then

        end
        return enabled

    end

    -- DO NOT CHANGE.
    user.setPOS = function()
        return x, y
    end
    
    return sets, user
    
end
return gear.new()