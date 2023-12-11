

declare -A colors


# Setting values

colors["red"]="#ff0000"
colors["blue"]="#00ff00"
colors["green"]="#0000ff"


# Looking up a value by key
echo " ${colors["red"]}" #NOTE: IMPORTANT must have {}


# Looking up a value by variable key

red="r"
colors["${red}"]="NRED"

echo "${colors[${red}]}"
echo "${colors["r"]}"


# Updateing a value
colors["green"]="#0f0"
echo "${colors["green"]}"

#Deleting a value

unset colors["r"]
echo "$colors["r"]"



# Check if key exists

[ -v colors["r"] ] 
