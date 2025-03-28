#!/usr/bin/env bash

# Session name (you can change this)
SESSION_NAME="fullstack_dev"

# Check if tmux is installed
if ! command -v tmux &>/dev/null; then
  echo "tmux could not be found. Please install tmux."
  exit 1
fi

# Check if a session with the same name already exists
if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  echo "Session '$SESSION_NAME' already exists. Attaching to it."
  tmux attach-session -t "$SESSION_NAME"
  exit 0
fi

# Create a new tmux session
tmux new-session -d -s "$SESSION_NAME"

# Rename the default window
tmux rename-window -t "$SESSION_NAME":0 "backend server"

# Create and rename the other windows
tmux new-window -t "$SESSION_NAME":1 -n "frontend server"
tmux new-window -t "$SESSION_NAME":2 -n "backend code"
tmux new-window -t "$SESSION_NAME":3 -n "frontend code"
tmux new-window -t "$SESSION_NAME":4 -n "bash"

# Attach to the session
tmux attach-session -t "$SESSION_NAME"

exit 0
