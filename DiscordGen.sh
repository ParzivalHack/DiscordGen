blue="\e[34m"
banner(){
toilet DiscordGen
}
menu(){
echo -e "$blue             ＞＞＞＞>>>＞$blue[Menu]$blue＜<<<＜＜＜＜$blue"
echo " "
echo " "
echo -e "$blue                        ➡$blue [\e[34m1\e[34m]$blue Launch DiscordGen "
echo -e "$blue                        ➡$blue [\e[34m2\e[34m]$blue About Me "
echo -e "$blue                        ➡$blue [\e[34m3\e[34m]$blue Exit "
echo -ne "\e[34m#Select Option\e[34m: "
read optnz
if [ $optnz = "1" ];
then
banner
bash gen.sh
elif [ $optnz = "2" ];
then
banner
am start -a android.intent.action.VIEW -d https://portosaurus.github.io/TommasoBona/ > /dev/null 2>&1
elif [ $optnz = "3" ];
then
exit 1
else
echo "Wrong"
fi
}
banner
menu
