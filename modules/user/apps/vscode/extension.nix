{ pkgs, ... }:
{
    programs.vscode = {
        profiles.default.extensions = [
            pkgs.vscode-extensions.aaron-bond.better-comments
            pkgs.vscode-extensions.yzhang.markdown-all-in-one
            pkgs.vscode-extensions.ms-vscode.cpptools
            pkgs.vscode-extensions.ms-vscode.cpptools-extension-pack
            pkgs.vscode-extensions.julialang.language-julia
            pkgs.vscode-extensions.ms-python.python
            pkgs.vscode-extensions.ms-python.debugpy
            pkgs.vscode-extensions.ms-python.vscode-pylance
            pkgs.vscode-extensions.ms-toolsai.jupyter
            pkgs.vscode-extensions.ms-toolsai.vscode-jupyter-slideshow
            pkgs.vscode-extensions.ms-toolsai.vscode-jupyter-cell-tags
            pkgs.vscode-extensions.ms-toolsai.jupyter-renderers
            pkgs.vscode-extensions.ms-toolsai.jupyter-keymap
            pkgs.vscode-extensions.vscode-icons-team.vscode-icons
            pkgs.vscode-extensions.github.vscode-pull-request-github
            pkgs.vscode-extensions.yzane.markdown-pdf
        ];
    };
}