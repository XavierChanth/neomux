local function pad_io(d)
	for _ = 0, d do
		io.write(" ")
	end
end

local function pretty_print(t, d)
	if type(t) == "table" then
		d = d or 0
		io.write("{\n")
		for k, v in pairs(t) do
			pad_io(d)
			io.write(k .. " = ")
			if type(v) == "table" then
				pretty_print(v, d + 2)
			else
				io.write(v .. ",\n")
			end
		end
		pad_io(d)
		if d == 0 then
			io.write("}\n")
		else
			io.write("},\n")
		end
	else
		io.write(t .. "\n")
	end
end

return {
	pad_io = pad_io,
	pretty_print = pretty_print,
}
