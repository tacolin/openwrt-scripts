#!/usr/bin/lua

require "lfs"

function path_exist(path)
    local attr = lfs.attributes(path)
    if attr ~= nil then
        return true
    else
        return false
    end
end


