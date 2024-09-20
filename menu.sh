#!/bin/bash

# Fonction pour générer un nombre aléatoire de 75 chiffres
# Affichage de l'heure et du mode de développement
echo "💻 $(date "+%H:%M:%S") /devOps mode"
titre() {  
    echo "                                    ╔═══════════════════════════════════════════════════════════╗";
    echo "                                    ║               _                                           ║";
    echo "                                    ║   _   _ _ __ (_)_   _____ _ __ ___       _ __ ___   ___   ║";
    echo "                                    ║  | | | | '_ \| \ \ / / _ \ '__/ __|_____| '_ ' _' \| __|  ║";
    echo "                                    ║  | |_| | | | | |\ V /  __/ |  \__ \_____| | | | | | (__   ║";
    echo "                                    ║   \__,_|_| |_|_| \_/ \___|_|  |___/     |_| |_| |_|\___|  ║";
    echo "                                    ║                                                           ║";
    echo "                                    ╚═══════════════════════════════════════════════════════════╝";
    echo ""; 

# Définition de la fonction 'menu' pour afficher le menu avec les options:

menu() {
    echo ""
    echo "    ╔═════════════════════════════════════╗     ╔═════════════════════════════════════════════════════════════════════════════════════════╗"
    echo "    ╠───────────{ ✨ Menu ✨ }────────────╣     ║ [📗 📕 📒]                      🔷  "Blog des Developpeurs" 🔷                       [🔎] ║";
    echo "    ║                                     ║     ╠═════════════════════════════════════════════════════════════════════════════════════════╣";
    echo "    ║                      💠             ║     ║                                                                                         ║";
    echo "    ║             ╲┈┈┈┈╱                  ║     ║                                                                                         ║";
    echo "    ║             ╱▔▔▔▔╲                  ║     ║                                                                                         ║";
    echo "    ║            ┃┈▇┈┈▇┈┃                 ║     ║                                                                                         ║";
    echo "    ║          ╭╮┣━━━━━━┫╭╮               ║     ║                                                                                         ║";
    echo "    ║          ┃┃┃┈┈┈┈┈┈┃┃┃               ║     ║                                                                                         ║";
    echo "    ║          ╰╯┃┈┈┈┈┈┈┃╰╯               ║     ║                                                                                         ║";
    echo "    ║            ╰┓┏━━┓┏╯                 ║     ║                                                                                         ║";
    echo "    ║             ╰╯  ╰╯                  ║     ║                                                                                         ║";
    echo "    ║    ┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈      ║     ║                                                                                         ║";
    echo "    ║                                     ║     ║                                                                                         ║";
    echo "    ║                                     ║     ║                                                                                         ║";
    echo "    ║       [] IA                         ║     ║                                                                                         ║";
    echo "    ║       [] Generative -IA             ║     ║                                                                                         ║";
    echo "    ║       [] MyPrompt                   ║     ║                                                                                         ║";
    echo "    ║       [] Chatbot                    ║     ║                                                                                         ║";
    echo "    ║                                     ║     ║                                                                                         ║";
    echo "    ║       [] Blog                       ║     ║                                                                                         ║";
    echo "    ║       [] Machine Learning           ║     ║                                                                                         ║";
    echo "    ║       [] gpt-wallet                 ║     ║                                                                                         ║";
    echo "    ║                                     ║     ║                                                                                         ║";
    echo "    ║    ---------------------------      ║     ║                                                                                         ║";
    echo "    ║       [] Codex                      ║     ║                                                                                         ║";
    echo "    ║       [] Map                        ║     ║                                                                                         ║";
    echo "    ║       [] Exit                       ║     ║                                                                                         ║";
    echo "    ║                                     ║     ║                                                                                         ║";
    echo "    ╠═════════════════════════════════════╣     ╠═════════════════════════════════════════════════════════════════════════════════════════╣";
    echo "    ║ [📱] [📷] [🎹] [🤖] [🗂️] [📊] [💰] . ║     ║/💻.📡/<: ██████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░/%>║";
    echo "    ╚═════════════════════════════════════╝     ╚═════════════════════════════════════════════════════════════════════════════════════════╝"; 
    echo ""

read -p "Entrez votre choix : " commande

case $commande in

        bot)
            make bot
            ;;
        gen)
            make gen
            ;;
        2)
            make commande2
            ;;
        3)
            make commande3
            ;;
        4)
            make commande4
            ;;
        5)
            make commande5
            ;;

        6)
            make commande6
            ;;
        7)
            make commande7
            ;;
        8)
            make commande8
            ;;
        9)
            make commande9
            ;;
        10)
            make commande10
            ;;
        a)
            make commandeA
            ;;
        g)
        make commandeg
            ;;
        r)
            clear
            menu
            ;;

        # Règle par défaut en cas d'entrée invalide
        *)
            echo "Entrée invalide"
            ;;
    esac
}
}
titre
menu  # Appel de la fonction pour afficher le menu: