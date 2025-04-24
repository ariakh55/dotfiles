return {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
        require('orgmode').setup({
            org_agenda_files = '~/notes/**/*',
            org_default_notes_file = '~/notes/refile.org',
        })

        require('utils.cmp_append').append_cmp_source({
            { name = 'orgmode' }
        })
    end,
}
