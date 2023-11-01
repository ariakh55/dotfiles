function watch2
    if count $argv > /dev/null
        bash -c "while true; do clear; date; echo;$argv;sleep 2; done"
    end
end
