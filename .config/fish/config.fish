/opt/homebrew/bin/brew shellenv | source

fish_add_path $HOME/.asdf/shims

if status is-interactive
    # Commands to run in interactive sessions can go here
end
