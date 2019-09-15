-- Import the library
debugGraph = require 'debugGraph'
require 'simple-slider'
tank = require 'tank'
dofile 'localmath.lua'

--8<-- Global variables
cold_intake_pres = 0 --litres/second
hot_intake_pres = 0 --litres/second

tank_capacity = 100 --litres
water_in_tank = 0 --litres


--8<-- System functions

function currentColdIntake(val)
  cold_intake_pres = val/500
end

function currentHotIntake(val)
  hot_intake_pres = val/500
end

--***********************************
--*       STANDARD CALLBACKS        *
--***********************************

dofile 'love-load.lua'
dofile 'love-update.lua'
dofile 'love-draw.lua'

--***********************************

function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  elseif key == "a" then
    print("Hello a")
  end
end
