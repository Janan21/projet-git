guessing_game() {
    
    local correct_number=$(ls -l | grep -v '^d' | wc -l)

    local user_guess=0

    # Boucle pour demander à l'utilisateur de deviner
    while [ $user_guess -ne $correct_number ]; do
        # Demander à l'utilisateur de faire une estimation
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read user_guess

        # Vérifier si l'estimation est trop basse, trop haute ou correcte
        if [ $user_guess -lt $correct_number ]; then
            echo "Trop bas ! Essayez encore."
        elif [ $user_guess -gt $correct_number ]; then
            echo "Trop haut ! Essayez encore."
        fi
    done

    # Féliciter l'utilisateur lorsqu'il devine correctement
    echo "Bravo ! Vous avez deviné le bon nombre de fichiers."
}

# Appeler la fonction du jeu
guessing_game

