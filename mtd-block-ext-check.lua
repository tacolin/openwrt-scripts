function is_mtdblock_ext4(mtdblock)
    if path_exist(mtdblock) == false then
        return false
    end
    local f = io.popen('file -s ' .. mtdblock)
    if f == nil then
        return false
    end
    local readstr = f:read("*a")
    f:close()
    if readstr:find("ext4") ~= nil then
        return true
    else
        return false
    end
end

function ext4_check(mtdblock)
    if shellcmd("fsck.ext4 -p %s", mtdblock) == 0 then
        return true
    else
        return false
    end
end

