# Match mkv or mp4 starting with sub group name in brackets
find /var/services/video/unsorted \
\( -regex ".*/\[.*\].*\.mkv" -o -regex ".*/\[.*\].*\.mp4" \)  -print
