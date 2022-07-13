gen(){
token=$RANDOM | md5sum | head -c 16;
echo -e "https://discord.gift/$token
intertube=0
echo "Checking validity of token..."
while [ $intertube -ne 1 ]; do
        ping -c 3 https://discord.gift/$token
        if [ $? -eq  0 ]; then
                echo "Valid token ";
                intertube=1;
        else
                echo "Invalid token "
        fi
done
}
