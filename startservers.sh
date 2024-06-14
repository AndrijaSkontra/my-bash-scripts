#!/bin/bash

# Create a new tmux session named 'RWA-Project'
tmux new-session -d -s RWA-Project

# Rename the first window to 'Frontend'
tmux rename-window -t RWA-Project:0 'Frontend'

# In the 'Frontend' window, navigate to the frontend directory and run 'ng serve --watch'
tmux send-keys -t RWA-Project:0 'cd /home/shkoki/school/RWA-Project/frontend' C-m
tmux send-keys -t RWA-Project:0 'ng serve --watch' C-m

# Create a new window named 'Backend'
tmux new-window -t RWA-Project -n 'Backend'

# In the 'Backend' window, navigate to the backend directory and run 'nest start --watch'
tmux send-keys -t RWA-Project:1 'cd /home/shkoki/school/RWA-Project/backend' C-m
tmux send-keys -t RWA-Project:1 'nest start --watch' C-m

# Attach to the session
tmux attach-session -t RWA-Project

echo -e "\033]0;serveri\007"

