local keybinds = {}
function keybinds.load()
    self = {}
    
    self.bind = function()
    
        -- ^(Control) | !(Alt) | @(Windows Key)
        -- (Combat Modes)
        send_command('bind @f1 gs c _IdleMode')         -- Gear set while idle.
        send_command('bind @f2 gs c _EngagedMode')      -- Gear set while engaged.
        send_command('bind @f3 gs c _NukeMode')         -- Gear set while using black magic specifically.
        send_command('bind @f4 gs c _RangedMode')       -- Gear set while using ranged attacks.
                                
        -- (Extra-Toggles)
        send_command('bind @f5 gs c _CombatMode')       -- Enable/Disable accuracy mode.
        send_command('bind @f6 gs c weapon')            -- Toggle through weapon sets.

        -- (Gear-Specific Modes)
        send_command('bind @f9 gs c _LockWeapon')       -- Lock Weapon, Sub, and Ranged for trials or to prevent TP loss.
        send_command('bind @f10 gs c _LockGear')        -- Lock all gear slots for trials.
    
    end
    
    self.unbind = function()
        
        print('Restting Keybinds')
        send_command('unbind @`')
        send_command('unbind @f1')
        send_command('unbind @f2')
        send_command('unbind @f3')
        send_command('unbind @f4')
        send_command('unbind @f5')
        send_command('unbind @f6')
        send_command('unbind @f7')
        send_command('unbind @f8')
        send_command('unbind @f9')
        send_command('unbind @f10')
        send_command('unbind @f11')
        send_command('unbind @f12')
        send_command('unbind @1')
        send_command('unbind @2')
        send_command('unbind @3')
        send_command('unbind @4')
        send_command('unbind @5')
        send_command('unbind @6')
        send_command('unbind @7')
        send_command('unbind @8')
        send_command('unbind @9')
        send_command('unbind @0')
        send_command('unbind @-')
        send_command('unbind @=')
        send_command('unbind @insert')
        send_command('unbind @delete')
        send_command('unbind @home')
        send_command('unbind @end')
    
    end
    
    return self
    
end
return keybinds.load()