function love.draw()
    love.graphics.setColor(0.8, 0.8, 0.8)
    -- Draw graphs
    fpsGraph:draw()
    memGraph:draw()
    dtGraph:draw()

    --8<-- SLIDER

    -- COLD
    love.graphics.setColor(0.4, 0.4, 1)
    coldWaterTap:draw()
    -- Draw intake's value
    love.graphics.print(string.format("%1.2f" , cold_intake_pres), 20 - 12, 170 + 60)

    --HOT
    love.graphics.setColor(1, 0.4, 0.4)
    hotWaterTap:draw()
    -- Draw intake's value
    love.graphics.print(string.format("%1.2f" , hot_intake_pres), 60 - 12, 170 + 60)

    love.graphics.setColor(0.8, 0.8, 0.8)
    --8<-- TANK
    waterTank:draw()
    love.graphics.print(string.format("Quantity:\t\t\t%1.2f \nTemperature:\t%1.2f" , waterTank:getQtty(), waterTank:getTemp()), 150, 420)


end