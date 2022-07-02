# read the users input
read -p "width: " WID
read -p "height: " HEI
#convert random text to image based on the users input
mx=$WID;my=$HEI;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- "generated.png"
#echo some words
echo ""
echo "fuzzy images generated!"
echo ""
