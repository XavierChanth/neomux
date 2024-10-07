local flags = function(flags)
	local tflags = type(flags)
	if tflags == "string" then
		return flags
	elseif tflags == "table" then
		local flag_str = ""
		for k, v in pairs(flags) do
			local tk = type(k)
			local tv = type(v)
			if tk == "number" and tv == "string" then
				-- { "<flag>", etc... }
				flag_str = flag_str .. v
			elseif tk == "string" and tv == "boolean" and v then
				-- { "<flag>" = true, etc... }
				flag_str = flag_str .. k
			end
			-- ignore all other cases... invalid
			-- TODO? should we error?
		end
		return flag_str
	end
end
return {
	flags = flags,
}
