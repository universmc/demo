
# Affichage de l'heure et du mode de développement
echo "💻$(date "+%H:%M:%S") /dev mode"
titre() {  
    echo "   ╔═══════════════════════════════════════════════════════════╗";
    echo "   ║               _                                           ║";
    echo "   ║   _   _ _ __ (_)_   _____ _ __ ___       _ __ ___   ___   ║";
    echo "   ║  | | | | '_ \| \ \ / / _ \ '__/ __|_____| '_ ' _' \| __|  ║";
    echo "   ║  | |_| | | | | |\ V /  __/ |  \__ \_____| | | | | | (__   ║";
    echo "   ║   \__,_|_| |_|_| \_/ \___|_|  |___/     |_| |_| |_|\___|  ║";
    echo "   ║                                                           ║";
    echo "   ╚═══════════════════════════════════════════════════════════╝";
    echo ""; 

# Définition de la fonction 'menu' pour afficher le menu avec les options:
menu() {  
    echo "  ╔════════════════════════════════════════════════════════════════╗";
    echo "  ║ 💫                  🔷 Welcom univers - Ia 🔷               [🛰]║";
    echo "  ╠════════════════════════════════════════════════════════════════╣";
    echo "  ║[📱]                                                            ║";
    echo "  ║       [e] - Pibot            ════════════════════════════╣     ║";
    echo "  ║                             ║                            ║     ║";
    echo "  ║       [d] - Gemini          ║                            ║     ║";
    echo "  ║       [i] - Gpt             ║                            ║     ║";
    echo "  ║       [e] - Avatars         ║                            ║     ║";
    echo "  ║                             ║                            ║     ║";
    echo "  ║       [m] - neofs           ║                            ║     ║";
    echo "  ║       [b] - worker          ║                            ║     ║";
    echo "  ║       [g] - Gembot          ║                            ║     ║";
    echo "  ║                                                                ║";
    echo "  ║       [n] - youtube                                            ║";
    echo "  ║       [u] - Update                                             ║";
    echo "  ║                                                      [g] - map ║";
    echo "  ╠════════════════════════════════════════════════════════════════╣";
    echo "  ╠[💻.📡/<: ██████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░/%>║";
    echo "  ╚════════════════════════════════════════════════════════════════╝";
    echo ""

read -p "Entrez votre choix : " commande

case $commande in

        p)
            make commandeP
            ;;
        n)
            make commandeN
            ;;
        w)
            make commandeW
            ;;
        a)
            make commandeA
            ;;
        g)
            make commandeG
            ;;

        p)
            make commandeP
            ;;
        y)
            make commandeY
            ;;
        o)
            make commandeO
            ;;
        u)
            make commandeU
            ;;
        e)
            make commandeE
            ;;
        u)
            make commandeU
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