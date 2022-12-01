local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DW']   = { name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+9','"Dual Wield"+10','Phys. dmg. taken-10%',}},
        ['SANGUINE'] = { name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Dual Wield - Normal', equip=true, set={main="Crocea Mors",sub="Daybreak"}},
        {name='Dual Wield - Savage', equip=true, set={main="Naegling",sub="Gleti's Knife"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        -- MOVEMENT SPEED+.
        {name="Movement Speed", set={
            ammo="Staunch Tathlum +1",
            head="Bunzi's Hat",
            body="Nyame Mail",
            hands="Nyame Gauntlets",
            legs="Bunzi's Pants",
            feet="Bunzi's Sabots",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            right_ear="Calamitous Earring",
            left_ring="Stikini Ring +1",
            right_ring="Defending Ring",
            back="Moonlight Cape",
        }},

        -- DAMAGE TAKEN SET.
        {name="Damage Taken", set={
            ammo="Staunch Tathlum +1",
            head="Bunzi's Hat",
            body="Nyame Mail",
            hands="Nyame Gauntlets",
            legs="Bunzi's Pants",
            feet="Bunzi's Sabots",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            right_ear="Calamitous Earring",
            left_ring="Stikini Ring +1",
            right_ring="Defending Ring",
            back="Moonlight Cape",
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        {name="Dual Wield - Normal", set={
            ammo="Coiste Bodhar",
            head="Malignance Chapeau",
            body="Malignance Tabard",
            hands="Aya. Manopolas +2",
            legs="Malignance Tights",
            feet="Malignance Boots",
            neck="Anu Torque",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Sherida Earring",
            right_ear="Telos Earring",
            left_ring="Petrov Ring",
            right_ring="Chirich Ring +1",
            back=capes['DW'],
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
        ["Default"] =
        {ammo="Ghastly Tathlum",
        head="Pixie Hairpin +1",
        body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="Jhakri Cuffs +2",
        legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Dls. Torque +2",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        left_ring="Stikini Ring +1",
        right_ring="Chirich Ring +1",
        back=capes["SANGUINE"]},

        ["Sanguine Blade"] =
        {ammo="Ghastly Tathlum",
        head="Pixie Hairpin +1",
        body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="Jhakri Cuffs +2",
        legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Dls. Torque +2",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        left_ring="Stikini Ring +1",
        right_ring="Chirich Ring +1",
        back=capes["SANGUINE"]},

        ["Seraph Blade"] =
        {ammo="Ghastly Tathlum",
        head="Jhakri Coronal +2",
        body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="Jhakri Cuffs +2",
        legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Dls. Torque +2",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        left_ring="Stikini Ring +1",
        right_ring="Chirich Ring +1",
        back=capes["SANGUINE"]},

        ["Savage Blade"] =
        {ammo="Coiste Bodhar",
        head={ name="Viti. Chapeau +2", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Nyame Mail",
        hands="Jhakri Cuffs +2",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Anu Torque",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Ishvara Earring",
        left_ring="Ilabrat Ring",
        right_ring="Petrov Ring",
        back=capes["SANGUINE"]},
    
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
    sets["Ranged"]["Default"]["Attack"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }
    
    sets["Ranged"]["Default"]["Accuracy"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

    -- Critical Shots.
    sets["Ranged"]["Critical"]["Attack"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

    sets["Ranged"]["Critical"]["Accuracy"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

    -- Double Shot.
    sets["Ranged"]["Double Shot"]["Attack"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

    sets["Ranged"]["Double Shot"]["Accuracy"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

    -- Triple Shot.
    sets["Ranged"]["Triple Shot"]["Attack"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

    sets["Ranged"]["Triple Shot"]["Accuracy"] = {
        
        -- Basic Ranged Shots.
        {name="Trash", set={}},
        
        -- Store-TP Shots.
        {name="Store-TP", set={}},
        
        -- Reduced Enmity Build.
        {name="Reduced Enmity", set={}},
        
        -- Hybrid Ranged Build.
        {name="Hybrid Shots", set={}},
        
    }

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

    }
    
    -- [[ MIDCAST SETS ]] 
    sets["Midcast"] = {

        -- Midcast: Attack Mode sets.
        ["Attack"] = {

        },

        -- Midcast: Accuracy Mode sets.
        ["Accuracy"] = {

        },

        -- Midcast Sets.
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

    -- [[ USER DEFINED FUNCTIONS ]] 
    user.settings = function(bp)
        bp.settings["WS Options"] = {}
        bp.settings['Auto Swaps'] = false

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