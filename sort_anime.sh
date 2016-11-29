# Match mkv or mp4 starting with sub group name in brackets
regex='.*\]\s*\(.*\) - [0-9].*'
find /var/services/video/unsorted \
\( -regex "$regex.mkv" -o -regex "$regex.mp4" \) \
-exec echo {} > tmp \;

while read file; do
  series=`echo $file | sed "s/$regex/\1/"`
  echo "$series"
  mkdir -p "/var/services/video/anime/$series"
  mv "$file" "/var/services/video/anime/$series"
done <tmp
