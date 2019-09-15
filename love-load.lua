function love.load(arg)
    if arg[#arg] == "-debug" then
        require("mobdebug").start()
    end
    fpsGraph = debugGraph:new('fps', 0, 0, 300, 30, 1)
    memGraph = debugGraph:new('mem', 0, 35, 300, 30, 1)
    dtGraph = debugGraph:new('custom', 0, 70, 300, 30, 1)

    --8<-- SLIDERS
    coldWaterTap = newSlider(20, 170, 100, 0, 0, 100, currentColdIntake, {orientation = 'vertical'})
    hotWaterTap  = newSlider(60, 170, 100, 0, 0, 100, currentHotIntake, {orientation = 'vertical'})

    --8<-- TANK
    waterTank = tank:new(150, 200, 150, 150,200,0,15)
end