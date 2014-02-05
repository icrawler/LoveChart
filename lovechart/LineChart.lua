local Dataset = require(lovechart_dir .. "Dataset")
local Utils = require(lovechart_dir .. "utils")

local LineChart = class:new()

	function LineChart:init(dataset, width, height, style)
		self.dataset = dataset or Dataset:new()
		self.points = {}
		self.width = width
		self.height = height
		self.style = Utils.getDefValue(style, Utils.createStyle())
	end

	function LineChart:update()
		local numPoints = self.dataset:getLength()
		local dx = self.width/numPoints
		local maxValue = 100
		for i=1, numPoints do
			local x = dx*(i-1)
			local y = self.height - self.dataset:getValue(i)[2]/maxValue * self.height
			self.points[i] = {x, y}
		end
	end

	function LineChart:draw()
		love.graphics.setColor(self.style.strokeColor)
		love.graphics.setLine(self.style.strokeWidth)
		
		for i=1, self.dataset:getLength() do
			love.graphics.circle("fill", self.points[i][1], self.points[i][2], self.style.strokeWidth/2)
			if i > 1 then
				love.graphics.line(self.points[i-1][1], self.points[i-1][2], self.points[i][1], self.points[i][2])
			end
		end

		love.graphics.setColor(255, 255, 255, 255)
		love.graphics.setLine(1)
	end

return LineChart