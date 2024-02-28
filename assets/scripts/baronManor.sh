#!/bin/bash
## Building the manor
main(){
## Game main function


}

builder (){
mkdir -p $HOME/Documents/fs_game/baronManor/{garage,greatHall,guestRoom,masterRoom,minorHall,staffHall,basement}
mkdir -p $HOME/Documents/fs_game/baronManor/garage/{cars,other}
mkdir -p $HOME/Documents/fs_game/baronManor/greatHall/{diningRoom,gameRoom,gym/lockers,kitchen/pantry,library/{cabinnet,basement},livingRoom/drawer,office/{drawer,cabinnet}}
mkdir -p $HOME/Documents/fs_game/baronManor/greatHall/gameRoom/{arcade/{old,new,tabletops},karaoke}
mkdir -p $HOME/Documents/fs_game/baronManor/{guest,master}Room/{bathroom,closet,small_vault}
mkdir -p $HOME/Documents/fs_game/baronManor/minorHall/{meditationRoom,sauna,smokingRoom,storage,studyHall,workshop}
mkdir -p $HOME/Documents/fs_game/baronManor/.secretRoom/{large_vault,small_vault,.hidden_box}
mkdir -p $HOME/Documents/fs_game/baronManor/staffHall/{cooksRoom,enertaimentRoom,houseKeeperRoom,petRoom,staffRoom,utilityRoom}
}

## Keys
echo "Key to the garage" > $HOME/Documents/fs_game/baronManor/garageKey.txt
echo "Key to the secret rom" > $HOME/Documents/fs_game/baronManor/garage/cars/.secretRoom.txt
echo "Key to the guestRoom" > $HOME/Documents/fs_game/baronManor/guestRoom.txt

## Locked room
chmod 000 $HOME/Documents/fs_game/baronManor/garage
chmod 000 $HOME/Documents/fs_game/baronManor/guestRoom
chmod 000 $HOME/Documents/fs_game/baronManor/masterRoom

## Clues
echo "The master is a man of secrets..." >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt
echo "This is how he built his fortune" >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt
echo "He blackmails and force people into deals" >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt
echo "It will be easier to sell your sould to devil himself!" >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt
echo "I hear the staff talking the other day" >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt
echo "They said the master keeps the key to secret room in the house" >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt
echo "They said something about a Ferrari..." >> $HOME/Documents/fs_game/baronManor/staffHall/staffRoom/clue1.txt

## activate key
echo "chmod u=rwx,g=xr,o=x $HOME/Documents/fs_game/baronManor/garage" > $HOME/Documents/fs_game/baronManor/garageKey.txt

echo "chmod u=rwx,g=xr,o=x $HOME/Documents/fs_game/baronManor/guestRoom" > $HOME/Documents/fs_game/baronManor/guestRoom.txt

echo "chmod u=rwx,g=xr,o=x $HOME/Documents/fs_game/baronManor/masterRoom" > $HOME/Documents/fs_game/baronManor/masterRoom.txt

echo "chmod u=rwx,g=xr,o=x $HOME/Documents/fs_game/baronManor/.secretRoom" > $HOME/Documents/fs_game/baronManor/garage/cars/.secretRoom.txt


