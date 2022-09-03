-- Written by: Eliidyr.
-----------------------
-- Version: 1.20220812
require("strings")
require("lists")
require("tables")
require("sets")
require("chat")
require("logger")
require("pack")

bp = {}
bp.ranges      = {[0]=255,[2]=3.40,[3]=4.47,[4]=5.76,[5]=6.89,[6]=7.80,[7]=8.40,[8]=10.40,[9]=12.40,[10]=14.50,[11]=16.40,[12]=20.40,[13]=23.4}
bp.res         = require("resources")
bp.packets     = require("packets")
bp.queues      = require("queues")
bp.files       = require("files")
bp.core        = require("includes/core")
bp.keybinds    = require("includes/keybinds")
bp.loader      = require("includes/loader")
bp.color       = 258

function get_sets()
    bp.player    = player
    bp.library   = bp.loader.getLibrary(bp.player)

    if bp.library then
        bp.settings = bp.library.loadSettings(bp)
        bp.sets, bp.user = bp.loader.getProfile(bp.player)

        if bp.sets and bp.user then
            sets = bp.sets

            function file_unload()
                bp.keybinds.unbind()

                if bp.library.events then
                    for _,event in pairs(bp.library.events) do
                        windower.unregister_event(event)
                    end
                end

            end
            bp.keybinds.bind()
            bp.core.buildHUD(bp)

            if bp.user.settings then
                bp.user.settings(bp)
            end

        else

            coroutine.schedule(function()

                if bp.library.events then
                    for _,event in pairs(bp.library.events) do
                        windower.unregister_event(event)
                    end
                end
                windower.add_to_chat(1, string.format('FAILED TO LOAD GEARSWAP PROFILE: /profiles/%s_%s.lua!':color(bp.color), player.name, player.main_job))
            
            end, 0.25)
            return

        end

    else

        coroutine.schedule(function()

            if bp.library.events then
                for _,event in pairs(bp.library.events) do
                    windower.unregister_event(event)
                end
            end
            windower.add_to_chat(1, string.format('FAILED TO LOAD GEARSWAP LIBRARY: /library/%sLibrary.lua!':color(bp.color), player.main_job))
        
        end, 0.25)
        return

    end    
    
end

function precast(spell, act)
    bp.library.precast(spell, midaction())
end

function midcast(spell, act)
    bp.library.midcast(spell, midaction())
end

function aftercast(spell, act)
    bp.library.aftercast(spell, midaction())
end

function status_change(new, old)
    bp.library.statusChange(new, old, midaction())
end

function buff_change(name, gain, details)
    bp.library.buffChange(name, gain, details, midaction())
end

function pet_change(pet, gain)
    bp.library.petChange(pet, gain, midaction())
end

function pet_midcast(spell)
    bp.library.petMidcast(spell, midaction())
end

function pet_aftercast(spell)
    bp.library.petAftercast(spell, midaction())
end

function pet_status_change(new, old)
    bp.library.petStatus(new, old, midaction())
end

function self_command(command)
    bp.library.commands(command)
    bp.core.commands(command)
    
end
