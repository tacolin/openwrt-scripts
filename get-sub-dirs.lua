
require "lfs"

function sub_dirs(dir)
    local subdirs = {}
    for content in lfs.dir(dir) do
        if content ~= "." and content ~= ".." then
            local path = dir .. "/" .. content
            local attr = lfs.attributes(path)
            if attr and attr.mode == "directory" then
                table.insert(subdirs, path)
            end
        end
    end
    local i = 0
    local n = #subdirs
    return function ()
        i = i + 1
        if i<=n then return subdirs[i] end
    end
end

for dir in sub_dirs("/mnt/") do
    dprint("sub_dir is %s", dir)
end

