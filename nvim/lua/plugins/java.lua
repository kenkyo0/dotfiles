return {

    'nvim-java/nvim-java',
    config = function()
        vim.keymap.set('n', '<leader>sg', function()
            vim.lsp.buf.code_action({
                context = { only = { 'source.generate.accessors' } },
                apply = true,
            })
        end) 
    end,

}
