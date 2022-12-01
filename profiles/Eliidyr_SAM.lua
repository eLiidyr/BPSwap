local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DT']              = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+1','"Dbl.Atk."+10','Damage taken-5%',}},
        ['DA - STR']        = { name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
        ['WSD - STR']       = { name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Test Sword', equip=false, set={main="Mutsunokami"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        {name="Movement Speed", set={
            ammo="Staunch Tathlum +1",
            head="Mpaca's Cap",
            body="Nyame Mail",
            hands="Mpaca's Gloves",
            legs="Nyame Flanchard",
            feet="Nyame Sollerets",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Thrud Earring",
            right_ear="Eabani Earring",
            left_ring="Niqmaddu Ring",
            right_ring="Defending Ring",
            back="Moonlight Cape",
        }},

        {name="Damage Taken", set={
            ammo="Staunch Tathlum +1",
            head="Mpaca's Cap",
            body="Nyame Mail",
            hands="Mpaca's Gloves",
            legs="Nyame Flanchard",
            feet="Nyame Sollerets",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Thrud Earring",
            right_ear="Eabani Earring",
            left_ring="Niqmaddu Ring",
            right_ring="Defending Ring",
            back="Moonlight Cape",
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        {name="Trash", set={
            ammo="Coiste Bodhar",
            head="Flam. Zucchetto +2",
            body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
            hands="Wakido Kote +2",
            legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
            feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','Attack+25','Crit. hit rate+4%',}},
            neck="Sam. Nodowa +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Kasuga Earring +1",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="High", set={
            ammo="Coiste Bodhar",
            head="Mpaca's Cap",
            body="Mpaca's Doublet",
            hands="Wakido Kote +2",
            legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
            feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','Attack+25','Crit. hit rate+4%',}},
            neck="Sam. Nodowa +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="Hybrid", set={
            ammo="Staunch Tathlum +1",
            head="Ken. Jinpachi +1",
            body="Mpaca's Doublet",
            hands="Wakido Kote +2",
            legs="Ken. Hakama +1",
            feet="Ken. Sune-Ate +1",
            neck="Sam. Nodowa +1",
            waist="Ioskeha Belt +1",
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        {name="Trash", set={
            ammo="Coiste Bodhar",
            head="Flam. Zucchetto +2",
            body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
            hands="Wakido Kote +2",
            legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
            feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','Attack+25','Crit. hit rate+4%',}},
            neck="Sam. Nodowa +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="High", set={
            ammo="Coiste Bodhar",
            head="Mpaca's Cap",
            body="Mpaca's Doublet",
            hands="Wakido Kote +2",
            legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
            feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','Attack+25','Crit. hit rate+4%',}},
            neck="Sam. Nodowa +1",
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="Hybrid", set={
            ammo="Staunch Tathlum +1",
            head="Ken. Jinpachi +1",
            body="Mpaca's Doublet",
            hands="Wakido Kote +2",
            legs="Ken. Hakama +1",
            feet="Ken. Sune-Ate +1",
            neck="Sam. Nodowa +1",
            waist="Ioskeha Belt +1",
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
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
        
        ["Default"] =
        {ammo="Knobkierrie",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs="Wakido Haidate +2",
        feet={ name="Valorous Greaves", augments={'Accuracy+2 Attack+2','Weapon skill damage +4%','STR+6',}},
        neck="Sam. Nodowa +1",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        right_ear="Kasuga Earring +1",
        right_ear="Thrud Earring",
        left_ring="Ilabrat Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},

        ["Tachi: Fudo"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs="Wakido Haidate +2",
                feet={ name="Valorous Greaves", augments={'Accuracy+2 Attack+2','Weapon skill damage +4%','STR+6',}},
                neck="Sam. Nodowa +1",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                right_ear="Kasuga Earring +1",
                right_ear="Thrud Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},
            },

        },

        ["Tachi: Kasha"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs="Wakido Haidate +2",
                feet={ name="Valorous Greaves", augments={'Accuracy+2 Attack+2','Weapon skill damage +4%','STR+6',}},
                neck="Sam. Nodowa +1",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                right_ear="Kasuga Earring +1",
                right_ear="Thrud Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},
            },

        },

        ["Tachi: Gekko"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs="Wakido Haidate +2",
                feet={ name="Valorous Greaves", augments={'Accuracy+2 Attack+2','Weapon skill damage +4%','STR+6',}},
                neck="Sam. Nodowa +1",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                right_ear="Kasuga Earring +1",
                right_ear="Thrud Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},
            },

        },

        ["Tachi: Yukikaze"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs="Wakido Haidate +2",
                feet={ name="Valorous Greaves", augments={'Accuracy+2 Attack+2','Weapon skill damage +4%','STR+6',}},
                neck="Sam. Nodowa +1",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                right_ear="Kasuga Earring +1",
                right_ear="Thrud Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},},
            },

        },
    
    }
        
    sets["WeaponSkill"]["Accuracy"] = {
        
        ["Default"] =
        {},
    
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