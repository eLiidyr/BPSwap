local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DA - DEX']        = { name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
        ['TORCLEAVER']      = { name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+3','Weapon skill damage +10%',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Test Sword', equip=false, set={main="Mutsunokami"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        -- MOVEMENT SPEED+.
        {name="Movement Speed", set={ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck="Warder's Charm +1",
        waist="Carrier's Sash",
        left_ear="Thrud Earring",
        right_ear="Eabani Earring",
        left_ring="Defending Ring",
        right_ring="Niqmaddu Ring",
        back="Moonlight Cape",
        }},

        -- DAMAGE TAKEN SET.
        {name="Damage Taken", set={ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck="Warder's Charm +1",
        waist="Carrier's Sash",
        left_ear="Thrud Earring",
        right_ear="Eabani Earring",
        left_ring="Defending Ring",
        right_ring="Niqmaddu Ring",
        back="Moonlight Cape",
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        -- Basic
        {name="DA - Trash", set={ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Flam. Gambieras +2",
        neck="Abyssal Beads +2",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Brutal Earring",
        right_ear="Telos Earring",
        left_ring="Chirich Ring +1",
        right_ring="Niqmaddu Ring",
        back=capes['DA - DEX'],
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        -- Basic
        {name="DA - Trash", set={ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Flam. Gambieras +2",
        neck="Abyssal Beads +2",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Brutal Earring",
        right_ear="Telos Earring",
        left_ring="Chirich Ring +1",
        right_ring="Niqmaddu Ring",
        back=capes['DA - DEX'],
        }},
     
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
        {},

        ["Torcleaver"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Sakpata's Helm",
                body="Sakpata's Plate",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck="Abyssal Beads +2",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['TORCLEAVER']},
            },

        },
        ["Cross Reaper"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Sakpata's Helm",
                body="Sakpata's Plate",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck="Abyssal Beads +2",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['TORCLEAVER']},
            },

        },
        ["Savage Blade"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Sakpata's Helm",
                body="Sakpata's Plate",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck="Abyssal Beads +2",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['TORCLEAVER']},
            },

        },
        ["Resolution"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Sakpata's Helm",
                body="Sakpata's Plate",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck="Abyssal Beads +2",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - DEX']},
            },

        },
    
    }
        
    sets["WeaponSkill"]["Accuracy"] = {
        
        ["Default"] =
        {},

        -- Upheaval.
        ["Upheaval"] = {

            ["Default"] =
            {
                {tp=0, set={}},
            },
            ["Mighty Strikes"] =
            {
                {tp=0, set={}},
            },
            ["Brazen Rush"] =
            {
                {tp=0, set={}},
            },
            ["Mighty Strikes Brazen Rush"] =
            {
                {tp=0, set={}},
            },
            ["Hasso"] =
            {
                {tp=0, set={}},
            },

            ["Hasso Defender"] =
            {
                {tp=0, set={}},
            },

        },
    
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
        bp.settings["WS Options"] = {'Hasso','Defender','Mighty Strikes','Brazen Rush','Chaos Roll'}

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