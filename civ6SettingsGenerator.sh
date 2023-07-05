#!/usr/bin/env bash

evaluateGameMode()
{
  if [ $(( $RANDOM % 200 + 1 )) -lt $2 ]; then
      echo "$1       ON"
  else
      echo "$1      OFF"
  fi
}

echo "############################"
echo "#                          #"
echo "# Civ 6 Settings Generator #"
echo "# Version 0.0.1            #"
echo "# By NewCeptionDev         #"
echo "#                          #"
echo "############################"
echo ""

# Map type
# Map size
# Civ
# Game Mode
GAMEMODE_APOCALYPSE=6
GAMEMODE_SECRET_SOCIETIES=30
GAMEMODE_TECH_AND_CIVIC_SHUFFLE=20
GAMEMODE_DRAMATIC_AGES=10
GAMEMODE_HEROES_AND_LEGENDS=30
GAMEMODE_MONOPOLIES_AND_CORPORATIONS=30
GAMEMODE_BARBARIAN_CLANS=30
GAMEMODE_ZOMBIE_DEFENSE=1

echo "Game Modes:"
echo ""
evaluateGameMode "Apocalypse                 " $GAMEMODE_APOCALYPSE
evaluateGameMode "Secret Societies           " $GAMEMODE_SECRET_SOCIETIES
evaluateGameMode "Tech and Civic Shuffle     " $GAMEMODE_TECH_AND_CIVIC_SHUFFLE
evaluateGameMode "Dramatic Ages              " $GAMEMODE_DRAMATIC_AGES
evaluateGameMode "Heroes and Legends         " $GAMEMODE_HEROES_AND_LEGENDS
evaluateGameMode "Monopolies and Corporations" $GAMEMODE_MONOPOLIES_AND_CORPORATIONS
evaluateGameMode "Barbarian Clans            " $GAMEMODE_BARBARIAN_CLANS
evaluateGameMode "Zombie Defense             " $GAMEMODE_ZOMBIE_DEFENSE
