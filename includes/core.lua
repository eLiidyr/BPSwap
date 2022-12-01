local core = {}
local texts = require("texts")
local res = require("resources")
function core.load()
    local self = {}

    -- Private Variables.
    local layout    = {pos={x=200, y=200}, colors={text={alpha=255, r=245, g=200, b=20}, bg={alpha=200, r=0, g=0, b=0}, stroke={alpha=255, r=0, g=0, b=0}}, font={name='Lucida Console', size=8}, padding=2, stroke_width=1, draggable=false}
    local display   = texts.new('', {flags={draggable=false}})
    local important = string.format('%s,%s,%s', 25, 165, 200)
    local debug     = true

    -- Public Variables.
    self.ElementalWeaponskills = S{
        'Gust Slash','Cyclone','Energy Steal','Energy Drain','Aeolian Edge','Burning Blade','Red Lotus Blade','Shining Blade','Seraph Blade','Spirits Within','Sanguine Blade','Atonement','Frostbite','Freezebite','Herculean Slash','Cloudsplitter','Primal Rend','Dark Harvest','Shadow of Death','Infernal Scythe','Thunder Thrust','Raiden Thrust','Blade: Teki','Blade: To','Blade: Chi','Blade: Ei','Blade: Yu',
        'Tachi: Goten','Tachi: Kagero','Tachi: Jinpu','Tachi: Koki','Shining Strike','Seraph Strike','Flash Nova','Rock Crusher','Earth Crusher','Starburst','Sunburst','Cataclysm','Vidohunir','Garland of Bliss','Omniscience','Flaming Arrow','Hot Shot','Wildfire','Trueflight','Leaden Salute'
    }

    self.Obis = {['Fire']={name='Rarin Obi',opposing='Water'},['Ice']={name='Hyorin Obi',opposing='Fire'},['Wind']={name='Furin Obi',opposing='Ice'},['Earth']={name='Dorin Obi',opposing='Wind'},['Lightning']={name='Rairin Obi',opposing='Earth'},['Water']={name='Suirin Obi',opposing='Lightning'},['Light']={name='Korin Obi',opposing='Dark'},['Dark']={name='Anrin Obi', opposing='Light'}}

    -- Private Functions.
    local resetDisplay = function()
        display:font(layout.font.name)
        display:color(layout.colors.text.r, layout.colors.text.g, layout.colors.text.b)
        display:alpha(layout.colors.text.alpha)
        display:size(layout.font.size)
        display:pad(layout.padding)
        display:bg_color(layout.colors.bg.r, layout.colors.bg.g, layout.colors.bg.b)
        display:bg_alpha(layout.colors.bg.alpha)
        display:stroke_width(layout.stroke_width)
        display:stroke_color(layout.colors.stroke.r, layout.colors.stroke.g, layout.colors.stroke.b)
        display:stroke_alpha(layout.colors.stroke.alpha)
        display:update()

    end

    self.printDebug = function(msg)
        if debug then
            windower.add_to_chat(1, string.format('%s %s', ('BPSWAP DEBUG >>'):color(8), (msg or 'Debug message error!'):color(bp.color)))
        end
    end

    self.buildHUD = function(bp)
        resetDisplay()
        self.updateDisplay()

        if bp and bp.user and bp.user.setPOS then
            display:pos(bp.user.setPOS())
        end

    end

    self.updateDisplay = function()

        if bp.settings and bp.sets then
            local texts = {

                string.format('<< IDLE: \\cs(%s)%s\\cr', important, self.getIdleSet():upper() or 'FAILED!'),
                string.format('ENGAGED: \\cs(%s)%s\\cr', important, self.getEngagedSet():upper() or 'FAILED!'),
                string.format('MIDNUKE: \\cs(%s)%s\\cr', important, self.getNukeSet():upper() or 'FAILED!'),
                string.format('RANGED: \\cs(%s)%s\\cr', important, self.getRangedSet():upper() or 'FAILED!'),
                string.format('{{\\cs(%s)%s MODE\\cr}} >>', important, self.getCombatMode():upper() or 'FAILED!'),

            }
            display:text(table.concat(texts, ' + '))
            display:update()
            display:show()

        end

    end

    self.getIdleSet = function()

        if bp.settings and bp.sets and bp.settings['Idle Mode'] and bp.sets['Idle'][bp.settings['Idle Mode']] then
            return bp.sets['Idle'][bp.settings['Idle Mode']].name
        end
        return {}

    end

    self.getEngagedSet = function()

        if bp.settings and bp.sets and bp.sets['Engaged'][self.getCombatMode()] and bp.sets['Engaged'][self.getCombatMode()][bp.settings['Engaged Mode']] then
            return bp.sets['Engaged'][self.getCombatMode()][bp.settings['Engaged Mode']].name
        end
        return {}

    end

    self.getNukeSet = function()

        if bp.settings and bp.sets and bp.sets['Midnuke'][self.getCombatMode()] and bp.sets['Midnuke'][self.getCombatMode()][bp.settings['Nuke Mode']] then
            return bp.sets['Midnuke'][self.getCombatMode()][bp.settings['Nuke Mode']].name
        end
        return {}

    end

    self.getRangedSet = function()

        if bp.settings and bp.sets and bp.settings['Ranged Types'][bp.settings['Ranged Type']] then
            local type = bp.settings['Ranged Types'][bp.settings['Ranged Type']]

            if bp.sets['Ranged'][type] and bp.sets['Ranged'][type][self.getCombatMode()] and bp.sets['Ranged'][type][self.getCombatMode()][bp.settings['Ranged Mode']] then
                return bp.sets['Ranged'][type][self.getCombatMode()][bp.settings['Ranged Mode']].name
            end

        end
        return {}

    end

    self.getCombatMode = function()

        if bp.settings and bp.sets and bp.settings['Combat Modes'] and bp.settings['Combat Modes'][bp.settings['Combat Mode']] then
            return bp.settings['Combat Modes'][bp.settings['Combat Mode']]
        end
        return {}

    end

    self.getWeaponSet = function()

        if bp.settings and bp.sets and bp.settings['Weapon Mode'] and bp.sets['Weapons'] and bp.sets['Weapons'][bp.settings['Weapon Mode']] then
            return bp.sets['Weapons'][bp.settings['Weapon Mode']]
        end
        return {}

    end

    self.getAftermathLevel = function()

        if buffactive["Aftermath: Lv.3"] then
            return 3

        elseif buffactive["Aftermath: Lv.2"] then
            return 2

        elseif buffactive["Aftermath: Lv.1"] then
            return 1

        end
        return 0

    end
    
    self.findItemByName = function(name, bag)
        local items = windower.ffxi.get_items(bag or 0)
        
        if name and (name ~= "" or name ~= "None") then
        
            for index, item in ipairs(items) do
                
                if item and index and item.id then
                    local found_item  = res.items[item.id]
    
                    if found_item and found_item.en then
                        
                        if name:sub(1, #name):lower() == found_item.en:sub(1, #name):lower() then
                            return found_item
                        end
                        
                    end
                    
                end
            
            end
            
        end
        return false
        
    end
    
    self.hasAeonic = function()
        
        if (self.findItemByName("Marsyas", 0) or self.findItemByName("Marsyas", 8) or self.findItemByName("Marsyas", 10) or self.findItemByName("Marsyas", 11) or self.findItemByName("Marsyas", 12)) then
            return true
        end
        return false
        
    end
    
    self.getStorm = function()
    
        if buffactive["Firestorm"] then
            return 178
        
        elseif buffactive["Hailstorm"] then
            return 179
        
        elseif buffactive["Windstorm"] then
            return 180
        
        elseif buffactive["Sandstorm"] then
            return 181
        
        elseif buffactive["Thunderstorm"] then
            return 182
        
        elseif buffactive["Rainstorm"] then
            return 183
        
        elseif buffactive["Aurorastorm"] then
            return 184
        
        elseif buffactive["Voidstorm"] then
            return 185
        
        end
        return false
        
    end
    
    self.songCount = function()
        local player = windower.ffxi.get_player()
        local songs  = 0
        
        if player and player.buffs then
            local buffs = player.buffs
            
            for _,v in ipairs(buffs) do
                
                if v >= 195 and v <= 223 and v ~= 217 and v ~= 223 then
                    songs = (songs + 1)
                end
                
            end
            
        end
        return songs
    
    end
    
    self.getAmmoCount = function()
        local count = windower.ffxi.get_items(windower.ffxi.get_items()['equipment']['ammo_bag'], windower.ffxi.get_items()['equipment']['ammo']).count
        return count and count > 0 and count <= 99 and count or 0
    end

    self.getBuffedEngagedSet = function(sets, modes)
        
        if sets and modes then

            if sets['Engaged'] and sets['Engaged'][modes.combat] and sets['Engaged'][modes.combat][modes.engaged] then
                local engaged = T(sets['Engaged'][modes.combat][modes.engaged])

                if engaged then
                    local buffs = engaged:keyset():filter(function(key)
                        local split = tostring(key) ~= nil and tostring(key):split(":") or false

                        if split then

                            for b in T(bp.player.buffs):it() do

                                if bp.res.buffs[b] and key:find(bp.res.buffs[b].en) then
                                    local active = true

                                    for s in S(split):it() do

                                        if not buffactive[s:lower()] then
                                            active = false
                                        end

                                    end

                                    if active then
                                        return key
                                    end

                                end

                            end

                        end

                    end)

                    if buffs:length() > 0 then
                        local set = false
                        
                        for b in T(buffs):it() do

                            if not set then
                                set = b

                            elseif set and #b > #set then
                                set = b

                            end

                        end
                        return set
                        
                    end
                    return false

                end

            end

        end

    end

    self.getBuffedMidcastSet =  function(spell, sets, modes)
        
        if spell and sets and modes then

            if sets['Midcast'] and sets['Midcast'][modes.combat] and sets['Midcast'][modes.combat][spell.name] and sets['Midcast'][modes.combat][spell.name] then
                local buffs = T(sets['Midcast'][modes.combat][spell.name]):keyset():filter(function(key)
                    local split = tostring(key) ~= nil and tostring(key):split(":") or false

                    if split then

                        for b in T(bp.player.buffs):it() do

                            if bp.res.buffs[b] and key:find(bp.res.buffs[b].en) then
                                local active = true

                                for s in S(split):it() do

                                    if not buffactive[s:lower()] then
                                        active = false
                                    end

                                end

                                if active then
                                    return key
                                end

                            end

                        end

                    end
                
                end)

                if buffs:length() > 0 then
                    local splits = {set=false, b=false}
                    local set = false
                    
                    for b in T(buffs):it() do
                        splits.b = #b:split(":")

                        if not set then
                            splits.set, set = splits.b, b

                        elseif set and splits.b > splits.set then
                            splits.set, set = splits.b, b

                        end

                    end
                    return set
                    
                end

            elseif sets['Midcast'] and sets['Midcast'][spell.name] then
                local buffs = T(sets['Midcast'][spell.name]):keyset():filter(function(key)
                    local split = tostring(key) ~= nil and tostring(key):split(":") or false

                    if split then

                        for b in T(bp.player.buffs):it() do

                            if bp.res.buffs[b] and key:find(bp.res.buffs[b].en) then
                                local active = true

                                for s in S(split):it() do

                                    if not buffactive[s:lower()] then
                                        active = false
                                    end

                                end

                                if active then
                                    return key
                                end

                            end

                        end

                    end
                
                end)

                if buffs:length() > 0 then
                    local splits = {set=false, b=false}
                    local set = false
                    
                    for b in T(buffs):it() do
                        splits.b = #b:split(":")

                        if not set then
                            splits.set, set = splits.b, b

                        elseif set and splits.b > splits.set then
                            splits.set, set = splits.b, b

                        end

                    end
                    return set
                    
                end
                
            end

        end
        return {}

    end

    self.buildWeaponskillSet = function(spell, sets, modes, options)
        table.insert(options, "Default")

        if spell and sets and modes then
            local list = T(sets['WeaponSkill'][modes.combat][spell.name]) or false

            if list:length() > 0 and options and #options > 0 then
                local active = S(options):filter(function(key) return buffactive[key:lower()] and key end)
                local inactive = S(options) - S(active)
                local size = 0

                if active:length() > 0 then
                    local valid = list:keyset():filter(function(key)

                        for a in active:it() do

                            if key:match(a) and #key > size then
                                local pass = true

                                for b in inactive:it() do

                                    if key:match(b) then
                                        pass = false
                                    end

                                end

                                if pass then
                                    size = #key
                                    return key
                                end

                            end

                        end

                    end)
                    
                    if valid:length() > 0 then
                        local valid = T(valid)

                        if sets['WeaponSkill'][modes.combat][spell.name][valid[1]] then
                            local options = sets['WeaponSkill'][modes.combat][spell.name][valid[1]]
                            local highest = 0
                            local set = options[0]

                            for tp, update in pairs(options) do
                                                                
                                if player.tp >= tp and tp >= highest then
                                    set, highest = update, tp
                                end

                            end
                            return set

                        end

                    elseif sets['WeaponSkill'][modes.combat][spell.name]['Default'] and sets['WeaponSkill'][modes.combat][spell.name]['Default'][0] then
                        return sets['WeaponSkill'][modes.combat][spell.name]['Default'][0]

                    end

                end

            end
            return {}

        end

    end

    self.commands = function(command)
        
        if command then
            local modes = {weapon=bp.settings['Weapon Mode'], idle=bp.settings['Idle Mode'], engaged=bp.settings['Engaged Mode'], ranged=bp.settings['Ranged Mode'], nuke=bp.settings['Nuke Mode'], combat=bp.settings["Combat Modes"][bp.settings['Combat Mode']]}
            
            if command:sub(1, 3) == 'pos' then
                local commands = command:split(' ')

                if commands[2] then
                    display:pos(tonumber(commands[2]), tonumber(commands[3]) or display:pos_y())
                end

            elseif command == 'weapon' and bp.sets['Weapons'] and bp.sets['Weapons'][1] then
                bp.settings['Weapon Mode'] = bp.sets['Weapons'][modes.weapon + 1] ~= nil and (modes.weapon + 1) or 1

                do
                    windower.add_to_chat(1, string.format('%s %s %s', '<< Weapon Mode:':color(bp.color), self.getWeaponSet().name:color(bp.color+3), '>>':color(bp.color)))
                    
                    if self.getWeaponSet().equip then
                        equip(self.getWeaponSet().set)
                    end

                end

            elseif command == '_IdleMode' and bp.sets['Idle'] and bp.sets['Idle'][1] then
                bp.settings['Idle Mode'] = bp.sets['Idle'][modes.idle + 1] ~= nil and (modes.idle + 1) or 1

                do
                    equip(bp.sets['Idle'][bp.settings['Idle Mode']].set)
                    windower.add_to_chat(1, string.format('%s %s %s', '<< Idle Mode:':color(bp.color), self.getIdleSet():color(bp.color+3), '>>':color(bp.color)))
                end
            
            elseif command == '_EngagedMode' and bp.sets['Engaged'] and bp.sets['Engaged'][modes.combat] and bp.sets['Engaged'][modes.combat][1] then
                bp.settings['Engaged Mode'] = bp.sets['Engaged'][modes.combat][modes.engaged + 1] ~= nil and (modes.engaged + 1) or 1

                do
                    equip(bp.sets['Engaged'][self.getCombatMode()][bp.settings['Engaged Mode']].set)
                    windower.add_to_chat(1, string.format('%s %s %s', '<< Engaged Mode:':color(bp.color), self.getEngagedSet():color(bp.color+3), '>>':color(bp.color)))
                end

            elseif command == '_NukeMode' and bp.sets['Midnuke'] and bp.sets['Midnuke'][modes.combat] and bp.sets['Midnuke'][modes.combat][1] then
                bp.settings['Nuke Mode'] = bp.sets['Midnuke'][modes.combat][modes.nuke + 1] ~= nil and (modes.nuke + 1) or 1
                windower.add_to_chat(1, string.format('%s %s %s', '<< Nuke Mode:':color(bp.color), self.getNukeSet():color(bp.color+3), '>>':color(bp.color)))
            
            elseif command == '_RangedMode' then

                if bp.settings['Ranged Types'][bp.settings['Ranged Type']] then
                    local type = bp.settings['Ranged Types'][bp.settings['Ranged Type']]

                    if bp.sets['Ranged'][type] and bp.sets['Ranged'][type][self.getCombatMode()] then
                        bp.settings['Ranged Mode'] = bp.sets['Ranged'][type][self.getCombatMode()][bp.settings['Ranged Mode'] + 1] ~= nil and (bp.settings['Ranged Mode'] + 1) or 1
                    end
                    windower.add_to_chat(1, string.format('%s %s %s', '<< Ranged Mode:':color(bp.color), self.getRangedSet():color(bp.color+3), '>>':color(bp.color)))

                end
            
            elseif command == '_CombatMode' then
                bp.settings['Combat Mode'] = bp.settings['Combat Modes'][bp.settings['Combat Mode'] + 1] ~= nil and (bp.settings['Combat Mode'] + 1) or 1
                windower.add_to_chat(1, string.format('%s %s %s', '<< Combat Mode:':color(bp.color), bp.settings['Combat Modes'][bp.settings['Combat Mode']]:color(bp.color+3), '>>':color(bp.color)))
            
            elseif command == '_LockWeapon' then
                bp.settings["Weapon Lock"] = bp.settings["Weapon Lock"] ~= true and true or false
                
                if not bp.settings['Weapon Lock'] then 
                    enable('main','sub','range','ammo')
                    
                else
                    disable('main','sub','range','ammo')
                    
                end
                windower.add_to_chat(1, string.format('%s %s %s', '<< Weapon Slots Locked:':color(bp.color), tostring(bp.settings["Weapon Lock"]):upper():color(bp.color+3), '>>':color(bp.color)))
            
            elseif command == '_LockGear' then
                bp.settings["Gear Lock"] = bp.settings["Gear Lock"] ~= true and true or false
                
                if not bp.settings["Gear Lock"] then            
                    enable('main','sub','range','ammo','head','neck','ear1','ear2','body','hands','ring1','ring2','back','waist','legs','feet')
                    
                    if player.status == 'Engaged' then
                        equip(bp.sets['Engaged'][self.getCombatMode()][modes.engaged].set)
                        
                    else 
                        equip(bp.sets['Idle'][modes.idle].set)
                        
                    end	
                    
                else
                    disable('main','sub','range','ammo','head','neck','ear1','ear2','body','hands','ring1','ring2','back','waist','legs','feet')
                    
                end
                windower.add_to_chat(1, string.format('%s %s %s', '<< All Gear Locked:':color(bp.color), tostring(bp.settings["Gear Lock"]):upper():color(bp.color+3), '>>':color(bp.color)))

            else
                local commands = T(command:split(' '))

                if commands and #commands > 0 then
                    local command = table.remove(commands, 1):lower()
                    
                    if command == '__idleset' and commands[1] then
                        local set = tonumber(table.remove(commands, 1))

                        if set ~= nil and bp.sets['Idle'][set] then
                            equip(bp.sets['Idle'][set].set)
                        end

                    end

                end
                
            end
            self.updateDisplay()

        end

    end

    local pinger = 0
    windower.raw_register_event('prerender', function(id)
        
        if (os.time()-pinger) > 1 then

            if bp and bp.player and bp.settings then

                if not T(bp.player.buffs):contains(581) then
                    bp.settings['Flurry'] = false

                elseif T(bp.player.buffs):contains(581) then
                    bp.settings['Flurry'] = true
                    
                end
                pinger = os.time()

            end

        end

    end)
    
    return self
    
end
return core.load()