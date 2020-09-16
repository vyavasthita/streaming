# streaming
streaming

# To set visual studio code as default editor as global
git config --global core.editor "code --wait"

# To set visual studio code as default editor for repository
git config core.editor "code --wait"

# To set Visual Studio Code as your difftool, you need to go into global git config file. Which you can access through previous mentioned command git config --global -e, then you need to add those entries (or replace existing ones).

[diff]
    tool = vscode
[difftool "vscode"]
    cmd = code --wait --diff $LOCAL $REMOTE

# To use vscode as difftool use this command
git difftool <files>