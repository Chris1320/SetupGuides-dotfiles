local function setup()
    ps.sub("cd", function()
        local cwd = cx.active.current.cwd
        if cwd:ends_with("Downloads") then
            ya.manager_emit("sort", { "modified", reverse = true })
            ya.manager_emit("linemode", { "mtime" })
        else
            ya.manager_emit("sort", { "alphabetical", reverse = false, dir_first = true })
            ya.manager_emit("linemode", { "none" })
        end
    end)
end

return { setup = setup }
