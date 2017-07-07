function get_mtd_no(keyword)
    if path_exist("/proc/mtd") == false then
        return nil
    end
    local cmd = "grep -i '\"" .. keyword .. "\"' " .. "/proc/mtd | cut -f 1 -d ':'"
    local f = io.popen(cmd)
    if f == nil then
        return nil
    end
    local readstr = f:read("*a")
    f:close()
    return readstr:sub(4, -2) -- remove the last \n, remove the first 'mtd'
end

