#!/bin/bash
base="$HOME/Documents/fs_game/baronManor"
mainRooms=("garage" "greatHall" "guestRoom" "masterRoom" "minorHall" "staffHall" "basement")
greatHallRooms=("diningRoom" "gameRoom" "gym" "kitchen" "library" "livingRoom" "office")
gymRooms=("lockers" "bathroom")
libraryRooms=("cabinnet" "basement")
kitchenRooms=("pantry" "storage")
gameRoomSections=("old" "new" "tabletops")
bedroomSections=("bathroom" "closet" "small_vault")
minorHallRooms=("meditationRoom" "sauna" "smokingRoom" "storage" "studyHall" "workshop")
secretRoom=("large_vault" "small_vault" ".hidden_box")
staffHallRooms=("cooksRoom" "enertaimentRoom" "houseKeeperRoom" "petRoom" "staffRoom" "utilityRoom")
builder() {
    # build the main rooms
    for dir in "${mainRooms[@]}"; do
        mkdir -p "$base/$dir"
    done
    echo "Main Rooms Built"
    tree $base/ 
    # building great hall
    for dir in "${greatHallRooms[@]}"; do
        case "$dir" in 
            "gameRoom")
                for dir in "${gameRoomSections[@]}"; do
                    mkdir -p "$base/greatHall/gameRoom/$dir"
                done    
                ;;
                 "gym")
                for dir in "${gymRooms[@]}";do
                    mkdir -p "$base/greatHall/gym/$dir" 
                done
                ;;
              "kitchen")
                for dir in "${kitchenRooms[@]}"; do
                    mkdir -p "$base/greatHall/kitchen/$dir"
                done
                ;;
              "library")
                for dir in "${libraryRooms[@]}"; do
                    mkdir -p "$base/greatHall/library/$dir"
                done
                ;;       
                      *)
                mkdir -p "$base/greatHall/$dir"
                ;;
        esac
     done 
     for room in "${mainRooms[@]}"; do
        case "$room" in
            "masterRoom")
                for dir in "${bedroomSections[@]}"; do
                    mkdir -p "$base/masterRoom/$dir"
                done
                ;;
            "guestRoom")
                for dir in "${bedroomSections[@]}"; do
                    mkdir  -p "$base/guestRoom/$dir"
                done
                ;;
             *)
             continue
             ;;
         esac
     done
     echo "Great hall rooms built"
     tree $base/greatHall   
     # building minor hall
     for dir in "${minorHallRooms[@]}"; do
        mkdir -p "$base/minorHall/$dir"
     done
     echo "Minor hall rooms built"
     tree $base/minorHall
     # building staff Rooms
     for dir in "${staffHallRooms[@]}"; do
        mkdir -p "$base/staffHall/$dir"
     done
     echo "Staff hall rooms built"
     tree $base/staffHall
     # Building Secret Room 
     for dir in "${secretRoom[@]}"; do
       mkdir -p "$base/.secretRoom/$dir"
     done
     echo "Another room was built"
     tree $base/.secretRoom
}
main(){
    echo "Building the manor"
    builder 
    #tree $base 
    
}   
main

