function clipcat
if test -f $argv
cat $argv | xclip -selection clipboard
echo "Contents of '$argv' copied to clipboard."
else
echo "File '$argv' not found."
end
end
