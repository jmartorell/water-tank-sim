function love.update(dt)
    -- Update the graphs
    fpsGraph:update(dt)
    memGraph:update(dt)

    -- Update our custom graph
    dtGraph:update(dt, math.floor(dt * 1000))
    dtGraph.label = 'DT: ' ..  math.round(dt, 4)

    --8<-- SLIDER
    coldWaterTap:update()
    hotWaterTap:update()

    --8<-- TANK
    waterTank:flowIn(cold_intake_pres * dt, 15)
    waterTank:flowIn(hot_intake_pres * dt, 60)

end