return {
    ensure_installed = { "javascript", "typescript", "c", "rust", "lua", "vimdoc", "query" },
    sync_install = false,
    auto_install = false,
    ignore_install = { "org" },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
