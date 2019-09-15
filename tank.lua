local tank = {}

function tank:new(x, y, width, height, capacity, qtty, temp)

  local instance = {
    x = x or 0, -- X position
    y = y or 0, -- Y position
    width = width or 50, -- Graph width
    height = height or 30, -- Graph height
    capacity =  capacity or 100, -- maximum capacity
    qtty = qtty or 0, -- Amount of liquid
    temp = temp or 15 -- Temperature for liquid
  }

  function instance:flowIn(amt, temp)
    local effective = amt
    if self.qtty + effective > self.capacity then
        effective = self.capacity - self.qtty
    end
    local new_qtty = self.qtty + effective
    if new_qtty > 0 then
      self.temp = (self.temp * self.qtty + temp * effective) / new_qtty
    end
    self.qtty = new_qtty
  end

  function instance:flowOut(amt)
    if self.qtty - amt < 0 then
       self.qtty = 0
    else
        self.qtty =  self.qtty - amt
    end
  end

  function instance:getTemp()
    return self.temp
  end
  function instance:getQtty()
    return self.qtty
  end

  -- Updating the graph
  function instance:update() end

  function instance:draw()
    local old_color = {}
    r,g,b,a = love.graphics.getColor()
    --External
    love.graphics.setColor(0.9,0.9,0.9,1)
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
    --internal
        local level = self.qtty / self.capacity
    love.graphics.setColor(0.3,0.3,0.9,0.8)
    love.graphics.rectangle("fill", self.x + 1, self.y + self.height * (1 -level), self.width -1, self.height * level)
    love.graphics.setColor(r,g,b,a)
  end

  return instance
end

return tank
