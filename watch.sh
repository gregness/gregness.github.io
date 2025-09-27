#!/bin/bash
ruby -run -e httpd index.html &
SERVER_PID=$!

fswatch -o index.html | while read; do
  kill $SERVER_PID 2>/dev/null
  ruby -run -e httpd index.html &
  SERVER_PID=$!
  echo "Reloaded server"
  
  # Refresh browser
  osascript -e 'tell application "Safari" to tell front document to set URL to "http://localhost:8080"'
done

trap "kill   $SERVER_PID 2>/dev/null; exit" INT TERM EXIT