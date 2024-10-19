return {
    formatCommand = "prettierd '${INPUT}' ${--range-start=charStart} ${--range-end=charEnd}",
    formatCanRange = true,
    formatStdin = true,
    rootMarkers = {
        '.prettierrc',
        '.prettierrc.json',
        '.prettierrc.js',
        '.prettierrc.yml',
        '.prettierrc.yaml',
        '.prettierrc.json5',
        '.prettierrc.mjs',
        '.prettierrc.cjs',
        '.prettierrc.toml',
    },
}

