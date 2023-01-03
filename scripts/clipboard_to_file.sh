if [ $# -eq 0 ]
then
  echo as an argument pass filename
fi

xclip -selection clipboard -t image/png -o > $1
