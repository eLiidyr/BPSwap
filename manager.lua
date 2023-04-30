local pm = {}
function pm:load()
    local MT = {}

    -- System Variables.
    local res = require('resources')
    local files = require("files")
    local texts = require('texts')

    -- Private Variables.
    local __profile = files.new(string.format('data/profiles/%s_%s.lua', player.name, player.main_job)):exists() and dofile(string.format('%sdata/profiles/%s_%s.lua', windower.addon_path, player.name, player.main_job)) or false
    local __statics = {capes={}, weapons={}, sets={idle={}, engaged={}, midnuke={}, ranged={}, precast={}, midcast={}, weaponskills={}}}
    local __modes   = {'Attack','Accuracy'}
    
    -- Default Variables.
    self.__display  = texts.new({pos={x=1, y=1}, bg={alpha=75, red=0, green=0, blue=0, visible=false}, flags={draggable=true, bold=true}, text={size=10, font='Segoe UI', alpha=255, red=245, green=200, blue=20, stroke={width=2, alpha=255, red=0, green=0, blue=0}}, padding=5})
    self.__engaged  = 1
    self.__weapons  = 1
    self.__nukes    = 1
    self.__idle     = 1
    self.dummy      = 1
    self.mode       = 1
    self.x          = 1
    self.y          = 1

    -- Constants.
    self.__CONST    = {}

    do -- Add any constant values that can be re-used.
        self.__CONST.ABILITIES      = S{'JobAbility','CorsairRoll','CorsairShot','Samba','Waltz','Jig','Scholar','Step','Flourish1','Flourish2','Flourish3','Effusion','Rune','Ward'}
        self.__CONST.ELEMENTALWS    = S{'Gust Slash','Cyclone','Energy Steal','Energy Drain','Aeolian Edge','Burning Blade','Red Lotus Blade','Shining Blade','Seraph Blade','Spirits Within','Sanguine Blade','Atonement','Frostbite','Freezebite','Herculean Slash','Cloudsplitter','Primal Rend','Dark Harvest','Shadow of Death','Infernal Scythe','Thunder Thrust','Raiden Thrust','Blade: Teki','Blade: To','Blade: Chi','Blade: Ei','Blade: Yu', 'Tachi: Goten','Tachi: Kagero','Tachi: Jinpu','Tachi: Koki','Shining Strike','Seraph Strike','Flash Nova','Rock Crusher','Earth Crusher','Starburst','Sunburst','Cataclysm','Vidohunir','Garland of Bliss','Omniscience','Flaming Arrow','Hot Shot','Wildfire','Trueflight','Leaden Salute'}
        self.__CONST.SLOTS          = S{'main','sub','range','ammo','head','neck','ear1','ear2','body','hands','ring1','ring2','back','waist','legs','feet','left_ear','right_ear','left_ring','right_ring'}
        self.__CONST.DUMMIES        = {{"Army's Paeon","Army's Paeon II"},{"Scop's Operetta","Puppet's Operetta"},{"Herb Pastoral","Fowl Aubade"}}
        self.__CONST.RANGES         = T{[0]=0,[2]=3.40,[3]=4.47,[4]=5.76,[5]=6.89,[6]=7.80,[7]=8.40,[8]=10.40,[9]=12.40,[10]=14.50,[11]=16.40,[12]=20.40,[13]=23.4}
        self.__CONST.OBIS           = {['Fire']={name='Rarin Obi',opposing='Water'},['Ice']={name='Hyorin Obi',opposing='Fire'},['Wind']={name='Furin Obi',opposing='Ice'},['Earth']={name='Dorin Obi',opposing='Wind'},['Lightning']={name='Rairin Obi',opposing='Earth'},['Water']={name='Suirin Obi',opposing='Lightning'},['Light']={name='Korin Obi',opposing='Dark'},['Dark']={name='Anrin Obi', opposing='Light'}}
        self.__CONST.NAKED          = {main=empty,sub=empty,range=empty,ammo=empty,head=empty,neck=empty,ear1=empty,ear2=empty,body=empty,hands=empty,ring1=empty,ring2=empty,back=empty,waist=empty,legs=empty,feet=empty}
        self.__CONST.PROFILELIST    = {'__weapons','__idle','__engaged','__nukes','mode','dummy'}
        self.__CONST.DEFAULT        = "Default"
        self.__CONST.GEO            = "Geocolure"
        self.__CONST.INDI           = "Indicolure"
        self.__CONST.PHYSICAL       = "Physical Pacts"
        self.__CONST.MAGICAL        = "Magical Pacts"
        self.__CONST.HYBRID         = "Hybrid Pacts"
        self.__CONST.WARDS          = "Ward Pacts"
        self.__CONST.DEBUFFS        = "Debuff Pacts"
        self.__CONST.DUMMY          = "Dummy Songs"
        self.__CONST.LOADKEYBINDS   = function()
            send_command('bind @f1  gs c __idlemode')
            send_command('bind @f2  gs c __engagemode')
            send_command('bind @f3  gs c __nukemode')
            send_command('bind @f4  gs c __combatmode')
            send_command('bind @f5  gs c __weapons')
            send_command('bind @f9  gs c __wlock')
            send_command('bind @f10 gs c __glock')

        end
        self.__CONST.UNLOADKEYBINDS = function()
            print('Unbinding Gearswap Keys...')
            send_command('unbind @f1')
            send_command('unbind @f2')
            send_command('unbind @f3')
            send_command('unbind @f4')
            send_command('unbind @f5')
            send_command('unbind @f9')
            send_command('unbind @f10')

        end

        do -- Setup the defaults sets tables.
            __statics.sets.weaponskills = {{},{}}
            __statics.sets.engaged      = {{},{}}
            __statics.sets.midnuke      = {{},{}}
            __statics.sets.midcast      = {{},{}}
            __statics.sets.ranged       = {{},{}}

        end

        -- Handle Blood Pacts.
        self.__CONST['BloodPactRage'] = {

            S{'Punch','Rock Throw','Barracuda Dive','Claw','Welt','Axe Kick','Shock Strike','Camisado','Regal Scratch','Poison Nails','Moonlit Charge','Rock buster','Roundhouse','Tail Whip','Double Punch','Megalith Throw','Double Slap','Eclipse Bite','Mountain buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike','Volt Strike','Hysteric Assault','Crag Throw','Blindside','Regal Gash'},
            S{'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Clarsach Call','Diamond Dust','Judgement Bolt','Searing Light','Howling Moon','Ruinous Omen','Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Thunderspark','Meteorite','Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV','Sonic Buffet','Nether Blast','Zantetsuken','Meteor Strike','Geocrush','Grand Fall','Wind Blade','Tornado II','Heavenly Strike','Thunderstorm','Level ? Holy','Holy Mist','Lunar Bay','Night Terror','Conflag Strike','Impact'},
            S{'Flaming Crush','Burning Strike'},
            S{},
            S{},

        }

        self.__CONST['BloodPactWard'] = {

            S{},
            S{},
            S{},
            S{'Altana\'s Favor','Healing Ruby','Raise II','Shining Ruby','Aerial Armor','Frost Armor','Reraise II','Katabatic Blades','Whispering Wind','Crimson Howl','Lightning Armor','Chinook','Ecliptic Growl','Glittering Ruby','Earthen Ward','Spring Water','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud','Healing Ruby II','Perfect Defense','Chronoshift','Earthen Armor','Fleet Wind','Inferno Howl','Wind’s Blessing','Soothing Ruby','Heavenward Howl','Pacifying Ruby','Hastega II','Soothing Current','Crystal Blessing'},
            S{'Lunatic Voice','Somnolence','Lunar Cry','Mewing Lullaby','Nightmare','Rolling Thunder','Lunar Roar','Slowga','Ultimate Terror','Sleepga','Bitter Elegy','Eerie Eye','Deconstruction','Tidal Roar','Diamond Storm','Shock Squall','Pavor Nocturnus'},

        }

    end

    -- Set Metatable.
    setmetatable(self, MT)

    -- Toggles
    self.toggleMode = function() self.mode = self.mode == 1 and 2 or 1 end
    self.toggleIdle = function() self.__idle = (self.__idle + 1) > #__statics.sets.idle and 1 or (self.__idle + 1) end
    self.toggleRanged = function() self.__ranged = (self.__ranged + 1) > #__statics.sets.ranged[self.mode] and 1 or (self.__ranged + 1) end
    self.toggleEngaged = function() self.__engaged = (self.__engaged + 1) > #__statics.sets.engaged[self.mode] and 1 or (self.__engaged + 1) end
    self.toggleWeapons = function() self.__weapons = (self.__weapons + 1) > #__statics.weapons and 1 or (self.__weapons + 1) end
    self.toggleMidnuke = function() self.__nukes = (self.__nukes + 1) > #__statics.sets.midnuke[self.mode] and 1 or (self.__nukes + 1) end

    -- Setup some basic Inventory Functions
    self.getBagType = function(access, equippable)
        return S(res.bags):filter(function(key) return (key.access == access and key.equippable == equippable) or key.id == 0 and key end)    
    end

    do -- Setup some basic Bags.
        self.__CONST.EQUIPPABLE = T(self.getBagType('Everywhere', true))
        self.__CONST.STOREABLE  = T(self.getBagType('Everywhere', false))

    end

    self.findItem = function(search)

        for bag in T(self.__CONST.EQUIPPABLE):it() do

            for item, index in T(windower.ffxi.get_items(bag.id)):it() do
                
                if type(item) == 'table' and item.id and res.items[item.id] and res.items[item.id].en:lower():startswith(search:lower()) then
                    return index, item.id, item.count, item.status, bag.id, res.items[item.id]
                end

            end

        end
        return nil

    end
    
    -- Manager Functions.
    function self:addCape(name, set)
        
        if name and set and type(name) == 'string' and type(set) == 'table' then
            __statics.capes[name] = set
        end

    end

    function self:addWeapon(name, equip, set)
        
        if name and set and type(name) == 'string' and type(set) == 'table' then
            table.insert(__statics.weapons, {name=name, equip=equip or false, set=set})
        end

    end

    function self:addPrecast(name, set, buffed)
        local buffed = buffed or {}

        if name and set and type(name) == 'string' and type(set) == 'table' then
            __statics.sets.precast[name] = set

            for key, set in pairs(buffed) do
                __statics.sets.precast[name][key] = set
            end

        end

    end

    function self:addIdle(name, set, buffed)
        local buffed = buffed or {}

        if name and set and type(name) == 'string' and type(set) == 'table' then
            table.insert(__statics.sets.idle, {name=name, set=set})

            for key, set in pairs(buffed) do
                __statics.sets.idle[#__statics.sets.idle].set[key] = set
            end

        end

    end

    function self:addEngaged(name, mode, set, buffed)
        local buffed = buffed or {}
        
        if name and set and type(name) == 'string' and type(set) == 'table' and (__modes[mode] or S(__modes):contains(mode)) then
            local mode = (mode == 'Attack' or __modes[mode] == 'Attack') and 1 or 2

            do
                table.insert(__statics.sets.engaged[mode], {name=name, set=set})

                for key, set in pairs(buffed) do
                    __statics.sets.engaged[mode][#__statics.sets.engaged[mode]].set[key] = set
                end

            end

        end

    end

    function self:addMidnuke(name, mode, set, buffed)
        local buffed = buffed or {}

        if name and set and type(name) == 'string' and type(set) == 'table' and (__modes[mode] or S(__modes):contains(mode)) then
            local mode = (mode == 'Attack' or __modes[mode] == 'Attack') and 1 or 2

            do
                table.insert(__statics.sets.midnuke[mode], {name=name, set=set})

                for key, set in pairs(buffed) do
                    __statics.sets.midnuke[mode][#__statics.sets.midnuke[mode]].set[key] = set
                end

            end

        end

    end

    function self:addMidcast(name, mode, set, buffed)
        local buffed = buffed or {}

        if name and set and type(name) == 'string' and type(set) == 'table' then

            if mode and (__modes[mode] or S(__modes):contains(mode)) then
                local mode = (mode == 'Attack' or __modes[mode] == 'Attack') and 1 or 2
            
                do -- This set has varying modes.
                    __statics.sets.midcast[mode][name] = set

                    for key, set in pairs(buffed) do
                        __statics.sets.midcast[mode][name][key] = set
                    end

                end

            elseif not mode then
                __statics.sets.midcast[name] = set

                for key, set in pairs(buffed) do
                    __statics.sets.midcast[name][key] = set
                end

            end

        end

    end

    function self:addRanged(weapon, mode, set, buffed)
        local weapon = weapon or 'Default'
        local buffed = buffed or {}

        if weapon and set and type(weapon) == 'string' and type(set) == 'table' and (__modes[mode] or S(__modes):contains(mode)) then
            local mode = (mode == 'Attack' or __modes[mode] == 'Attack') and 1 or 2

            do
                __statics.sets.ranged[mode][weapon] = set

                for key, set in pairs(buffed) do
                    __statics.sets.ranged[mode][weapon][key] = set
                end

            end

        end

    end

    function self:addWeaponSkill(name, mode, tp, set, buffed)
        local buffed = buffed or {}

        if name and set and tp and type(name) == 'string' and type(tp) == 'number' and type(set) == 'table' and (__modes[mode] or S(__modes):contains(mode)) then
            local mode = (mode == 'Attack' or __modes[mode] == 'Attack') and 1 or 2
            
            do
                __statics.sets.weaponskills[mode][name] = __statics.sets.weaponskills[mode][name] or {}
                __statics.sets.weaponskills[mode][name][tp] = set

                for key, set in pairs(buffed) do
                    __statics.sets.weaponskills[mode][name][tp][key] = set
                end

            end

        end

    end

    -- Gear Set Functions.
    self.getWeaponSet = function() return __statics.weapons[self.__weapons] or {} end
    self.getIdleSet = function()
        local idle = __statics.sets.idle[self.__idle] or false

        if idle and idle.set then
            local bsets = T(idle.set):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
            local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
            local matches = {}

            for bset in bsets:keyset():it() do
                local comp = T{}

                for buff in buffs:it() do
                    local list = T(bset:split(':'))

                    if list:contains(buff) then
                        comp:insert(buff)
                    end
                    
                end
                
                if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                    table.insert(matches, bset)
                end

            end

            if #matches > 0 then
                return set_combine(idle.set, bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

            end
            return idle.set

        end
        return {}

    end

    self.getPrecastSet  = function(spell)

        if spell then
            local set = __statics.sets.precast[spell.name]

            if set then
                local bsets = T(set):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
                local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
                local matches = {}

                for bset in bsets:keyset():it() do
                    local comp = T{}

                    for buff in buffs:it() do
                        local list = T(bset:split(':'))

                        if list:contains(buff) then
                            comp:insert(buff)
                        end
                        
                    end
                    
                    if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                        table.insert(matches, bset)
                    end

                end

                if #matches > 0 then
                    return set_combine(set, bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

                end
                return set_combine(__statics.sets.precast[spell.skill], __statics.sets.precast[spell.name])

            end
            return set_combine(__statics.sets.precast[spell.skill], __statics.sets.precast[spell.name])

        end
        return {}

    end

    self.getMidcastSet = function(spell)

        if spell then
            local set = __statics.sets.midcast[self.mode][spell.name] or __statics.sets.midcast[spell.name]

            if set then
                local bsets = T(set):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
                local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
                local matches = {}

                for bset in bsets:keyset():it() do
                    local comp = T{}

                    for buff in buffs:it() do
                        local list = T(bset:split(':'))

                        if list:contains(buff) then
                            comp:insert(buff)
                        end
                        
                    end
                    
                    if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                        table.insert(matches, bset)
                    end

                end

                if #matches > 0 then
                    return set_combine(__statics.sets.midcast[spell.type], __statics.sets.midcast[spell.skill], set, bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

                end
                return set_combine(__statics.sets.midcast[spell.type], __statics.sets.midcast[spell.skill], __statics.sets.midcast[spell.name], __statics.sets.midcast[self.mode][spell.skill], __statics.sets.midcast[self.mode][spell.name])

            end
            return set_combine(__statics.sets.midcast[spell.type], __statics.sets.midcast[spell.skill], __statics.sets.midcast[spell.name])

        end
        return {}
    
    end

    self.getMidnukeSet = function()
        local nukes = __statics.sets.midnuke[self.mode][self.__nukes] or false

        if nukes and nukes.set then
            local bsets = T(nukes.set):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
            local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
            local matches = {}

            for bset in bsets:keyset():it() do
                local comp = T{}

                for buff in buffs:it() do
                    local list = T(bset:split(':'))

                    if list:contains(buff) then
                        comp:insert(buff)
                    end
                    
                end
                
                if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                    table.insert(matches, bset)
                end

            end

            if #matches > 0 then
                return set_combine(nukes.set, bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

            end
            return nukes.set

        end
        return {}

    end

    self.getEngagedSet = function()
        local engaged = __statics.sets.engaged[self.mode][self.__engaged] or false

        if engaged and engaged.set then
            local bsets = T(engaged.set):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
            local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
            local matches = {}

            for bset in bsets:keyset():it() do
                local comp = T{}

                for buff in buffs:it() do
                    local list = T(bset:split(':'))

                    if list:contains(buff) then
                        comp:insert(buff)
                    end
                    
                end
                
                if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                    table.insert(matches, bset)
                end

            end

            if #matches > 0 then
                return set_combine(engaged.set, bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

            end
            return engaged.set

        end
        return {}

    end

    self.getRangedSet = function(weapon)
        local ranged = __statics.sets.ranged[self.mode][weapon or 'Default'] or false

        if ranged then
            local bsets = T(ranged):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
            local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
            local matches = {}

            for bset in bsets:keyset():it() do
                local comp = T{}

                for buff in buffs:it() do
                    local list = T(bset:split(':'))

                    if list:contains(buff) then
                        comp:insert(buff)
                    end
                    
                end
                
                if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                    table.insert(matches, bset)
                end

            end

            if #matches > 0 then
                return set_combine(ranged, bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

            end
            return ranged

        end
        return {}

    end

    self.getWeaponSkillSet = function(spell)
        local skills = {}

        if spell and __statics.sets.weaponskills[self.mode][spell.name] then
            T(__statics.sets.weaponskills[self.mode][spell.name]):sort(function(a, b) return a > b end):key_filter(function(tp)
                
                if player.tp >= tp then
                    table.insert(skills, __statics.sets.weaponskills[self.mode][spell.name][tp])
                end
            
            end)

            if skills and #skills > 0 then
                local bsets = T(skills[1]):key_filter(function(slot) return not self.__CONST.SLOTS:contains(slot:lower()) end):sort()
                local buffs = T(T(player.buffs):map(function(id) return res.buffs[id] and res.buffs[id].en end)):sort()
                local matches = {}

                for bset in bsets:keyset():it() do
                    local comp = T{}

                    for buff in buffs:it() do
                        local list = T(bset:split(':'))

                        if list:contains(buff) then
                            comp:insert(buff)
                        end
                        
                    end
                    
                    if comp:sort():concat(':') == T(bset:split(':')):sort():concat(':') then
                        table.insert(matches, bset)
                    end

                end

                if #matches > 0 then
                    return set_combine(skills[1], bsets[T(matches):sort(function(a, b) return #a > #b end)[1]])

                end
                return skills[1]

            end

        end
        return {}

    end

    -- Profile Function.
    self.setProfile = function(commands)
        local settings = commands

        for i=1, #settings do

            if self.__CONST.PROFILELIST[i] and self[self.__CONST.PROFILELIST[i]] and tonumber(settings[i]) then
                self[self.__CONST.PROFILELIST[i]] = tonumber(settings[i])
            end

        end
        self.updateDisplay()
    
    end

    -- Simple chat log function.
    self.toChat = function(...)
        local message = T{...}

        if #message > 0 and #message % 2 == 0 then
            local build = {}

            for i=1, (#message / 2) do
                table.insert(build, string.format("%s", message[(i * 2) - 1]:color(message[i * 2])))
            end
            windower.add_to_chat(1, table.concat(build, ' '))

        end

    end

    -- Update Display.
    self.updateDisplay = function()
        local weapons   = __statics.weapons[self.__weapons] and __statics.weapons[self.__weapons].name or "Error"
        local idle      = __statics.sets.idle[self.__idle] and __statics.sets.idle[self.__idle].name or "Error"
        local engaged   = __statics.sets.engaged[self.mode][self.__engaged] and __statics.sets.engaged[self.mode][self.__engaged].name or "Error"
        local midnuke   = __statics.sets.midnuke[self.mode][self.__nukes] and __statics.sets.midnuke[self.mode][self.__nukes].name or "Error"
        local blue      = string.format('%s,%s,%s', 25, 165, 200)

        self.__display:text(string.format("<< [ \\cs(%s)%s\\cr ] + IDLE: \\cs(%s)%s\\cr + ENGAGED: \\cs(%s)%s\\cr + MIDNUKE: \\cs(%s)%s\\cr + {{ \\cs(%s)%s\\cr }} >>", blue, weapons:upper(), blue, idle:upper(), blue, engaged:upper(), blue, midnuke:upper(), blue, (self.mode == 1) and "ATTACK MODE" or "ACCURACY MODE"))
        if not self.__display:visible() then
            self.__display:show()
        end

    end

    -- Gearswap Events.
    self.precast = function(spell, midaction)
        local __inRange = spell.target and self.__CONST.RANGES[spell.range] and spell.target.distance <= (self.__CONST.RANGES[spell.range] + (spell.target.model_size + player.model_size))
        local __recast = windower.ffxi.get_spell_recasts()[spell.recast_id]

        if spell.action_type == "Item" then
            return

        elseif __recast and __recast > 0 or not __inRange then
            return cancel_spell()

        end
        
        if self.__CONST.ABILITIES:contains(spell.type) then
            equip(self.getMidcastSet(spell))
        
        elseif spell.name == 'Ranged' then
            equip(self.getPrecastSet(spell))
        
        elseif spell.type == 'WeaponSkill' then

            if player.tp >= 1000 then

                if self.__CONST.ELEMENTALWS:contains(spell.name) then
                    local obi = self.__CONST.OBIS[spell.element] or {name=''}
                    local distance = spell.target.distance

                    if spell.element == world.weather_element and world.day_element ~= obi.opposing and world.weather_intensity == 2 then
                        equip(set_combine(self.getWeaponSkillSet(spell), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}))

                    elseif spell.element == world.day_element and spell.element == world.weather_element then
                        equip(set_combine(self.getWeaponSkillSet(spell), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}))

                    elseif spell.target.distance < (8 + spell.target.model_size) then
                        equip(set_combine(self.getWeaponSkillSet(spell), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, {waist="Orpheus's Sash"}))

                    elseif spell.element == world.day_element or spell.element == world.weather_element then
                        equip(set_combine(self.getWeaponSkillSet(spell), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}))

                    else
                        equip(self.getWeaponSkillSet(spell))

                    end

                else
                    equip(self.getWeaponSkillSet(spell))

                end

            end

        else

            if player.main_job == 'BRD' and S{'Singing','Stringed Instrument','Wind Instrument'}:contains(spell.skill) then

                if S(self.__CONST.DUMMIES[self.dummy]):contains(spell.name) then
                    equip(set_combine(self.getPrecastSet(spell), {range='Blurred Harp'}, {range='Blurred Harp +1'}, {range='Terpander'}, {range='Daurdabla'}))

                elseif spell.name == "Honor March" then
                    local index, id, count, status = self.findItem("Marsyas")

                    if index and id and count and status and S{0,5}:contains(status) then
                        equip(set_combine(self.getPrecastSet(spell), {range="Marsyas"}))
                    end

                else
                    equip(self.getPrecastSet(spell))

                end

            else
                equip(self.getPrecastSet(spell))

            end
                
        end

    end

    self.midcast = function(spell)

        if (self.__CONST.ABILITIES:contains(spell.type) or spell.type == 'WeaponSkill') then
            return
        end

        if spell.name == 'Ranged' then
            local ranged = player.equipment and player.equipment.range and player.equipment.range ~= 'empty' and player.equipment.range or false

            if ranged then
                equip(self.getRangedSet(ranged))
            
            else
                equip(self.getRangedSet('Default'))

            end

        elseif self.__CONST[spell.type] then

            if self.__CONST[spell.type][1]:contains(spell.name) then
                equip(set_combine(__statics.sets.midcast[self.__CONST.PHYSICAL], self.getMidcastSet(spell.name)))

            elseif self.__CONST[spell.type][2]:contains(spell.name) then
                equip(set_combine(__statics.sets.midcast[self.__CONST.MAGICAL], self.getMidcastSet(spell.name)))

            elseif self.__CONST[spell.type][3]:contains(spell.name) then
                equip(set_combine(__statics.sets.midcast[self.__CONST.HYBRID], self.getMidcastSet(spell.name)))

            elseif self.__CONST[spell.type][4]:contains(spell.name) then
                equip(set_combine(__statics.sets.midcast[self.__CONST.WARDS], self.getMidcastSet(spell.name)))

            elseif self.__CONST[spell.type][5]:contains(spell.name) then
                equip(set_combine(__statics.sets.midcast[self.__CONST.DEBUFFS], self.getMidcastSet(spell.name)))

            end

        else
            
            if player.main_job == 'BRD' and S{'Singing','Stringed Instrument','Wind Instrument'}:contains(spell.skill) then

                if S(self.__CONST.DUMMIES[self.dummy]):contains(spell.name) then
                    equip(set_combine(__statics.sets.midcast[self.__CONST.DUMMY], {range='Blurred Harp'}, {range='Blurred Harp +1'}, {range='Terpander'}, {range='Daurdabla'}))

                elseif spell.name == "Honor March" then
                    local index, id, count, status = self.findItem("Marsyas")

                    if index and id and count and status and S{0,5}:contains(status) then
                        equip(set_combine(self.getMidcastSet(spell), {range="Marsyas"}))
                    end

                else
                    equip(self.getMidcastSet(spell))

                end

            elseif spell.skill == 'Geomancy' then

                if (spell.name):startswith('Indi') then
                    equip(set_combine(__statics.sets.midcast[self.__CONST.INDI], self.getMidcastSet(spell.name)))

                elseif (spell.name):startswith('Indi') then
                    equip(set_combine(__statics.sets.midcast[self.__CONST.GEO], self.getMidcastSet(spell.name)))

                end                

            else
                local obi = self.__CONST.OBIS[spell.element] or {name=''}
                local distance = spell.target.distance

                if spell.element == world.weather_element and world.day_element ~= obi.opposing and world.weather_intensity == 2 then
                    equip(set_combine(self.getMidnukeSet(), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, self.getMidcastSet(spell)))

                elseif spell.element == world.day_element and spell.element == world.weather_element then
                    equip(set_combine(self.getMidnukeSet(), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, self.getMidcastSet(spell)))

                elseif spell.target.distance < (8 + spell.target.model_size) then
                    equip(set_combine(self.getMidnukeSet(), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, {waist="Orpheus's Sash"}, self.getMidcastSet(spell)))

                elseif spell.element == world.day_element or spell.element == world.weather_element then
                    equip(set_combine(self.getMidnukeSet(), {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, self.getMidcastSet(spell)))

                else
                    equip(set_combine(self.getMidnukeSet(), self.getMidcastSet(spell)))

                end

            end

        end

    end
    
    self.aftercast = function(spell)

        if not self.__CONST[spell.type] then

            if player.status == 'Engaged' then
                equip(set_combine(self.getEngagedSet(), self.getWeaponSet().set))

            else
                equip(set_combine(self.getIdleSet(), self.getWeaponSet().set))

            end

        end

    end

    self.statusChange = function(new, old)

        if player.status == 'Engaged' then
            equip(self.getEngagedSet())

        else
            equip(self.getIdleSet())

        end

    end

    self.buffChange = function(name, gained, details)
        
        if player.status == 'Engaged' then
            equip(self.getEngagedSet())
        end

    end

    self.petChange = function(pet, gained)

    end

    self.petMidcast = function(spell)

    end

    self.petAftercast = function(spell)

        if self.__CONST[spell.type] then

            if player.status == 'Engaged' then
                equip(self.getEngagedSet())

            else
                equip(self.getIdleSet())

            end

        end

    end

    self.petStatus = function(new, old)

    end

    -- Metamethods.
    MT.__index = function(t, key) return rawget(__statics, key) or nil end

    -- Enable all slots.
    enable('main','sub','range','ammo','head','neck','ear1','ear2','body','hands','ring1','ring2','back','waist','legs','feet')

    -- Build Character Profile.
    if __profile and __profile.build then
        __profile.build(self)

    else
        self.toChat("Unable to find Gearswap Profile!", 218)

    end
    
    return self
    
end
return pm