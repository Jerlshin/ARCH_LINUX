#!/usr/bin/env fish

function pomodoro
    set -l work_time 25  # Work duration in minutes
    set -l break_time 5  # Break duration in minutes
    set -l cycles 4      # Number of cycles (Pomodoro sessions)
    set -l sound_path "/home/jerlshin/Music/Custom/winner-bell-game-show-91932.mp3"  # Path to your audio file

    for i in (seq 1 $cycles)
        # Work session
        notify-send "Pomodoro Session $i" "Focus for $work_time minutes!"
        sleep (math "$work_time * 60")  # Convert minutes to seconds

        # Play sound at the end of the work session
        mpv $sound_path

        # Notify about the break time
        notify-send "Break Time!" "Take a $break_time minute break."
        sleep (math "$break_time * 60")

        # Play sound at the end of the break
        mpv $sound_path
    end

    # Optional: Long break after the last cycle
    set -l long_break 15
    notify-send "Session Complete" "Take a longer $long_break minute break."
    sleep (math "$long_break * 60")

    # Play sound at the end of the long break
    mpv $sound_path

    # Final completion notification
    notify-send "Pomodoro Finished!" "All work sessions are complete."
    mpv $sound_path
end

pomodoro
