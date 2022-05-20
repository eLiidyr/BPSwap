local loader = {}
local files  = require('files')
function loader.load()
    local self = {}
    
    self.getLibrary = function(player)

        if player then
            local f = files.new(string.format('data/library/%sLibrary.lua', player.main_job))

            if f:exists() then
                return dofile(string.format('%sdata/library/%sLibrary.lua', windower.addon_path, player.main_job))
            end
            
        end
        windower.send_command(string.format('bp popchat GEARSWAP ERROR: MISSING LIBRARY FOR %s!', windower.ffxi.get_player().main_job_full))

    end
    
    self.getProfile = function(player)

        if player then
            local f = files.new(string.format('data/profiles/%s_%s.lua', player.name, player.main_job))

            if f:exists() then
                return dofile(string.format('%sdata/profiles/%s_%s.lua', windower.addon_path, player.name, player.main_job))
            end
            
        end
        windower.send_command('bp popchat GEARSWAP ERROR: MISSING CHARACTER PROFILE!')

    end
    
    return self
    
end
return loader.load()

