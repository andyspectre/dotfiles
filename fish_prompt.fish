function fish_prompt
    set -l last_status $status
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color normal)
    end

    set -l grey_back (set_color -b 515151)
    set -l grey_front (set_color 515151)
    set -l accent_front (set_color 0059D1)
    set -l accent_back (set_color -b 0059D1)
    set -l normal (set_color normal)

    # Powerline separators
    set -l sep \uE0B0
    set -l sep2 \uE0B1

    echo " "
    echo -n "$grey_back$grey_back $(prompt_hostname)$accent_front $sep2$sep2 $normal$grey_back$(prompt_pwd) $accent_back$grey_front$sep$grey_back$normal$accent_front$sep "
end
