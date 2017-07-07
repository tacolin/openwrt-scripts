#!/usr/bin/lua

function shellcmd(...)
    local cmdstr = string.format(unpack(arg))
    os.execute(cmdstr)
end

