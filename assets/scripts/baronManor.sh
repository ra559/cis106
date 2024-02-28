#!/bin/bash
## Building the manor
mkdir -p $HOME/Documents/fs_game/baronManor/{garage,greatHall,guestRoom,masterRoom,minorHall,staffHall,basement}
mkdir -p $HOME/Documents/fs_game/baronManor/garage/{cars,other}
mkdir -p $HOME/Documents/fs_game/baronManor/greatHall/{diningRoom,gameRoom,gym/lockers,kitchen/pantry,library/{cabinnet,basement},livingRoom/drawer,office/{drawer,cabinnet}}
mkdir -p $HOME/Documents/fs_game/baronManor/greatHall/gameRoom/{arcade/{old,new,tabletops},karaoke}
mkdir -p $HOME/Documents/fs_game/baronManor/{guest,master}Room/{bathroom,closet,small_vault}
mkdir -p $HOME/Documents/fs_game/baronManor/minorHall/{meditationRoom,sauna,smokingRoom,storage,studyHall,workshop}
mkdir -p $HOME/Documents/fs_game/baronManor/.secretRoom/{large_vault,small_vault,.hidden_box}
mkdir -p $HOME/Documents/fs_game/baronManor/staffHall/{cooksRoom,enertaimentRoom,houseKeeperRoom,petRoom,staffRoom,utilityRoom}

## Keys
echo "Key to the garage" > $HOME/Documents/fs_game/baronManor/garageKey.txt
echo "Key to the basement" > $HOME/Documents/fs_game/baronManor/basementKey.txt
echo "Key to the guestRoom" > $HOME/Documents/fs_game/baronManor/guestRoom.txt

## Locked room
chmod 000 $HOME/Documents/fs_game/baronManor/garage

## activate key
echo "chmod u=rwx,g=rwx,o=rwx $HOME/Documents/fs_game/baronManor/garage" > $HOME/Documents/fs_game/baronManor/garageKey.txt
