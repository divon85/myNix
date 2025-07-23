{
    programs.starship = {
        settings = {
            python = {
                format = "[$symbol$pyenv_prefix($version )(($virtualenv) )]($style)";
                python_binary = [
                    "python"
                    "python3"
                    "python2"
                ];
                pyenv_prefix = "pyenv ";
                pyenv_version_name = true;
                style = "yellow bold";
                symbol = "🐍 ";
                version_format = "v$raw";
                disabled = false;
                detect_extensions = ["py"];
                detect_files = [
                    "requirements.txt"
                    ".python-version"
                    "pyproject.toml"
                    "Pipfile"
                    "tox.ini"
                    "setup.py"
                    "__init__.py"
                ];
                detect_folders = [];
            };
        };
    };
}