# Add apps which go under .config here
set -U config_apps "nvim" "fish" "ghostty" "kitty"

# Add apps which has a different path here
# and add the path to their array respectivly
set -U other_apps tmux
set -U other_app_paths "$HOME/.tmux"

set -U all_apps $config_apps $other_apps

function get_app_path
    set -l app_name $argv[1]
    set -l default_path "$HOME/.config"

    if contains $app_name $config_apps
        echo "$default_path/$app_name"
    end

    if contains $app_name $other_apps
        set -l index (contains -i $app_name $other_apps)
        if test -n "$index"
            echo "$other_app_paths[$index]"
        end
    end

    return 1
end

function confedit
    set -l app $argv[1]
    if test -z "$app"
        echo "Usage: confedit [APPNAME]"
        echo "Available apps: $all_apps"
        return 1
    end

    set -l path (get_app_path "$app")
    if test -z "$path"
        echo "Error: app path not found"
        return 1
    end

    cd "$path" && nvim ./ && cd -
end
