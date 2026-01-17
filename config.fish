if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    set -g fish_color_autosuggestion '#6b6b6b'

    if not set -q SSH_AUTH_SOCK
        eval (ssh-agent -c) > /dev/null
        ssh-add ~/.ssh/lisbeth_github 2>/dev/null
    end
end


# Generated for pdtm. Do not edit.
fish_add_path /home/andy/.pdtm/go/bin


# Created by `pipx` on 2025-12-22 12:05:38
set PATH $PATH /home/andy/.local/bin

# abbreviation for psql command
abbr -a pgc --set-cursor 'psql -U andy -d bugbounty -c "%" | cat'
