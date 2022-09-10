local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DT']   = { name="Intarabus's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
        ['FC']   = { name="Intarabus's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
        ['CHR']  = { name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
        ['CURE'] = { name="Intarabus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','Enmity-10','Phys. dmg. taken-10%',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Spell Farming', equip=true, set={main="Heartbeater",sub=empty}},
        {name='Melee', equip=true, set={main="Naegling",sub="Sakpata's Sword"}},
        {name='Nukes', equip=true, set={main="Bunzi's Rod",sub="Sakpata's Sword"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        {name="Damage Taken", set={
            ammo="Staunch Tathlum +1",
            head="Nyame Helm",
            body="Gleti's Cuirass",
            hands="Nyame Gauntlets",
            legs="Nyame Flanchard",
            feet="Nyame Sollerets",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            left_ring="Defending Ring",
            right_ring="Warden's Ring",
            back="Moonlight Cape",
        }},

        {name="Movement Speed", set={
            ammo="Staunch Tathlum +1",
            head="Nyame Helm",
            body="Gleti's Cuirass",
            hands="Nyame Gauntlets",
            legs="Carmine Cuisses +1",
            feet="Nyame Sollerets",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            left_ring="Defending Ring",
            right_ring="Warden's Ring",
            back="Moonlight Cape",
        }},

        {name="Idle Refresh", set={
            ammo="Staunch Tathlum +1",
            head={ name="Nyame Helm", augments={'Path: B',}},
            body="Jhakri Robe +2",
            hands="Malignance Gloves",
            legs="Carmine Cuisses +1",
            feet="Nyame Sollerets",
            neck="Warder's Charm +1",
            waist="Fucho-no-Obi",
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
    
        -- Trash Build
        {name="Trash - TP", set={
            ammo={ name="Coiste Bodhar", augments={'Path: A',}},
            head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
            body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
            hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
            legs="Malignance Tights",
            feet="Malignance Boots",
            neck="Warder's Charm +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Telos Earring",
            right_ear="Suppanomimi",
            left_ring="Petrov Ring",
            right_ring="Chirich Ring +1",
            back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
        }},

        -- Hybrid Build
        {name="Hybrid - TP", set={
            ammo="Coiste Bodhar",
            head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
            body="Gleti's Cuirass",
            hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
            legs="Malignance Tights",
            feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
            neck="Warder's Charm +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Telos Earring",
            right_ear="Mache Earring +1",
            left_ring="Petrov Ring",
            right_ring="Chirich Ring +1",
            back="Moonlight Cape",
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        -- Trash Build
        {name="Trash - TP", set={
            ammo="Coiste Bodhar",
            head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
            body="Gleti's Cuirass",
            hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
            legs="Malignance Tights",
            feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
            neck="Warder's Charm +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Telos Earring",
            right_ear="Mache Earring +1",
            left_ring="Petrov Ring",
            right_ring="Chirich Ring +1",
            back="Moonlight Cape",
        }},

        -- Hybrid Build
        {name="Hybrid - TP", set={
            ammo="Coiste Bodhar",
            head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
            body="Gleti's Cuirass",
            hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
            legs="Malignance Tights",
            feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
            neck="Warder's Charm +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Telos Earring",
            right_ear="Mache Earring +1",
            left_ring="Petrov Ring",
            right_ring="Chirich Ring +1",
            back="Moonlight Cape",
        }},
     
    }
    
    
    -- [[ MIDNUKE SETS ]] 
    sets["Midnuke"] = {}
    sets["Midnuke"]["Attack"] = {

        -- Free Nuke Build.
        {name="Free Nuke", set={
            ammo="Ombre Tathlum +1",
            head="Nyame Helm",
            body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
            hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
            legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
            feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
            neck="Warder's Charm +1",
            waist="Witful Belt",
            left_ear="Friomisi Earring",
            right_ear="Calamitous Earring",
            back="Cornflower Cape",
        }},
        
        -- Magic Burst Build.
        {name="Magic Burst", set={}},

        -- Vagary Nuking.
        {name="Vagary Nukes", set={}},
        
        -- Nakid Nuking.
        {name="Nakid Nukes", set={main=empty,sub=empty,range=empty,ammo=empty,head=empty,neck=empty,ear1=empty,ear2=empty,body=empty,hands=empty,ring1=empty,ring2=empty,back=empty,waist=empty,legs=empty,feet=empty}},
        
    }
    
    sets["Midnuke"]["Accuracy"] = {

        -- Free Nuke Build.
        {name="Free Nuke", set={
            ammo="Ombre Tathlum +1",
            head="Nyame Helm",
            body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
            hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
            legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
            feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
            neck="Warder's Charm +1",
            waist="Witful Belt",
            left_ear="Friomisi Earring",
            right_ear="Calamitous Earring",
            back="Cornflower Cape",
        }},
        
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
        {ammo="Coiste Bodhar",
        head="Nyame Helm",
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Warder's Charm +1",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ishvara Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Ilabrat Ring",
        back="Cornflower Cape",},

        ["Savage Blade"] =
        {ammo={ name="Coiste Bodhar", augments={'Path: A',}},
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands="Jhakri Cuffs +2",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Warder's Charm +1",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ishvara Earring",
        right_ear="Odr Earring",
        left_ring="Ilabrat Ring",
        right_ring="Chirich Ring +1",
        back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},

        ["Sanguine Blade"] =
        {ammo="Ghastly Tathlum",
        head="Jhakri Coronal +1",
        body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Ishvara Earring",
        left_ring="Stikini Ring +1",
        right_ring="Defending Ring",
        back="Cornflower Cape",}
    
    }
        
    sets["WeaponSkill"]["Accuracy"] = {
        
        -- Default WS Set.
        ["Default"] = 
        {ammo="Coiste Bodhar",
        head="Nyame Helm",
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Warder's Charm +1",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ishvara Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Ilabrat Ring",
        back="Cornflower Cape",},
    
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
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Divine Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Healing Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Enhancing Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Enfeebling Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Elemental Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Dark Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Summoning Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Blue Magic"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Ninjutsu"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},
        
        ["Geomancy"] =
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},

        ["Singing"] = 
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        legs="Psycloth Lappas",
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="Witful Belt",
        back="Cornflower Cape",},

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

        },

        -- Midcast: Accuracy Mode sets.
        ["Accuracy"] = {

            ["Divine Magic"] = {},
            ["Enfeebling Magic"] = {},
            ["Elemental Magic"] = {},
            ["Dark Magic"] = {},
            ["Blue Magic"] = {},
            ["Ninjutsu"] = {},

        },

        -- Midcast Sets.
        ["Absolute Terror"] =
        {ammo="Hydrocera",
        head="Nyame Helm",
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ring="Stikini Ring +1",
        back="Cornflower Cape",},

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