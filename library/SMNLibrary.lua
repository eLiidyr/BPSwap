local library = {}
function library.new()
    local self = {}

    -- Summoner Pacts.
    local types = {'Physical','Magical','Hybrid','Ward','Debuff'}
    local pacts = {

        ['BloodPactRage'] = {

            S{'Punch','Rock Throw','Barracuda Dive','Claw','Welt','Axe Kick','Shock Strike','Camisado','Regal Scratch','Poison Nails','Moonlit Charge','Rock buster','Roundhouse','Tail Whip','Double Punch','Megalith Throw','Double Slap','Eclipse Bite','Mountain buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike','Volt Strike','Hysteric Assault','Crag Throw','Blindside','Regal Gash'},
            S{'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Clarsach Call','Diamond Dust','Judgement Bolt','Searing Light','Howling Moon','Ruinous Omen','Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Thunderspark','Meteorite','Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV','Sonic Buffet','Nether Blast','Zantetsuken','Meteor Strike','Geocrush','Grand Fall','Wind Blade','Tornado II','Heavenly Strike','Thunderstorm','Level ? Holy','Holy Mist','Lunar Bay','Night Terror','Conflag Strike','Impact'},
            S{'Flaming Crush','Burning Strike'},
            S{},
            S{},

        },
        ['BloodPactWard'] = {

            S{},
            S{},
            S{},
            S{'Altana\'s Favor','Healing Ruby','Raise II','Shining Ruby','Aerial Armor','Frost Armor','Reraise II','Katabatic Blades','Whispering Wind','Crimson Howl','Lightning Armor','Chinook','Ecliptic Growl','Glittering Ruby','Earthen Ward','Spring Water','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud','Healing Ruby II','Perfect Defense','Chronoshift','Earthen Armor','Fleet Wind','Inferno Howl','Wind’s Blessing','Soothing Ruby','Heavenward Howl','Pacifying Ruby','Hastega II','Soothing Current','Crystal Blessing'},
            S{'Lunatic Voice','Somnolence','Lunar Cry','Mewing Lullaby','Nightmare','Rolling Thunder','Lunar Roar','Slowga','Ultimate Terror','Sleepga','Bitter Elegy','Eerie Eye','Deconstruction','Tidal Roar','Diamond Storm','Shock Squall','Pavor Nocturnus'},

        }

    }
    
    -- Private Variables.
    local bp       = {}
    local settings = {
        
        ['Weapon Mode']     = 1,
        ["Idle Mode"]       = 1,
        ["Engaged Mode"]    = 1,
        ["Nuke Mode"]       = 1,
        ["Ranged Mode"]     = 1,
        ["Ranged Type"]     = 1,
        ["Combat Mode"]     = 1,
        ["Combat Modes"]    = {'Attack','Accuracy'},
        ["Ranged Types"]    = {'Default','Critical','Double Shot','Triple Shot'},
        ["Weapon Lock"]     = false,
        ["Gear Lock"]       = false,
        ["Impact"]          = false,
        ["Instruments"]     = {'Terpander','Daurdabla','Blurred Harp +1','Blurred Harp'},
        ["Dummy Songs"]     = {'Paeon','Operetta','Mambo'},
        ["Dummy Song"]      = 1,
        ["Instrument"]      = 1,
        ["Song Count"]      = 0,
        ["Flurry"]          = false,
        ["WS Options"]      = {},
        ['BloodPacts']      = pacts
        
    }
    
    self.events = {}
    self.loadSettings = function(b)
        bp = b
        enable('main','sub','range','ammo','head','neck','ear1','ear2','body','hands','ring1','ring2','back','waist','legs','feet')

        -- Keybinds.
        windower.send_command('bind @f9 gs c impactMode')

        return settings
    
    end

    self.precast = function(spell, midaction)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local abilities = S{'JobAbility','CorsairRoll','CorsairShot','Samba','Waltz','Jig','Scholar','Step','Flourish1','Flourish2','Flourish3','Effusion','Rune','Ward'}
        local pacts = S{'BloodPactRage','BloodPactWard'}
        local sets = bp.sets
        local user = bp.user
        
        if not midaction and sets then
            
            if user and user.Precast and user.Precast(bp, spell, midaction) then
                return
            end

            if spell.action_type == "Item" then
                return
            end
            
            if abilities:contains(spell.type) then

                if sets['Midcast'][spell.name] then

                    if sets['Midcast'][modes.combat][spell.name] then
                        equip(sets['Midcast'][modes.combat][spell.name])

                    else
                        equip(sets['Midcast'][spell.name])

                    end
                
                end

            elseif pacts:contains(spell.type) then
                equip(sets['Precast'][spell.type])
            
            elseif spell.name == 'Ranged' then
                
                if settings['Flurry'] and sets['Precast'][string.format('%s: Flurry', spell.name)] then
                    equip(sets['Precast'][string.format('%s: Flurry', spell.name)])
                    
                else
                    equip(sets['Precast'][spell.name])

                end
            
            elseif spell.type == 'WeaponSkill' then
                local offset = (spell.target.model_size + player.model_size)

                if spell.target and bp.ranges[spell.range] and spell.target.distance > (bp.ranges[spell.range] + offset) then
                    cancel_spell()
                end

                if player.tp >= 1000 then
                    local weather = sets['WeaponSkill'][modes.combat][string.format('%s Weather', spell.name)] and sets['WeaponSkill'][modes.combat][string.format('%s Weather', spell.name)] or {}
                    local obi = bp.core.Obis[spell.element]
                    local distance = spell.target.distance

                    if bp.core.ElementalWeaponskills:contains(spell.name) then
                        local set = bp.core.buildWeaponskillSet(spell, sets, modes, settings['WS Options'])

                        if obi and spell.element == world.weather_element and world.day_element ~= obi.opposing and world.weather_intensity == 2 then
                            equip(set, {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, weather)

                        elseif spell.element == world.day_element and spell.element == world.weather_element then
                            equip(set, {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, weather)

                        elseif spell.target.distance < (8 + spell.target.model_size) then
                            equip(set, {waist=obi and obi.name or ''}, {waist="Orpheus's Sash"}, weather)

                        elseif spell.element == world.day_element or spell.element == world.weather_element then
                            equip(set, {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, weather)

                        else
                            equip(set)

                        end

                    else
                        equip(bp.core.buildWeaponskillSet(spell, sets, modes, settings['WS Options']))

                    end

                end

            else

                if S{'Singing','Stringed Instrument','Wind Instrument'}:contains(spell.skill) and bp.player.main_job == 'BRD' then

                    if spell.name:match(settings['Dummy Songs'][settings['Dummy Song']]) then
                        equip(set_combine(sets["Precast"][spell.skill], sets["Precast"][spell.name], {range='Blurred Harp'}, {range='Blurred Harp +1'}, {range='Terpander'}, {range='Daurdabla'}))

                    elseif spell.name == "Honor March" and core.hasAeonic() then
                        equip(set_combine(sets["Precast"][spell.skill], sets["Precast"][spell.name], {range="Marsyas"}))

                    else
                        equip(set_combine(sets["Precast"][spell.skill], sets["Precast"][spell.name]))

                    end

                else
                    equip(set_combine(sets['Precast']['Default'], sets['Precast'][spell.skill], sets['Precast'][spell.name]))

                end
                    
            end
            
        end
    
    end

    self.midcast = function(spell, midaction)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local pacts = S{'BloodPactRage','BloodPactWard'}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.Midcast(bp, spell, midaction) then
                return
            end
            
            if spell.name == 'Ranged' then
                equip(set_combine(sets['Ammo'], sets['Ranged'][settings['Ranged Types'][settings['Ranged Type']]][modes.combat][modes.ranged].set))

            elseif pacts:contains(spell.type) then
                return

            else
                
                if S{'Singing','Stringed Instrument','Wind Instrument'}:contains(spell.skill) and bp.player.main_job == 'BRD' then

                    if spell.name:match(settings['Dummy Songs'][settings['Dummy Song']]) then
                        equip(set_combine(sets['Idle'][modes.idle], {range=settings['Instruments'][settings['Instrument']]}))

                    elseif spell.name == "Honor March" and bp.core.hasAeonic() then

                        if sets['Midcast'][modes.combat][spell.skill] then

                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat][spell.skill], sets['Midcast'][modes.combat][spell.name], {range="Marsyas"}))
    
                            else
                                equip(set_combine(sets['Midcast'][modes.combat][spell.skill], {range="Marsyas"}))
    
                            end
    
                        elseif sets['Midcast'][spell.skill] then
    
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast'][spell.skill], sets['Midcast'][spell.name], {range="Marsyas"}))
    
                            else
                                equip(set_combine(sets['Midcast'][spell.skill], {range="Marsyas"}))
    
                            end
    
                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(sets['Midcast'][modes.combat][spell.name], {range="Marsyas"})
    
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name], {range="Marsyas"})
    
                        end

                    else
                        
                        if sets['Midcast'][modes.combat][spell.skill] then
                            
                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat][spell.skill], sets['Midcast'][modes.combat][spell.name]))
    
                            else
                                equip(set_combine(sets['Midcast'][modes.combat][spell.skill]))
    
                            end
    
                        elseif sets['Midcast'][spell.skill] then
                            
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast'][spell.skill], sets['Midcast'][spell.name]))
    
                            else
                                equip(set_combine(sets['Midcast'][spell.skill]))
    
                            end
    
                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(sets['Midcast'][modes.combat][spell.name])
    
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name])
    
                        end

                    end

                elseif spell.skill == 'Geomancy' then

                    if string.find(spell.name:lower(), 'indi') then
                        
                        if sets['Midcast']['Indicolure'] then
                            equip(sets['Midcast']['Indicolure'])
                        end

                    elseif string.find(spell.name:lower(), 'geo') then
                        
                        if sets['Midcast']['Geocolure'] then
                            equip(sets['Midcast']['Geocolure'])
                        end

                    end

                elseif not spell.status and (S{'Elemental Magic','Ninjutsu'}:contains(spell.skill) or (spell.skill == 'Blue Magic' and spell.targets:contains('Enemy') and not T{-1,15}:contains(spell.element))) then
                    local weather = sets['Midcast'][modes.combat][string.format('%s Weather', spell.name)] and sets['Midcast'][modes.combat][string.format('%s Weather', spell.name)] or sets['Midcast'][string.format('%s Weather', spell.name)]
                    local set = sets['Midnuke'][modes.combat][modes.nuke].set
                    local obi = bp.core.Obis[spell.element]
                    local distance = spell.target.distance

                    if obi and spell.element == world.weather_element and world.day_element ~= obi.opposing and world.weather_intensity == 2 then
                        equip(set, {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, weather)

                    elseif spell.element == world.day_element and spell.element == world.weather_element then
                        equip(set, {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, weather)

                    elseif spell.target.distance < (8 + spell.target.model_size) then
                        equip(set, {waist=obi and obi.name or ''}, {waist="Orpheus's Sash"}, weather)

                    elseif spell.element == world.day_element or spell.element == world.weather_element then
                        equip(set, {waist=obi and obi.name or ''}, {waist="Hachirin-no-Obi"}, weather)

                    else
                        equip(set)

                    end
                    
                else
                    local buffed = bp.core.getBuffedMidcastSet(spell, sets, modes)

                    if buffed then
                        
                        if spell.targets:contains('Enemy') then

                            if sets['Midcast'][modes.combat] and sets['Midcast'][modes.combat][spell.name] and sets['Midcast'][modes.combat][spell.name].buffed and sets['Midcast'][modes.combat][spell.name].buffed[buffed] then
                                equip(sets['Midcast'][modes.combat][spell.name], sets['Midcast'][modes.combat][spell.name].buffed[buffed])

                            elseif sets['Midcast'][spell.name] and sets['Midcast'][spell.name].buffed and sets['Midcast'][spell.name].buffed[buffed] then
                                equip(sets['Midcast'][spell.name], sets['Midcast'][spell.name].buffed[buffed])

                            end

                        else

                            if sets['Midcast'][spell.name] and sets['Midcast'][spell.name].buffed and sets['Midcast'][spell.name].buffed[buffed] then
                                equip(sets['Midcast'][spell.name], sets['Midcast'][spell.name].buffed[buffed])
                            end

                        end

                    else

                        if spell.targets:contains('Enemy') then

                            if sets['Midcast'][modes.combat][spell.skill] then

                                if sets['Midcast'][modes.combat][spell.name] then
                                    equip(set_combine(sets['Midcast'][modes.combat][spell.skill], sets['Midcast'][modes.combat][spell.name]))

                                else
                                    equip(set_combine(sets['Midcast'][modes.combat][spell.skill]))

                                end

                            elseif sets['Midcast'][modes.combat][spell.name] then

                                if sets['Midcast'][spell.skill] then
                                    equip(set_combine(sets['Midcast'][spell.skill], sets['Midcast'][modes.combat][spell.name]))

                                else
                                    equip(sets['Midcast'][modes.combat][spell.name])

                                end

                            elseif sets['Midcast'][spell.skill] then

                                if sets['Midcast'][spell.name] then
                                    equip(set_combine(sets['Midcast'][spell.skill], sets['Midcast'][spell.name]))

                                else
                                    equip(set_combine(sets['Midcast'][spell.skill]))

                                end

                            elseif sets['Midcast'][spell.name] then
                                equip(sets['Midcast'][spell.name])

                            end

                        else

                            if sets['Midcast'][spell.skill] then

                                if sets['Midcast'][spell.name] then
                                    equip(set_combine(sets['Midcast'][spell.skill], sets['Midcast'][spell.name]))

                                else
                                    equip(set_combine(sets['Midcast'][spell.skill]))

                                end

                            elseif sets['Midcast'][spell.name] then
                                equip(sets['Midcast'][spell.name])

                            end

                        end

                    end

                end
                    
            end

        end
    
    end

    self.aftercast = function(spell, midaction)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local pacts = S{'BloodPactRage','BloodPactWard'}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.Aftercast and user.Aftercast(bp, spell, midaction) then
                return
            end

            if not pacts:contains(spell.type) then

                if player.status == 'Engaged' then
                    equip(sets['Engaged'][modes.combat][modes.engaged].set)
                
                else 
                    equip(sets['Idle'][modes.idle].set)
                
                end

            end

        end
    
    end

    self.statusChange = function(new, old, midaction)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.StatusChange and user.statusChange(bp, new, old, midaction) then
                return
            end
            
            if player.status == 'Engaged' then
                local aftermath = bp.core.getAftermathLevel()
                local buffed = bp.core.getBuffedEngagedSet(sets, modes)
                
                if sets['Engaged'][modes.combat][modes.engaged][aftermath] then

                    if buffed and sets['Engaged'][modes.combat][modes.engaged][buffed] then
                        equip(set_combine(sets['Engaged'][modes.combat][modes.engaged].set, sets['Engaged'][modes.combat][modes.engaged][aftermath], sets['Engaged'][modes.combat][modes.engaged][buffed]))

                    else
                        equip(set_combine(sets['Engaged'][modes.combat][modes.engaged].set, sets['Engaged'][modes.combat][modes.engaged][aftermath]))

                    end

                else

                    if buffed and sets['Engaged'][modes.combat][modes.engaged][buffed] then
                        equip(sets['Engaged'][modes.combat][modes.engaged].set, sets['Engaged'][modes.combat][modes.engaged][buffed])

                    else
                        equip(sets['Engaged'][modes.combat][modes.engaged].set)

                    end

                end
            
            else 
                equip(sets['Idle'][modes.idle].set)
            
            end

        end
        
    end

    self.buffChange = function(name, gain, details, midaction)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local sets = bp.sets
        local user = bp.user

        if sets and not midaction then

            if user and user.buffChange and user.buffChange(bp, name, gain, details, midaction) then
                return
            end

            if gain then
                
            else
                
            end

            if player.status == 'Engaged' then
                local aftermath = bp.core.getAftermathLevel()
                local buffed = bp.core.getBuffedEngagedSet(sets, modes)
                
                if sets['Engaged'][modes.combat][modes.engaged][aftermath] then

                    if buffed and sets['Engaged'][modes.combat][modes.engaged][buffed] then
                        equip(set_combine(sets['Engaged'][modes.combat][modes.engaged].set, sets['Engaged'][modes.combat][modes.engaged][aftermath], sets['Engaged'][modes.combat][modes.engaged][buffed]))

                    else
                        equip(set_combine(sets['Engaged'][modes.combat][modes.engaged].set, sets['Engaged'][modes.combat][modes.engaged][aftermath]))

                    end

                else

                    if buffed and sets['Engaged'][modes.combat][modes.engaged][buffed] then
                        equip(sets['Engaged'][modes.combat][modes.engaged].set, sets['Engaged'][modes.combat][modes.engaged][buffed])

                    else
                        equip(sets['Engaged'][modes.combat][modes.engaged].set)

                    end

                end
            
            end

        end
    
    end

    self.petChange = function(pet, gain)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.petChange and user.petChange(bp, pet, gain) then
                return
            end

        end
    
    end

    self.petMidcast = function(spell)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local pacts = S{'BloodPactRage','BloodPactWard'}
        local sets = bp.sets
        local user = bp.user

        if sets then
            
            if user and user.petMidcast and user.petMidcast(bp, spell) then
                return
            end

            if pacts:contains(spell.type) then

                if settings['BloodPacts'][spell.type] then
                    local pact = settings['BloodPacts'][spell.type]

                    if pact[1]:contains(spell.name) then

                        if sets['Midcast'][modes.combat]['Physical'] then

                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat]['Physical'], sets['Midcast'][modes.combat][spell.name]))
                            
                            else
                                equip(sets['Midcast'][modes.combat]['Physical'])

                            end

                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(set_combine(sets['Midcast'][modes.combat][spell.name]))

                        elseif sets['Midcast']['Physical'] then
                            
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast']['Physical'], sets['Midcast'][spell.name]))
                            
                            else
                                equip(sets['Midcast']['Physical'])

                            end
                        
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name])

                        end

                    elseif pact[2]:contains(spell.name) then

                        if sets['Midcast'][modes.combat]['Magical'] then

                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat]['Magical'], sets['Midcast'][modes.combat][spell.name]))
                            
                            else
                                equip(sets['Midcast'][modes.combat]['Magical'])

                            end

                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(set_combine(sets['Midcast'][modes.combat][spell.name]))

                        elseif sets['Midcast']['Magical'] then
                            
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast']['Magical'], sets['Midcast'][spell.name]))
                            
                            else
                                equip(sets['Midcast']['Magical'])

                            end
                        
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name])

                        end

                    elseif pact[3]:contains(spell.name) then

                        if sets['Midcast'][modes.combat]['Hybrid'] then

                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat]['Hybrid'], sets['Midcast'][modes.combat][spell.name]))
                            
                            else
                                equip(sets['Midcast'][modes.combat]['Hybrid'])

                            end

                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(set_combine(sets['Midcast'][modes.combat][spell.name]))

                        elseif sets['Midcast']['Hybrid'] then
                            
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast']['Hybrid'], sets['Midcast'][spell.name]))
                            
                            else
                                equip(sets['Midcast']['Hybrid'])

                            end
                        
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name])

                        end

                    elseif pact[4]:contains(spell.name) then

                        if sets['Midcast'][modes.combat]['Ward'] then

                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat]['Ward'], sets['Midcast'][modes.combat][spell.name]))
                            
                            else
                                equip(sets['Midcast'][modes.combat]['Ward'])

                            end

                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(set_combine(sets['Midcast'][modes.combat][spell.name]))

                        elseif sets['Midcast']['Ward'] then
                            
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast']['Ward'], sets['Midcast'][spell.name]))
                            
                            else
                                equip(sets['Midcast']['Ward'])

                            end
                        
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name])

                        end

                    elseif pact[5]:contains(spell.name) then

                        if sets['Midcast'][modes.combat]['Debuff'] then

                            if sets['Midcast'][modes.combat][spell.name] then
                                equip(set_combine(sets['Midcast'][modes.combat]['Debuff'], sets['Midcast'][modes.combat][spell.name]))
                            
                            else
                                equip(sets['Midcast'][modes.combat]['Debuff'])

                            end

                        elseif sets['Midcast'][modes.combat][spell.name] then
                            equip(set_combine(sets['Midcast'][modes.combat][spell.name]))

                        elseif sets['Midcast']['Debuff'] then
                            
                            if sets['Midcast'][spell.name] then
                                equip(set_combine(sets['Midcast']['Debuff'], sets['Midcast'][spell.name]))
                            
                            else
                                equip(sets['Midcast']['Debuff'])

                            end
                        
                        elseif sets['Midcast'][spell.name] then
                            equip(sets['Midcast'][spell.name])

                        end

                    end

                end

            end

        end
        
    end

    self.petAftercast = function(spell)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local pacts = S{'BloodPactRage','BloodPactWard'}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.petAftercast and user.petAftercast(bp, spell) then
                return
            end

            if pacts:contains(spell.type) then

                if player.status == 'Engaged' then
                    equip(sets['Engaged'][modes.combat][modes.engaged].set)
                
                else 
                    equip(sets['Idle'][modes.idle].set)
                
                end

            end

        end
    
    end

    self.petStatus = function(new, old)
        
        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.petStatusChange and user.petStatusChange(bp, new, old) then
                return
            end

        end

    end

    self.commands = function(command)

        if not bp then
            return
        end

        local modes = {idle=settings['Idle Mode'], engaged=settings['Engaged Mode'], ranged=settings['Ranged Mode'], nuke=settings['Nuke Mode'], combat=bp.core.getCombatMode(), weapon=settings['Weapon Mode']}
        local sets = bp.sets
        local user = bp.user

        if sets then

            if user and user.commands and user.commands(bp, command) then
                return
            end

            if command == 'impactMode' then
                settings['Impact'] = settings['Impact'] ~= true and true or false
                
                if not settings['Impact'] then
                    enable('body','head')
                    
                    if bp.player.status == 1 then
                        equip(bp.sets['Engaged'][modes.combat][modes.engaged].set)
                    else 
                        equip(bp.sets['Idle'][modes.idle].set)
                    end
                    
                else
                    
                    if sets['Midcast'][modes.combat]['Impact'] then
                        equip(sets['Midcast'][modes.combat]['Impact'])

                    elseif sets['Midcast']['Impact'] then
                        equip(sets['Midcast']['Impact'])

                    end
                    disable('body','head')
                    
                end
                windower.add_to_chat(1, string.format('%s %s %s', '<< Impact Mode:':color(bp.color), tostring(settings['Impact']):upper():color(bp.color+3), '>>':color(bp.color)))

            elseif command == 'equip_physical' then
                equip(sets['Midcast'][modes.combat]['Physical'])

            elseif command == 'equip_magical' then
                equip(sets['Midcast'][modes.combat]['Magical'])

            elseif command == 'equip_hybrid' then
                equip(sets['Midcast'][modes.combat]['Hybrid'])
                
            end

        end
    
    end
    
    return self
    
end
return library.new()