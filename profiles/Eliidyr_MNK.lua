local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DA - DEX']    = { name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
        ['DA - STR']    = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
        ['CRIT - DA']   = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}},
        ['FAST CAST']   = { name="Segomo's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Sagitta', equip=true, set={main="Sagitta"}},
        {name='Karambit', equip=true, set={main="Karambit"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        -- MOVEMENT SPEED+.
        {name="Movement Speed", set={
            ammo="Staunch Tathlum +1",
            head="Malignance Chapeau",
            body="Mpaca's Doublet",
            hands="Malignance Gloves",
            legs="Malignance Tights",
            feet="Herald's Gaiters",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            right_ear="Calamitous Earring",
            left_ring="Defending Ring",
            right_ring="Warden's Ring",
            back="Moonlight Cape",
        }},

        -- DAMAGE TAKEN SET.
        {name="Damage Taken", set={
            ammo="Staunch Tathlum +1",
            head="Malignance Chapeau",
            body="Mpaca's Doublet",
            hands="Malignance Gloves",
            legs="Malignance Tights",
            feet="Malignance Boots",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            right_ear="Calamitous Earring",
            left_ring="Defending Ring",
            right_ring="Warden's Ring",
            back="Moonlight Cape",
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			

        {name="Balls to the Wall", set={
            ammo="Coiste Bodhar",
            head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
            body="Ken. Samue +1",
            hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
            legs="Anch. Hose +3",
            feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
            neck="Mnk. Nodowa +1",
            waist="Moonbow Belt +1",
            left_ear="Telos Earring",
            right_ear="Balder Earring +1",
            left_ring="Ilabrat Ring",
            right_ring="Niqmaddu Ring",
            back=capes['DA - DEX']},
            
            ["Impetus"]={
                body="Bhikku Cyclas +1",
            },

            ["Footwork"]={
                feet="Anch. Gaiters +3",
            },

            ["Impetus Footwork"]={
                body="Bhikku Cyclas +1",
                feet="Anch. Gaiters +3",
            },

        },

        -- Hybrid Build.
        {name="Hybrid", set={
            ammo="Coiste Bodhar",
            head="Malignance Chapeau",
            body="Ken. Samue +1",
            hands="Malignance Gloves",
            legs="Malignance Tights",
            feet="Ken. Sune-Ate +1",
            neck="Mnk. Nodowa +1",
            waist="Moonbow Belt +1",
            left_ear="Telos Earring",
            right_ear="Balder Earring +1",
            left_ring="Defending Ring",
            right_ring="Niqmaddu Ring",
            back=capes['DA - DEX']},
            
            ["Impetus"]={
                body="Bhikku Cyclas +1",
                left_ring="Defending Ring",
            },

            ["Footwork"]={
                feet="Anch. Gaiters +3",
            },

            ["Impetus Footwork"]={
                body="Bhikku Cyclas +1",
                feet="Anch. Gaiters +3",
                left_ring="Defending Ring",
            },

        },
     
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
        ["Default"] = {
        ammo="Knobkierrie",
        head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
        hands={ name="Ryuo Tekko +1", augments={'STR+12','DEX+12','Accuracy+20',}},
        legs="Ken. Hakama +1",
        feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
        neck="Anu Torque",
        waist="Moonbow Belt +1",
        left_ear="Odr Earring",
        right_ear="Sherida Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Ilabrat Ring",
        back=capes['CRIT - STR']
        },

        ["Victory Smite"] =
        {
            ["Default"] =
            {
                [0]=
                {ammo="Knobkierrie",
                head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
                body="Ken. Samue +1",
                hands={ name="Ryuo Tekko +1", augments={'STR+12','DEX+12','Accuracy+20',}},
                legs="Mpaca's Hose",
                feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
                neck="Mnk. Nodowa +1",
                waist="Moonbow Belt +1",
                left_ear="Sherida Earring",
                right_ear="Odr Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            },
            ["Impetus"] =
            {
                [0]=
                {ammo="Coiste Bodhar",
                head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
                body="Bhikku Cyclas +1",
                hands={ name="Ryuo Tekko +1", augments={'STR+12','DEX+12','Accuracy+20',}},
                legs="Mpaca's Hose",
                feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
                neck="Mnk. Nodowa +1",
                waist="Moonbow Belt +1",
                left_ear="Sherida Earring",
                right_ear="Schere Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            }
        },

        ["Footwork"] =
        {
            ["Default"] =
            {
                [0]=
                {ammo="Knobkierrie",
                head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
                body="Ken. Samue +1",
                hands={ name="Ryuo Tekko +1", augments={'STR+12','DEX+12','Accuracy+20',}},
                legs="Mpaca's Hose",
                feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
                neck="Mnk. Nodowa +1",
                waist="Moonbow Belt +1",
                left_ear="Sherida Earring",
                right_ear="Odr Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            },
            ["Footwork"] =
            {
                [0]=
                {ammo="Coiste Bodhar",
                head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
                body="Bhikku Cyclas +1",
                hands={ name="Ryuo Tekko +1", augments={'STR+12','DEX+12','Accuracy+20',}},
                legs="Mpaca's Hose",
                feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
                neck="Mnk. Nodowa +1",
                waist="Moonbow Belt +1",
                left_ear="Sherida Earring",
                right_ear="Schere Earring",
                left_ring="Ilabrat Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            }
        },

        ["Raging Fists"] =
        {ammo="Knobkierrie",
        head="Ken. Jinpachi +1",
        body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
        legs="Mpaca's Hose",
        feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
        neck="Mnk. Nodowa +1",
        waist="Moonbow Belt +1",
        left_ear="Sherida Earring",
        right_ear="Schere Earring",
        left_ring="Ilabrat Ring",
        right_ring="Niqmaddu Ring",
        back=capes['DA - STR']},

        ["Shijin Spiral"] =
        {ammo="Knobkierrie",
        head="Ken. Jinpachi +1",
        body="Ken. Samue +1",
        hands="Malignance Gloves",
        legs="Mpaca's Hose",
        feet="Malignance Boots",
        neck="Mnk. Nodowa +1",
        waist="Moonbow Belt +1",
        left_ear="Sherida Earring",
        right_ear="Mache Earring +1",
        left_ring="Ilabrat Ring",
        right_ring="Niqmaddu Ring",
        back=capes['DA - DEX']},

        ["Howling Fists"] =
        {ammo="Knobkierrie",
        head="Mpaca's Cap",
        body="Nyame Mail",
        hands={ name="Tatena. Gote +1", augments={'Path: A',}},
        legs="Mpaca's Hose",
        feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','STR+12','Quadruple Attack +2',}},
        neck="Mnk. Nodowa +1",
        waist="Moonbow Belt +1",
        left_ear="Sherida Earring",
        right_ear="Schere Earring",
        left_ring="Ilabrat Ring",
        right_ring="Niqmaddu Ring",
        back=capes['DA - STR']},
    
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
        {ammo="Sapience Orb",
        head="Herculean Helm",
        body="Dread Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+9','Mag. Acc.+5','"Mag.Atk.Bns."+6','"Fast Cast"+1',}},
        left_ear="Loquac. Earring",
        left_ring="Prolix Ring",
        back=capes['FAST CAST']},

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
        ["Dodge"] =
        {feet="Anch. Gaiters +3",}        

    }

    -- [[ USER DEFINED FUNCTIONS ]] 
    user.settings = function(bp)
        bp.settings["WS Options"] = {'Impetus','Footwork','Chaos Roll'}
        bp.settings['Auto Swaps'] = false

    end

    user.Precast = function(bp, spell, midaction)
        local enabled = false
        
        if enabled and bp and spell then
            
        end
        return enabled

    end

    user.Midcast = function(bp, spell, midaction)
        local enabled = false

        if enabled and bp and spell then

        end
        return enabled

    end

    user.Aftercast = function(bp, spell, midaction)
        local enabled = false

        if enabled and bp and spell then

        end
        return enabled

    end

    user.statusChange = function(bp, new, old, midaction)
        local enabled = false

        if enabled and bp and new and old then

        end
        return enabled

    end

    user.buffChange = function(bp, name, gain, details, midaction)
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