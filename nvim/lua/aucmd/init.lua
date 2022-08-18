local autable = {
    "aucmd.reload",
    "aucmd.title",
    "aucmd.others",
    "aucmd.filetype"
}

for _, conf in ipairs(autable) do
    local ok, group = pcall(require, conf)
    if ok then
        group.setup()
    end
end
