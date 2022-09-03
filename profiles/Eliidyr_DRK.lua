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
        {name='Scythe',     equip=true,     set={main="Chango",sub="Utu Grip"}},
        {name='Clubbin',    equip=true,     set={main="Loxotic Mace +1",sub="Blurred Shield +1"}},

    }
    
    -- [[ IDLE SETS ]]
    sets["Idle"] = {
        
        -- MOVEMENT SPEED+.
        {name="Movement Speed", set={
            ammo="Staunch Tathlum +1",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Sakpata's Cuisses",
            feet="Hermes's Sandals",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            right_ear="Thrud Earring",
            left_ring="Warden's Ring",
            right_ring="Defending Ring",
            back=capes['DT']},
        },

        -- DAMAGE TAKEN SET.
        {name="Damage Taken", set={
            ammo="Staunch Tathlum +1",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Sakpata's Cuisses",
            feet="Sakpata's Leggings",
            neck="Warder's Charm +1",
            waist="Carrier's Sash",
            left_ear="Eabani Earring",
            right_ear="Thrud Earring",
            left_ring="Warden's Ring",
            right_ring="Niqmaddu Ring",
            back=capes['DT']},
        },
      
    }
    
    -- [[ ENGAGED SETS ]] 
    sets["Engaged"] = {}    
    sets["Engaged"]["Attack"] = {			
    
        {name="Chango - Trash", set={
            ammo="Coiste Bodhar",
            head="Flam. Zucchetto +2",
            body="Sakpata's Plate",
            hands={ name="Tatena. Gote +1", augments={'Path: A',}},
            legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
            feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist="Ioskeha Belt +1",
            left_ear="Schere Earring",
            right_ear="Brutal Earring",
            left_ring="Flamma Ring",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR']},
        },

        {name="Chango - High", set={
            ammo="Coiste Bodhar",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Sakpata's Cuisses",
            feet="Sakpata's Leggings",
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="Fencer [MA]", set={
            ammo={ name="Coiste Bodhar", augments={'Path: A',}},
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Pumm. Cuisses +2",
            feet="Flam. Gambieras +2",
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist="Ioskeha Belt +1",
            left_ear={ name="Schere Earring", augments={'Path: A',}},
            right_ear="Brutal Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        {name="Fencer [STP]", set={
            ammo="Coiste Bodhar",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Pumm. Cuisses +2",
            feet="Pumm. Calligae +3",
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist="Ioskeha Belt +1",
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},
     
    }
    
    sets["Engaged"]["Accuracy"] = {
        
        -- TP: Chango Trash.
        {name="Chango - Trash", set={
            ammo="Coiste Bodhar",
            head="Flam. Zucchetto +2",
            body="Sakpata's Plate",
            hands={ name="Tatena. Gote +1", augments={'Path: A',}},
            legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
            feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR']},
        },

        -- TP: Chango Hybrid.
        {name="Chango - High", set={
            ammo="Coiste Bodhar",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Sakpata's Cuisses",
            feet="Sakpata's Leggings",
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist={ name="Sailfi Belt +1", augments={'Path: A',}},
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        -- TP: Fencer Trash.
        {name="Fencer [MA]", set={
            ammo="Coiste Bodhar",
            head="Flam. Zucchetto +2",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Pumm. Cuisses +2",
            feet="Flam. Gambieras +2",
            neck={ name="War. Beads +2", augments={'Path: A',}},
            waist="Sailfi Belt +1",
            left_ear="Schere Earring",
            right_ear="Telos Earring",
            left_ring="Flamma Ring",
            right_ring="Niqmaddu Ring",
            back=capes['DA - STR'],
        }},

        -- TP: Fencer Hybrid.
        {name="Fencer [STP]", set={
            ammo="Coiste Bodhar",
            head="Sakpata's Helm",
            body="Sakpata's Plate",
            hands="Sakpata's Gauntlets",
            legs="Pumm. Cuisses +2",
            feet="Pumm. Calligae +3",
            neck={ name="War. Beads +2", augments={'Path: A',}},
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
        
        -- Default WS Set.
        ["Default"] =
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
        back=capes['SAVAGE BLADE']},

        ["Upheaval"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Agoge mask +3",
                body="Nyame Mail",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['UPHEAVAL']},
            },
            ["Berserk Warcry Chaos Roll"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Agoge mask +3",
                body="Sakpata's Plate",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['UPHEAVAL']},
            },

        },
        ["Impulse Drive"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Yetshila +1",
                head="Agoge mask +3",
                body="Nyame Mail",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['SAVAGE BLADE']},
            },

        },
        ["Savage Blade"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head="Agoge mask +3",
                body="Nyame Mail",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Thrud Earring",
                right_ear="Ishvara Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['SAVAGE BLADE']},
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
        ["Cloudsplitter"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
                body="Nyame Mail",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist="Eschan Stone",
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Petrov Ring",
                back=capes['SAVAGE BLADE']},
            },
            ["Berserk Warcry Chaos Roll"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
                body="Nyame Mail",
                hands={ name="Odyssean Gauntlets", augments={'Crit. hit damage +4%','Weapon skill damage +3%','Phalanx +2','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
                legs={ name="Odyssean Cuisses", augments={'Accuracy+19 Attack+19','Weapon skill damage +3%','STR+11','Attack+12',}},
                feet="Sulev. Leggings +2",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist="Eschan Stone",
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Petrov Ring",
                back=capes['SAVAGE BLADE']},
            },

        },
        ["Raging Fists"] = {

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
        ["True Strike"] = {

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
                back=capes['SAVAGE BLADE']},
            },

        },
        ["Judgment"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
                body="Nyame Mail",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sulev. Leggings +2",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['SAVAGE BLADE']},
            },
            ["Berserk Warcry Chaos Roll Minuet"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
                body="Nyame Mail",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sulev. Leggings +2",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['SAVAGE BLADE']},
            },

        },
        ["Fell Cleave"] = {

            ["Default"] =
            {
                [0] =
                {ammo="Knobkierrie",
                head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
                body="Sakpata's Plate",
                hands="Sakpata's Gauntlets",
                legs="Sakpata's Cuisses",
                feet="Sakpata's Leggings",
                neck={ name="War. Beads +2", augments={'Path: A',}},
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                left_ear="Schere Earring",
                right_ear="Thrud Earring",
                left_ring="Petrov Ring",
                right_ring="Niqmaddu Ring",
                back=capes['SAVAGE BLADE']},
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