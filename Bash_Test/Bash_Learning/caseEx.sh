echo "Enter a fruit (apple, banana, orange, or quit):"
read fruit

case $fruit in
  apple)
    echo "Apple pie is tasty!"
    ;;
  banana)
    echo "Bananas are rich in potassium."
    ;;
  orange)
    echo "Oranges are a good source of Vitamin C."
    ;;
  quit)
    echo "Exit"
    exit 0
    ;;
  *)  # Default case
    echo "Invalid input"
    ;;
esac

echo "This is outside the case statement."
