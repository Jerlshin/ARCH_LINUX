#!/usr/bin/env fish

function project_launcher
    set config_file ~/ARCH_LINUX/SCRIPTS/project_launcher/project_launcher.conf
    set -l projects (grep -oP "^\[\K[^\]]+" $config_file)  # Extract project names

    echo "Available Projects:"
    for project in $projects
        echo "- $project"
    end

    # Prompt for project name
    read -P "Enter project name: " project_name
    set -l lower_project_name (string lower $project_name)  # Convert input to lowercase

    # Create a list of lowercase project names for comparison
    set -l lower_projects
    for project in $projects
        set lower_projects $lower_projects (string lower $project)
    end

    # Check if the entered project name exists (case-insensitive)
    if not contains $lower_project_name $lower_projects
        echo "Project not found!"
        return
    end

    # Find the original project name for the matched lowercase input
    set -l matched_project ""
    for i in $projects
        if test "$lower_project_name" = (string lower $i)
            set matched_project $i
        end
    end

    # Parse project details
    set project_path (grep -A2 "\[$matched_project\]" $config_file | grep path | awk -F ' = ' '{print $2}')
    set project_type (grep -A2 "\[$matched_project\]" $config_file | grep type | awk -F ' = ' '{print $2}')
    set project_commands (grep -A2 "\[$matched_project\]" $config_file | grep commands | awk -F ' = ' '{print $2}' | tr "," "\n")

    # Display project info
    notify-send "Launching $matched_project" "Path: $project_path\nType: $project_type"

    # Change to project directory
    cd "$project_path"

    # Handle different project types
    switch $project_type
        case "navigate"
            echo "Changed directory to $project_path"
            # No additional commands for navigate type
        case "vscode"
            eval "$project_commands &"  # Open VS Code
            echo "Opening Visual Studio Code in $project_path..."
        case "nvim"
            eval "$project_commands &"  # Open Neovim
            echo "Opening Neovim in $project_path..."
        # Add more cases if needed
        case '*'
            echo "Unknown project type: $project_type"
    end

    # Start time-tracking if needed
    echo "$matched_project started at (date)" >> ~/.project_times.log
end

project_launcher

