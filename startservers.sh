#!/bin/bash

# Create a new tmux session named 'RWA-Project'
tmux new-session -d -s RWA-Project

# Rename the window to 'Development'
tmux rename-window -t RWA-Project 'Development'

# Split the window into two panes
tmux split-window -h

# In the first pane, navigate to the frontend directory and run 'ng serve --watch'
tmux send-keys -t RWA-Project:0.0 'cd /home/shkoki/school/RWA-Project/frontend' C-m
tmux send-keys -t RWA-Project:0.0 'ng serve --watch' C-m

# In the second pane, navigate to the backend directory and run 'nest start --watch'
tmux send-keys -t RWA-Project:0.1 'cd /home/shkoki/school/RWA-Project/backend' C-m
tmux send-keys -t RWA-Project:0.1 'nest start --watch' C-m

# Attach to the session
tmux attach-session -t RWA-Project

echo -e "\033]0;serveri\007"
