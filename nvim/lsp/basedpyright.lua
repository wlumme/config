-- https://docs.basedpyright.com/latest/configuration/language-server-settings/

return {
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        "Pipfile",
        "pyrightconfig.json",
        ".git",
    },
    settings = {
        basedpyright = {
            analysis = {
                autoSearchPaths = true,
                typeCheckingMode = "off",
            },
            disableOrganizeImports = true,
        },
    },
}
