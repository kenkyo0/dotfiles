liste=("actually" "alpaca" "beavis.zen" "blowfish" "bong" "bud-frogs" "bunny" "cheese" "cower" "cupcake" "daemon" "default" "dragon" "elephant" "elephant-in-snake" "eyes" "flaming-sheep" "fox" "ghostbusters" "head-in" "hellokitty" "kiss" "kitty" "koala" "kosh" "llama" "luke-koala" "mech-and" "meow" "milk" "moofasa" "moose" "mutilated" "ren" "sheep" "skeleton" "small" "stegosaurus" "stimpy" "supermilker" "surgery" "sus" "three-eyes" "turkey" "turtle" "tux" "udder" "vader" "vader-koala" "www")

> cows.txt

for i in "${liste[@]}"; do
    echo "--- Character: $i ---" >> cows.txt
    echo "I am a $i" | cowsay -f "$i" >> cows.txt
    echo -e "\n" >> cows.txt
done
