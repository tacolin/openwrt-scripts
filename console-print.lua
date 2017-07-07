#!/usr/bin/lua

function dprint( ... )
    local str = string.format(unpack(arg))
    local f = io.open("/dev/console", "w")
    local prefix = "[DEBUG] "
    if f ~= nil then
        f:write(prefix .. str .. "\n")
        f:close()
    end
end

