#!/usr/bin/env bash

# Game Mode Definitions
# Numbers divided by two is percentage change of being turned on
GAMEMODE_APOCALYPSE=6
GAMEMODE_SECRET_SOCIETIES=30
GAMEMODE_TECH_AND_CIVIC_SHUFFLE=20
GAMEMODE_DRAMATIC_AGES=10
GAMEMODE_HEROES_AND_LEGENDS=30
GAMEMODE_MONOPOLIES_AND_CORPORATIONS=30
GAMEMODE_BARBARIAN_CLANS=30
GAMEMODE_ZOMBIE_DEFENSE=1

# Map Type Definitions
# Numbers represent amount of tickets for the type, one ticket is chosen
MAP_TYPE_CONTINENTS=("Continents" 800)
MAP_TYPE_FRACTAL=("Fractal" 10)
MAP_TYPE_INLAND_SEA=("Inland Sea" 30)
MAP_TYPE_INLAND_PLATES=("Inland Plates" 20)
MAP_TYPE_PANGAEA=("Pangaea" 800)
MAP_TYPE_SHUFFLE=("Shuffle" 50)
MAP_TYPE_4_LEAF_CLOVER=("4-Leaf Clover" 20)
MAP_TYPE_6_ARMED_SNOWFLAKE=("6-Armed Snowflake" 20)
MAP_TYPE_EARTH=("Earth" 20)
MAP_TYPE_TRUE_START_LOCATION_EARTH=("True Start Location Earth" 10)
MAP_TYPE_EARTH_HUGE=("Earth Huge" 10)
MAP_TYPE_TRUE_START_LOCATION_EARTH_HUGE=("True Start Location Earth Huge" 10)
MAP_TYPE_MEDITERRANEAN_LARGE=("Mediterranean Large" 10)
MAP_TYPE_TRUE_START_LOCATION_MEDITERRANEAN=("True Start Location Mediterranean" 10)
MAP_TYPE_ARCHIPELAGO=("Archipelago" 30)
MAP_TYPE_SEVEN_SEAS=("Seven Seas" 20)
MAP_TYPE_SMALL_CONTINENTS=("Small Continents" 50)
MAP_TYPE_EAST_ASIA=("East Asia" 20)
MAP_TYPE_TRUE_START_LOCATION_EAST_ASIA=("True Start Location East Asia" 10)
MAP_TYPE_EUROPE=("Europe" 20)
MAP_TYPE_TRUE_START_LOCATION_EUROPE=("True Start Location Europe" 10)
MAP_TYPE_CONTINENTS_AND_ISLANDS=("Continents and Islands" 200)
MAP_TYPE_LAKES=("Lakes" 50)
MAP_TYPE_MIRROR=("Mirror" 20)
MAP_TYPE_PRIMORDIAL=("Primordial" 10)
MAP_TYPE_SPLINTERED_FRACTAL=("Splintered Fractal" 10)
MAP_TYPE_TERRA=("Terra" 50)
MAP_TYPE_TILTED_AXIS=("Tilted Axis" 20)
MAP_TYPE_HIGHLANDS=("Highlands" 40)
MAP_TYPE_WETLANDS=("Wetlands" 40)

MAP_TYPES=(
  "${MAP_TYPE_CONTINENTS[@]}" \
  "${MAP_TYPE_FRACTAL[@]}" \
  "${MAP_TYPE_INLAND_SEA[@]}" \
  "${MAP_TYPE_INLAND_PLATES[@]}" \
  "${MAP_TYPE_PANGAEA[@]}" \
  "${MAP_TYPE_SHUFFLE[@]}" \
  "${MAP_TYPE_4_LEAF_CLOVER[@]}" \
  "${MAP_TYPE_6_ARMED_SNOWFLAKE[@]}" \
  "${MAP_TYPE_EARTH[@]}" \
  "${MAP_TYPE_TRUE_START_LOCATION_EARTH[@]}" \
  "${MAP_TYPE_EARTH_HUGE[@]}" \
  "${MAP_TYPE_TRUE_START_LOCATION_EARTH_HUGE[@]}" \
  "${MAP_TYPE_MEDITERRANEAN_LARGE[@]}" \
  "${MAP_TYPE_TRUE_START_LOCATION_MEDITERRANEAN[@]}" \
  "${MAP_TYPE_ARCHIPELAGO[@]}" \
  "${MAP_TYPE_SEVEN_SEAS[@]}" \
  "${MAP_TYPE_SMALL_CONTINENTS[@]}" \
  "${MAP_TYPE_EAST_ASIA[@]}" \
  "${MAP_TYPE_TRUE_START_LOCATION_EAST_ASIA[@]}" \
  "${MAP_TYPE_EUROPE[@]}" \
  "${MAP_TYPE_TRUE_START_LOCATION_EUROPE[@]}" \
  "${MAP_TYPE_CONTINENTS_AND_ISLANDS[@]}" \
  "${MAP_TYPE_LAKES[@]}" \
  "${MAP_TYPE_MIRROR[@]}" \
  "${MAP_TYPE_PRIMORDIAL[@]}" \
  "${MAP_TYPE_SPLINTERED_FRACTAL[@]}" \
  "${MAP_TYPE_TERRA[@]}" \
  "${MAP_TYPE_TILTED_AXIS[@]}" \
  "${MAP_TYPE_HIGHLANDS[@]}" \
  "${MAP_TYPE_WETLANDS[@]}"
)

# Map Size Definitions
MAP_SIZE_DUEL=("Duel" 1)
MAP_SIZE_TINY=("Tiny" 10)
MAP_SIZE_SMALL=("Small" 200)
MAP_SIZE_STANDARD=("Standard" 50)
MAP_SIZE_LARGE=("Large" 10)
MAP_SIZE_HUGE=("Huge" 1)

MAP_SIZES=(
  "${MAP_SIZE_DUEL[@]}" \
  "${MAP_SIZE_TINY[@]}" \
  "${MAP_SIZE_SMALL[@]}" \
  "${MAP_SIZE_STANDARD[@]}" \
  "${MAP_SIZE_LARGE[@]}" \
  "${MAP_SIZE_HUGE[@]}"
)

# Civilizations
CIVILIZATIONS=(
  "Teddy Roosevelt" \
  "Teddy Roosevelt (Bull Moose)" \
  "Teddy Roosevelt (Rough Rider)" \
  "Abraham Lincoln" \
  "Saladin (Vizier)" \
  "Saladin (Sultan)" \
  "John Curtin" \
  "Montezuma" \
  "Hammurabi" \
  "Pedro II" \
  "Basil II" \
  "Theodora" \
  "Wilfrid Laurier" \
  "Qin Shi Huang (Mandate of Heaven)" \
  "Qin Shi Huang (Unifier)" \
  "Kublai Khan (Chinese)" \
  "Yongle" \
  "Wu Zetian" \
  "Poundmaker" \
  "Wilhelmina" \
  "Cleopatra (Egyptian)" \
  "Cleopatra (Ptolemaic)" \
  "Ramses II" \
  "Victoria (Age of Empire)" \
  "Victoria (Age of Steam)" \
  "Eleanor of Aquitaine (English)" \
  "Elizabeth I" \
  "Menelik II" \
  "Catherine de Medici (Black Queen)" \
  "Catherine de Medici (Magnificence)" \
  "Eleanor of Aquitaine (French)" \
  "Ambiorix" \
  "Tamar" \
  "Frederick Barbarossa" \
  "Ludwig II" \
  "Simón Bolívar" \
  "Pericles" \
  "Gorgo" \
  "Matthias Corvinus" \
  "Pachacuti" \
  "Gandhi" \
  "Chandragupta" \
  "Gitarja" \
  "Hojo Tokimune" \
  "Tokugawa" \
  "Jayavarman VII" \
  "Mvemba a Nzinga" \
  "Nzinga Mbande" \
  "Seondeok" \
  "Sejong" \
  "Alexander" \
  "Mansa Musa" \
  "Sundiata Keita" \
  "Kupe" \
  "Lautaro"  \
  "Lady Six Sky" \
  "Genghis Khan" \
  "Kublai Khan (Mongolian)" \
  "Harald Hardrada (Konge)" \
  "Harald Hardrada (Varangian)" \
  "Amanitore" \
  "Suleiman (Kanuni)" \
  "Suleiman (Muhteşem)" \
  "Cyrus" \
  "Nader Shah" \
  "Dido" \
  "Jadwiga" \
  "João III" \
  "Trajan" \
  "Julius Caesar" \
  "Peter" \
  "Robert the Bruce" \
  "Tomyris" \
  "Philip II" \
  "Gilgamesh" \
  "Kristina" \
  "Bà Triệu" \
  "Shaka"
)

printHeader()
{
  echo "############################"
  echo "#                          #"
  echo "# Civ 6 Settings Generator #"
  echo "# Version 0.0.1            #"
  echo "# By NewCeptionDev         #"
  echo "#                          #"
  echo "############################"
  echo ""
}

evaluateGameMode()
{
  if [ $(( "$RANDOM" % 200 + 1 )) -lt "$2" ]; then
      echo "$1       ON"
  else
      echo "$1      OFF"
  fi
}

chooseMapType()
{
  MAP_TYPES_COUNT=$((${#MAP_TYPES[@]}))

  MAP_TYPE_SUM=0
  INDEX=1
  while [ $INDEX -lt $MAP_TYPES_COUNT ]
  do
    MAP_TYPE_SUM=$((MAP_TYPE_SUM + MAP_TYPES[INDEX]))
    INDEX=$(( INDEX + 2 ))
  done

  CHOSEN_MAP_TYPE=""
  RANDOM_MAP_TYPE=$(( RANDOM % MAP_TYPE_SUM + 1 ))

  MAP_TYPE_INNER_SUM=0
  INDEX=1
  while [ $INDEX -lt $MAP_TYPES_COUNT ] && [ -z "$CHOSEN_MAP_TYPE" ]
  do
    MAP_TYPE_INNER_SUM=$((MAP_TYPE_INNER_SUM + MAP_TYPES[INDEX]))
    if [ $RANDOM_MAP_TYPE -lt $MAP_TYPE_INNER_SUM ]; then
      CHOSEN_MAP_TYPE=${MAP_TYPES[$(( INDEX - 1))]}
    fi
    INDEX=$(( INDEX + 2 ))
  done

  echo "Selected Map Type:" "$CHOSEN_MAP_TYPE"
}

chooseMapSize()
{
  MAP_SIZES_COUNT=$((${#MAP_SIZES[@]}))

  MAP_SIZE_SUM=0
  INDEX=1
  while [ $INDEX -lt $MAP_SIZES_COUNT ]
  do
    MAP_SIZE_SUM=$((MAP_SIZE_SUM + MAP_SIZES[INDEX]))
    INDEX=$(( INDEX + 2 ))
  done

  CHOSEN_MAP_SIZE=""
  RANDOM_MAP_SIZE=$(( RANDOM % MAP_SIZE_SUM + 1 ))

  MAP_SIZE_INNER_SUM=0
  INDEX=1
  while [ $INDEX -lt $MAP_SIZES_COUNT ] && [ -z "$CHOSEN_MAP_SIZE" ]
  do
    MAP_SIZE_INNER_SUM=$((MAP_SIZE_INNER_SUM + MAP_SIZES[INDEX]))
    if [ $RANDOM_MAP_SIZE -lt $MAP_SIZE_INNER_SUM ]; then
      CHOSEN_MAP_SIZE=${MAP_SIZES[$(( INDEX - 1))]}
    fi
    INDEX=$(( INDEX + 2 ))
  done

  echo "Selected Map Size:" "$CHOSEN_MAP_SIZE"
}

chooseCivilization()
{
  CIVILIZATIONS_COUNT=$((${#CIVILIZATIONS[@]}))

  RANDOM_CIVILIZATION=$(( RANDOM % CIVILIZATIONS_COUNT ))

  echo "Selected Civilization:" "${CIVILIZATIONS[RANDOM_CIVILIZATION]}"
}


# main
printHeader

# check for optional generations
read -p "Do you want to randomly select a civilization (y/[n]): " OPTION_CIVILIZATION
read -p "Do you want to generate a map type (y/[n]): " OPTION_MAP_TYPE
read -p "Do you want to generate a map size (y/[n]): " OPTION_MAP_SIZE
echo ""

# Printout
echo ""
echo "Generated Settings:"
echo ""

if [ "$OPTION_CIVILIZATION" == "y" ]; then
  chooseCivilization
  if [ "$OPTION_MAP_TYPE" != "y" ] && [ "$OPTION_MAP_SIZE" != "y" ]; then
    echo ""
  fi
fi
if [ "$OPTION_MAP_TYPE" == "y" ]; then
  chooseMapType
  if [ "$OPTION_MAP_SIZE" != "y" ]; then
    echo ""
  fi
fi
if [ "$OPTION_MAP_SIZE" == "y" ]; then
  chooseMapSize
  echo ""
fi

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
