#!/bin/bash

# Prompt the user to enter the video ID
echo "Please enter the Wistia video ID:"
read video_id

# Command to download the video using the provided ID
wget -qO- "http://fast.wistia.net/embed/iframe/$video_id" \
| sed -n -e 's#^\s*W\.iframeInit(\(.*\), {[^}]*});\s*$#\1#p' \
| jq -r '."assets"[0]."url" | sub("\\.bin$"; ".mp4")' \
| xargs curl -O

echo "Download completed."
