function fish_rm_path --argument path slient
    set path (path resolve $path)
    set path_index (contains -i $path $PATH)

    if test $status -ne 0
        if not test $slient 
            echo $path not in PATH
        end
        return 1
    end

    if not test $slient
        echo Removing $path at index $path_index from PATH
    end

    set -e PATH[$path_index]
end
