local Dataset = class:new()

	function Dataset:init()
		self.data = {}
	end

	function Dataset:addValue(value, label)
		value = value or 0
		label = label or ""
		local data = {label, value}
		table.insert(self.data, data)
	end

	function Dataset:getLength()
		return #self.data
	end

	function Dataset:getValue(index)
		if (index > 0 and index <= #self.data) then
			return self.data[index]
		else
			return nil
		end
	end

	function Dataset:pop()
		local data = self.data[1]
		local res = {data.label, data.value}
		table.remove(self.data, 0)
		return res
	end

	function Dataset:removeAll()
		for i=#self.data, 1, -1 do
			table.remove(self.data, i)
		end
	end

	function Dataset:toString()
		local res = ""
		for i, v in ipairs(self.data) do
			res = res .. v[1] .. ": " .. v[2] .. "\n"
		end
		return res
	end

return Dataset