-- Written by: Eliidyr.
require("strings")
require("tables")
require("logger")
require("lists")
require("sets")
require("chat")
require("pack")

-- Load profile manager.
local manager = require("manager")
function get_sets()
    manager:load()

    function file_unload()
        manager.__CONST.UNLOADKEYBINDS()

    end
    manager.__CONST.LOADKEYBINDS()
    manager.__display:pos(manager.x, manager.y)
    manager.updateDisplay()

end

-- Setup Gearswap functions.
function precast(spell) manager.precast(spell) end
function midcast(spell) manager.midcast(spell) end
function aftercast(spell) manager.aftercast(spell) end
function status_change(new, old) manager.statusChange(new, old) end
function buff_change(name, gain, details) manager.buffChange(name, gain, details) end
function pet_change(pet, gain) manager.petChange(pet, gain) end
function pet_midcast(spell) manager.petMidcast(spell) end
function pet_aftercast(spell) manager.petAftercast(spell) end
function pet_status_change(new, old) manager.petStatus(spell) end

-- Handle commands
function self_command(command)
    local commands = T(command:split(' '))
    local command = commands[1] and table.remove(commands, 1):lower() or false

    if command then

        if command == '__weapons' then
            manager.toggleWeapons()
            local weapons = manager.getWeaponSet()

            if weapons and weapons.equip then
                equip(weapons.set)
                manager.toChat("Weapon Set: [ ", 258, weapons.name, 250, " ]", 258)

            end

        elseif command == '__idlemode' then
            manager.toggleIdle()
            local change = manager.getIdleSet()

            if change then
                equip(change)

                if manager.sets.idle[manager.__idle] and manager.sets.idle[manager.__idle].name then
                    manager.toChat("Idle Mode:", 258, manager.sets.idle[manager.__idle].name, 250)
                end

            end

        elseif command == '__engagemode' then
            manager.toggleEngaged()
            local change = manager.getEngagedSet()

            if change then
                equip(change)

                if manager.sets.engaged[manager.mode][manager.__engaged] and manager.sets.engaged[manager.mode][manager.__engaged].name then
                    manager.toChat("Engage Mode:", 258, manager.sets.engaged[manager.mode][manager.__engaged].name, 250)
                end

            end

        elseif command == '__nukemode' then
            manager.toggleMidnuke()

            if manager.sets.midnuke[manager.mode][manager.__nukes] and manager.sets.midnuke[manager.mode][manager.__nukes].name then
                manager.toChat("Nuke Mode:", 258, manager.sets.midnuke[manager.mode][manager.__nukes].name, 250)
            end

        elseif command == '__combatmode' then
            manager.toggleMode()
            manager.toChat("Combat Mode: [ ", 258, (manager.mode == 1) and "Attack" or "Accuracy", 250, " ]", 258)

        elseif command == 'dummy' then
            local option = commands[1] and table.remove(commands, 1):lower() or false

            if option and tonumber(option) and manager.__CONST.DUMMIES[tonumber(option)] then
                manager.dummy = tonumber(option)
                manager.toChat("Dummy Songs: [ ", 258, table.concat(manager.__CONST.DUMMIES[manager.dummy], ', '), 250, " ]", 258)

            else
                manager.dummy = (manager.dummy + 1) <= #manager.__CONST.DUMMIES and (manager.dummy + 1) or 1
                manager.toChat("Dummy Songs: [ ", 258, table.concat(manager.__CONST.DUMMIES[manager.dummy], ', '), 250, " ]", 258)

            end

        elseif command == '__profile' then
            manager.setProfile(commands)

        end
        manager.updateDisplay()

    end
    
end
