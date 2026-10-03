/opt/homebrew/bin/brew shellenv | source
~/.local/bin/mise activate fish | source

function fish_greeting
  echo "Hello Mr Programmer!"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#Abbreviations
abbr --add ls ls -lahF
