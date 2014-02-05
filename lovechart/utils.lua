local utils = {}

	function utils.createStyle(strokeWidth, strokeColor, pointRadius, areaColor, backgroundColor)
		strokeWidth = strokeWidth or 2
		strokeColor = strokeColor or {255, 255, 255, 255}
		pointRadius = pointRadius or 2
		areaColor = areaColor or {255, 255, 255, 255}
		backgroundColor = backgroundColor or {0, 0, 0, 255}
		return {strokeWidth = strokeWidth, 
				strokeColor = strokeColor, 
				pointRadius = pointRadius, 
				backgroundColor = backgroundColor, 
				areaColor = areaColor}
	end

	function utils.getDefValue(val, def)
		if val ~= nil then
			return val
		else
			return def
		end
	end

return utils