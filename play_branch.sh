set -x
sleep 4
cat .git/logs/refs/heads/$1
cat .git/logs/refs/heads/$1 | grep 'commit' | cut -d' ' -f2 | \
while read i
do
  echo "commit: " $i
  git checkout $i && sleep 0.5 && xdotool key 'ctrl+Return'
  sleep 3
done
git checkout $1 && sleep 0.5 && xdotool key 'ctrl+Return'
