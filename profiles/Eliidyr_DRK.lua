local gear = {}
function gear.new()
    local sets = {}
    local user = {}

    -- DISPLAY POSITION SETINGS.
    local x = 1300
    local y = 0

    -- CAPES.
    local capes = {

        ['DT']              = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
        ['DA - STR']        = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
        ['UPHEAVAL']        = { name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
        ['SAVAGE BLADE']    = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

    }

    -- [[ WEAPONS SWAPS ]]
    sets['Weapons'] = {

        {name='None'},
        {name='Apoc',       equip=true,     set={main="Chango",sub="Utu Grip"}},
        {name='Club',       equip=true,     set={main="Loxotic Mace +1",sub="Blurred Shield +1"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        {name="Movement Speed", set={
            ammo="Staunch Tathlum +1",
            head={ name="Sakpata's Helm", augments={'Path: A',}},
            body={ name="Sakpata's Plate", augments={'Path: A',}},
            hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
            legs="Carmine Cuisses +1",
            feet={ name="Sakpata's Leggings", augments={'Path: A',}},
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Odnowa Earring +1",
            right_ear="Eabani Earring",
            left_ring="Moonlight Ring",
            right_ring="Stikini Ring +1",
            back="Moonlight Cape",
        }},

        {name="Damage Taken", set={
            ammo="Staunch Tathlum +1",
            head={ name="Sakpata's Helm", augments={'Path: A',}},
            body={ name="Sakpata's Plate", augments={'Path: A',}},
            hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
            legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
            feet={ name="Sakpata's Leggings", augments={'Path: A',}},
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Odnowa Earring +1",
            right_ear="Eabani Earring",
            left_ring="Moonlight Ring",
            right_ring="Stikini Ring +1",
            back="Moonlight Cape",
        }},
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        {name="Apocalypse [4-Hit]", set={
            ammo={ name="Coiste Bodhar", augments={'Path: A',}},
            head="Flam. Zucchetto +2",
            body="Hjarrandi Breast.",
            hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
            legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
            feet="Flam. Gambieras +2",
            neck={ name="Vim Torque +1", augments={'Path: A',}},
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Telos Earring",
            right_ear="Brutal Earring",
            left_ring="Chirich Ring +1",
            right_ring="Moonlight Ring",
            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},

            [1] = { -- Aftermath 1
                ammo={ name="Coiste Bodhar", augments={'Path: A',}},
                head="Flam. Zucchetto +2",
                body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
                hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Flam. Gambieras +2",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Telos Earring",
                right_ear="Brutal Earring",
                left_ring="Chirich Ring +1",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
            },
            [2] = { -- Aftermath 2
                ammo={ name="Coiste Bodhar", augments={'Path: A',}},
                head="Flam. Zucchetto +2",
                body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
                hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Flam. Gambieras +2",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Telos Earring",
                right_ear="Brutal Earring",
                left_ring="Chirich Ring +1",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
            },
            [3] = { -- Aftermath 3
                ammo={ name="Coiste Bodhar", augments={'Path: A',}},
                head="Flam. Zucchetto +2",
                body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
                hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Flam. Gambieras +2",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Telos Earring",
                right_ear="Brutal Earring",
                left_ring="Chirich Ring +1",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
            },

        }},

        {name="Fencer [MA]", set={
            ammo="Coiste Bodhar",
            head="Flam. Zucchetto +2",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Sakpata's Cuisses",
            feet="Flam. Gambieras +2",
            neck="Vim Torque +1",
            waist="Sailfi Belt +1",
            left_ear="Brutal Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="Fencer [STP]", set={
            ammo="Coiste Bodhar",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Sakpata's Cuisses",
            feet="Flam. Gambieras +2",
            neck="Vim Torque +1",
            waist="Ioskeha Belt +1",
            left_ear="Brutal Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        {name="Apocalypse [4-Hit]", set={
            ammo={ name="Coiste Bodhar", augments={'Path: A',}},
            head="Flam. Zucchetto +2",
            body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
            hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
            legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
            feet="Flam. Gambieras +2",
            neck={ name="Vim Torque +1", augments={'Path: A',}},
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Telos Earring",
            right_ear="Brutal Earring",
            left_ring="Chirich Ring +1",
            right_ring="Moonlight Ring",
            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},

            [1] = { -- Aftermath 1
                ammo={ name="Coiste Bodhar", augments={'Path: A',}},
                head="Flam. Zucchetto +2",
                body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
                hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Flam. Gambieras +2",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Telos Earring",
                right_ear="Brutal Earring",
                left_ring="Chirich Ring +1",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
            },
            [2] = { -- Aftermath 2
                ammo={ name="Coiste Bodhar", augments={'Path: A',}},
                head="Flam. Zucchetto +2",
                body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
                hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Flam. Gambieras +2",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Telos Earring",
                right_ear="Brutal Earring",
                left_ring="Chirich Ring +1",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
            },
            [3] = { -- Aftermath 3
                ammo={ name="Coiste Bodhar", augments={'Path: A',}},
                head="Flam. Zucchetto +2",
                body={ name="Valorous Mail", augments={'Accuracy+23 Attack+23','"Store TP"+6','Attack+8',}},
                hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Flam. Gambieras +2",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Telos Earring",
                right_ear="Brutal Earring",
                left_ring="Chirich Ring +1",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
            },
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
        {ammo="Knobkierrie",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck={ name="Vim Torque +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ishvara Earring",
        right_ear="Thrud Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Petrov Ring",
        back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+3','Weapon skill damage +10%',}},},

        ["Catastrophe"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs="Nyame Flanchard",
                feet="Nyame Sollerets",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Petrov Ring",
                back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+3','Weapon skill damage +10%',}},},
            },
            ["Berserk Warcry Chaos Roll"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs="Nyame Flanchard",
                feet="Nyame Sollerets",
                neck={ name="Vim Torque +1", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Petrov Ring",
                back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+3','Weapon skill damage +10%',}},},
            },

        },
        ["Savage Blade"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Agoge mask +3",
                body="Nyame Mail",
                hands="Nyame Gauntlets",
                legs="Boii Cuisses +2",
                feet="Nyame Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['SAVAGE BLADE']},
            },
            ["Berserk Warcry Chaos Roll"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Agoge mask +3",
                body="Sakpata's Plate",
                hands="Sakpata's Gauntlets",
                legs="Boii Cuisses +2",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            },

        },
        ["Resolution"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Yetshila +1",
                head="Flam. Zucchetto +2",
                body="Sakpata's Plate",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Schere Earring",
                right_ear="Brutal Earring",
                left_ring="Flamma Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            },
            ["Berserk Warcry Chaos Roll"] =
            {
                [0] =
                {ammo="Yetshila +1",
                head="Flam. Zucchetto +2",
                body="Sakpata's Plate",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Schere Earring",
                right_ear="Brutal Earring",
                left_ring="Flamma Ring",
                right_ring="Niqmaddu Ring",
                back=capes['DA - STR']},
            },

        },
        ["Cross Reaper"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Sulev. Leggings +2",
                neck="Abyssal Beads +2",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+3','Weapon skill damage +10%',}},},
            },
            ["Berserk Warcry Chaos Roll"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Nyame Helm", augments={'Path: B',}},
                body={ name="Nyame Mail", augments={'Path: B',}},
                hands={ name="Nyame Gauntlets", augments={'Path: B',}},
                legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
                feet="Sulev. Leggings +2",
                neck="Abyssal Beads +2",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Moonlight Ring",
                back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+3','Weapon skill damage +10%',}},},
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
        ["Warcry"]              = {head="Agoge Mask +3"},
        ["Aggressor"]           = {head="Pummeler's Mask +2",body="Agoge Lorica +1"},
        ["Berserk"]             = {body="Pummeler's Lorica +2",feet="Agoge Calligae +2"},
        ["Mighty Strikes"]      = {hands="Agoge Mufflers +1"},
        ["Warrior's Charge"]    = {legs="Agoge Cuisses +3"},

    }

    -- [[ USER DEFINED FUNCTIONS ]] 
    user.settings = function(bp)
        bp.settings["WS Options"] = {'Hasso','Defender','Mighty Strikes','Brazen Rush','Chaos Roll'}
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