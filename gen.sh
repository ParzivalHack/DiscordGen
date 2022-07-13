gen(){
token=$RANDOM | md5sum | head -c 16;
echo -e "https://discord.gift/$token
intertube=0
echo "Checking if token is valid..."
while [ $intertube -ne 1 ]; do
        ping -c 3 https://discord.gift/$token
        if [ $? -eq  0 ]; then
                echo -e "Valid token :)"
                say success
                intertube=1;
        else
                echo "Invalid token, try again :("
        fi
done
}
