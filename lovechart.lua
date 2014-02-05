-- LoveChart library by Phoenix Enero
-- Uses the Simple Educative Class System (SECS) Advanced version by Bart Van Strein

-- Directory of lovechart
lovechart_dir = "lovechart/"

local lchart =  {}

require("class")

lchart.dataset = require(lovechart_dir .. "Dataset")

lchart.line_chart = require(lovechart_dir .. "LineChart")

return lchart