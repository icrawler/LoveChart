local Dataset = require(lovechart_dir .. "Dataset")
local u = require(lovechart_dir .. "utils")
local lg = love.graphics

local LineChart = class:new()

	function LineChart:init(dataset, x, y, width, height, style)
		self.dataset = dataset or Dataset:new()
		self.points = {}
		self.width = width
		self.height = height
		self.style = u.getDefValue(style, u.createStyle())
		self.x = x
		self.y = y
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
		local style = self.style
		lg.setColor(style.backgroundColor or {0, 0, 0, 255})

		lg.rectangle("fill", self.x, self.y, self.width, self.height)

		lg.setColor(style.strokeColor or {255, 255, 255, 255})
		lg.setLineWidth(style.strokeWidth or 1)

		for i=2, self.dataset:getLength() do
			lg.line(self.points[i-1][1]+self.x, self.points[i-1][2]+self.y,
					self.points[i][1]  +self.x, self.points[i][2]  +self.y)
		end

		lg.setColor(255, 255, 255, 255)
		lg.setLineWidth(1)
	end

return LineChart