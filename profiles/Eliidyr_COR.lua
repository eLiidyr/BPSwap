local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DT']              = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+2','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        ['DA - DEX']        = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+2','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        ['ROLLS']           = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+2','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        ['SAVAGE BLADE']    = { name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
        ['LEADEN SALUTE']   = { name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
        ['RANGED']          = { name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+1','"Store TP"+10',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Test Sword', equip=false, set={main="Mutsunokami"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
    
        -- MOVEMENT SPEED+.
        {name="Movement Speed", set={
            head="Nyame Helm",
            body="Nyame Mail",
            hands="Nyame Gauntlets",
            legs="Malignance Tights",
            feet="Nyame Sollerets",
            neck="Warder's Charm",
            waist="Carrier's Sash",
            left_ear="Odr Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Petrov Ring",
            back=capes['DT'],
        }},

        -- DAMAGE TAKEN SET.
        {name="Damage Taken", set={
            head="Nyame Helm",
            body="Nyame Mail",
            hands="Nyame Gauntlets",
            legs="Malignance Tights",
            feet="Nyame Sollerets",
            neck="Warder's Charm",
            waist="Carrier's Sash",
            left_ear="Odr Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Petrov Ring",
            back=capes['DT'],
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        {name="Trash", set={
            head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
            body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
            hands="Malignance Gloves",
            legs="Malignance Tights",
            feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
            neck="Warder's Charm",
            waist="Windbuffet Belt +1",
            left_ear="Odr Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Petrov Ring",
            back=capes['DA - DEX'],
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        -- Trash Build
        {name="Trash", set={}},
     
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
        
        ["Savage Blade"] = {

            ["Default"] =
            {
                [0] =
                {head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','Weapon skill damage +4%','AGI+11','Accuracy+1','Attack+15',}},
                body="Laksa. Frac +2",
                hands="Meg. Gloves +2",
                legs={ name="Herculean Trousers", augments={'Attack+12','Weapon skill damage +4%','DEX+2','Accuracy+13',}},
                feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
                neck={ name="Comm. Charm +2", augments={'Path: A',}},
                waist="Eschan Stone",
                left_ear="Brutal Earring",
                right_ear="Ishvara Earring",
                left_ring="Ilabrat Ring",
                right_ring="Petrov Ring",
                back=capes['SAVAGE BLADE']},
            },

        },
        ["Leaden Salute"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Bronze Bullet",
                head="Pixie Hairpin +1",
                body="Lanun Frac +3",
                hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
                legs={ name="Herculean Trousers", augments={'Attack+12','Weapon skill damage +4%','DEX+2','Accuracy+13',}},
                feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
                neck={ name="Comm. Charm +2", augments={'Path: A',}},
                waist="Svelt. Gouriz +1",
                left_ear="Ishvara Earring",
                right_ear="Friomisi Earring",
                left_ring="Archon Ring",
                right_ring="Arvina Ringlet +1",
                back=capes['LEADEN SALUTE']}

            },

        },
        ["Wildfire"] = {

            ["Default"] =
            {
                [0] =
                {head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','Weapon skill damage +4%','AGI+11','Accuracy+1','Attack+15',}},
                body="Lanun Frac +3",
                hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
                legs={ name="Herculean Trousers", augments={'Attack+12','Weapon skill damage +4%','DEX+2','Accuracy+13',}},
                feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
                neck={ name="Comm. Charm +2", augments={'Path: A',}},
                waist="Svelt. Gouriz +1",
                left_ear="Friomisi Earring",
                right_ear="Ishvara Earring",
                left_ring="Ilabrat Ring",
                right_ring="Arvina Ringlet +1",
                back=capes['LEADEN SALUTE']}

            },

        },
    
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
        {name="Trash", set={head="Oshosi Mask +1",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Ikenga's Trousers",
        feet="Osh. Leggings +1",
        neck={ name="Comm. Charm +2", augments={'Path: A',}},
        waist="K. Kachina Belt +1",
        left_ear="Odr Earring",
        right_ear="Telos Earring",
        left_ring="Chirich Ring +1",
        right_ring="Meghanada Ring",
        }},
        
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

    -- (Armageddon) AM Critical Shots.
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

    -- [[ PRECAST SETS ]] 
    sets["Precast"] = {

        ["Default"] =
        {},

        ["Ranged"] =
        {head="Nvrch. Tricorne +1",
        body="Laksa. Frac +2",
        hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs="Osh. Trousers +1",
        feet="Meg. Jam. +2",
        neck={ name="Comm. Charm +2", augments={'Path: A',}}},

        ["Ranged: Flurry"] =
        {head="Nvrch. Tricorne +1",
        neck="Bathy Choker +1",
        body="Laksa. Frac +2",
        hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs="Osh. Trousers +1",
        feet="Meg. Jam. +2",
        neck="Bathy Choker +1",},


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
        ["CorsairRoll"] =
        {range="Compensator",
        head={ name="Lanun Tricorne +2", augments={'Enhances "Winning Streak" effect',}},
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Malignance Tights",
        feet="Nyame Sollerets",
        neck="Regal Necklace",
        waist="Carrier's Sash",},

    }

    -- [[ USER DEFINED FUNCTIONS ]] 
    user.settings = function(bp)
        bp.settings["WS Options"] = {}

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