local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    local capes = {

        ['PET - PHYSICAL']      = {},
        ['PET - MAGICAL']       = { name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','Pet: Haste+10','Phys. dmg. taken-10%',}},
        ['PET - HASTE']         = { name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','Pet: Haste+10','Phys. dmg. taken-10%',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Nirvana', equip=false, set={main="Nirvana",sub="Elan Strap +1"}},
        {name='Grida',   equip=false, set={main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},sub="Elan Strap +1"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        {name="Movement Speed", set={
            ammo="Sancus Sachet +1",
            head="Bunzi's Hat",
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands="Asteria Mitts +1",
            legs="Assid. Pants +1",
            feet="Herald's Gaiters",
            neck="Caller's Pendant",
            waist="Fucho-no-obi",
            left_ear="Eabani Earring",
            right_ear="Evans Earring",
            left_ring="Defending Ring",
            right_ring="Stikini Ring +1",
            back="Moonlight Cape",
        }},

        {name="Damage Taken", set={
            ammo="Sancus Sachet +1",
            head="Bunzi's Hat",
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands="Asteria Mitts +1",
            legs="Assid. Pants +1",
            feet="Baaya. Sabots +1",
            neck="Caller's Pendant",
            waist="Fucho-no-obi",
            left_ear="Eabani Earring",
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
        {name="Pet - Trash", set={
            ammo="Sancus Sachet +1",
            head="Bunzi's Hat",
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands="Asteria Mitts +1",
            legs="Assid. Pants +1",
            feet="Baaya. Sabots +1",
            neck="Caller's Pendant",
            waist="Fucho-no-obi",
            left_ear="Eabani Earring",
            right_ear="Evans Earring",
            left_ring="Defending Ring",
            right_ring="Stikini Ring +1",
            back="Moonlight Cape",
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
        {ammo="Sapience Orb",
        head="Bunzi's Hat",
        body="Inyanga Jubbah +2",
        hands="Bunzi's Gloves",
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Warder's Charm +1",
        waist="Witful Belt",
        left_ear="Malignance Earring",
        right_ear="Loquac. Earring",
        left_ring="Defending Ring",
        right_ring="Naji's Loop",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','"Fast Cast"+10',}},},

        ["BloodPactRage"] =
        {ammo="Sancus Sachet +1",
        head="Baayami Hat",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Baayami Slops",
        feet="Baaya. Sabots +1",
        neck="Warder's Charm +1",
        waist="Kobo Obi",
        left_ear="Andoaa Earring",
        right_ear="Evans Earring",
        left_ring="Defending Ring",
        right_ring="Stikini Ring +1",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},},

        ["BloodPactWard"] =
        {ammo="Sancus Sachet +1",
        head="Baayami Hat",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Baayami Slops",
        feet="Baaya. Sabots +1",
        neck="Warder's Charm +1",
        waist="Kobo Obi",
        left_ear="Andoaa Earring",
        right_ear="Evans Earring",
        left_ring="Defending Ring",
        right_ring="Stikini Ring +1",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},},

    }
    
    -- [[ MIDCAST SETS ]] 
    sets["Midcast"] = {

        -- Midcast: Attack Mode sets.
        ["Attack"] = {

            ["Physical"] =
            {main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            ammo="Sancus Sachet +1",
            head={ name="Helios Band", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            body="Con. Doublet +3",
            hands={ name="Merlinic Dastanas", augments={'Pet: Attack+19 Pet: Rng.Atk.+19','Blood Pact Dmg.+9','Pet: STR+3','Pet: "Mag.Atk.Bns."+7',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            neck={ name="Smn. Collar +2", augments={'Path: A',}},
            waist="Incarnation Sash",
            left_ear="Lugalbanda Earring",
            right_ear="Gelos Earring",
            left_ring="C. Palug Ring",
            right_ring="Varar Ring +1",
            back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','"Fast Cast"+10',}},},

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
            left_ear="Gelos Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1"},

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
            right_ring="Varar Ring +1"},

            ["Ward"] =
            {},

            ["Debuff"] =
            {},

        },

        -- Midcast: Accuracy Mode sets.
        ["Accuracy"] = {

            ["Physical"] =
            {main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Helios Band", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            body="Con. Doublet +3",
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
            neck="Smn. Collar +1",
            waist="Incarnation Sash",
            left_ear="Kyrene's Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1"},

            ["Magical"] =
            {main={ name="Grioavolr", augments={'Blood Pact Dmg.+10','Pet: INT+6','Pet: Mag. Acc.+15','Pet: "Mag.Atk.Bns."+25',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Enticer's Pants", augments={'MP+5','Pet: Mag. Acc.+3',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +2", augments={'Path: A',}},
            waist="Incarnation Sash",
            left_ear="Gelos Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAGICAL']},

            ["Hybrid"] =
            {ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: "Mag.Atk.Bns."+10','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +2", augments={'Path: A',}},
            waist="Incarnation Sash",
            left_ear="Gelos Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back=capes['PET - MAGICAL']},

            ["Ward"] =
            {main="Espiritus",
            sub="Vox Grip",
            head="Baayami Hat",
            body="Baayami Robe",
            hands="Baayami Cuffs",
            legs="Baayami Slops",
            feet="Baaya. Sabots +1",
            neck="Warder's Charm +1",
            waist="Kobo Obi",
            left_ear="Andoaa Earring",
            right_ear="Evans Earring",
            left_ring="Defending Ring",
            right_ring="Stikini Ring +1",
            back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},},

            ["Debuff"] =
            {},

        },

        -- Midcast Sets.
        ["Cure"] =
        {
            head="Bunzi's Hat",
            body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
            hands="Inyan. Dastanas +2",
            legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
            feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
            neck={ name="Smn. Collar +2", augments={'Path: A',}},
            waist="Bishop's Sash",
            left_ear="Eabani Earring",
            right_ear="Evans Earring",
            left_ring="Naji's Loop",
            right_ring="Stikini Ring +1",
            back="Fi Follet Cape",    
            
            ["Protect"] = {
                body="Nyame Mail"
            },

            ["Protect:Shell"] = {
                body="Shango Robe"
            },
        },

        ["Curaga"] =
        {head="Bunzi's Hat",
        body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        hands="Inyan. Dastanas +2",
        legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        neck={ name="Smn. Collar +2", augments={'Path: A',}},
        waist="Bishop's Sash",
        left_ear="Eabani Earring",
        right_ear="Evans Earring",
        left_ring="Naji's Loop",
        right_ring="Stikini Ring +1",
        back="Fi Follet Cape",},

    }

    -- [[ MIDCAST CLONES ]] 
    sets["Midcast"]["Cure II"]              = sets["Midcast"]["Cure"]
    sets["Midcast"]["Cure III"]             = sets["Midcast"]["Cure"]
    sets["Midcast"]["Cure IV"]              = sets["Midcast"]["Cure"]

    sets["Midcast"]["Curaga II"]            = sets["Midcast"]["Curaga"]
    sets["Midcast"]["Curaga III"]           = sets["Midcast"]["Curaga"]

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