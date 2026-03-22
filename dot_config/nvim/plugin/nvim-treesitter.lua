vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
})

vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind
        if name == 'nvim-treesitter' and kind == 'update' then
            if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
            vim.cmd('TSUpdate')
        end
    end
})

require("nvim-treesitter").setup {
    install_dir = vim.fn.stdpath('data') .. '/site',
    auto_install = true,

    ensure_installed = {
        'c',
        'cpp',
        'rust',
        'sql',
        'lua',
        'bash',
        'python',
        'javascript',
        'xml',
        'kdl',
        'toml',
        'yaml',
        'json',
        'css',
        'html',
        'latex',
        'markdown'
    },

    highlight = {
        enable = true, -- Включение подсветки
    },
}
