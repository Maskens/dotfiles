/opt/homebrew/bin/brew shellenv | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.vscode-oss/extensions/vadimcn.vscode-lldb-1.12.3/adapter
fish_add_path --move ~/.asdf/shims
