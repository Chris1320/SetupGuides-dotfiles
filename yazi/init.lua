require("folder-rules"):setup()
require("relative-motions"):setup({ show_numbers = "relative", show_motion = true })
require("git"):setup()
require("archivemount"):setup()
require("yamb"):setup({})

--- Show username@hostname in the header
Header:children_add(function()
    if ya.target_family() ~= "unix" then
        return ui.Line({})
    end
    return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("blue")
end, 500, Header.LEFT)

--- Add symlinks to the statusline
function Status:name()
    local linked = ""
    local h = self._tab.current.hovered
    if not h then
        return ui.Line({})
    end

    if h.link_to ~= nil then
        linked = " -> " .. tostring(h.link_to)
    end
    return ui.Line(" " .. h.name .. linked)
end

--- Add user:group to the statusline
Status:children_add(function()
    local h = cx.active.current.hovered
    if h == nil or ya.target_family() ~= "unix" then
        return ui.Line({})
    end

    return ui.Line({
        ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
        ui.Span(":"),
        ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
        ui.Span(" "),
    })
end, 500, Status.RIGHT)
