sleep 4
cat .git/logs/HEAD | grep 'commit' | cut -d' ' -f2 | \
while read i
do
  echo "commit: " $i
  git checkout $i && sleep 0.5 && xdotool key 'ctrl+Return'
  sleep $1 
done
git checkout master && sleep 0.5 && xdotool key 'ctrl+Return'

