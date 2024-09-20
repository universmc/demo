const crypto = require('crypto'); // Utilisation du module 'crypto' pour générer des nombres aléatoires

// Fonction pour générer une graine basée sur l'horodatage Unix
function generateSeed() {
    const unixTimestamp = Math.floor(Date.now() / 1000); // Obtenir le timestamp Unix actuel
    return unixTimestamp.toString();
}

// Fonction pour générer un nombre aléatoire de 24 chiffres basé sur la graine
function generateRandomNumber(seed) {
    const hash = crypto.createHash('sha256'); // Création d'un hash SHA-256
    hash.update(seed); // Utilisation de la graine pour alimenter le hash
    const hashValue = hash.digest('hex'); // Conversion du hash en une chaîne hexadécimale

    // Conversion de la chaîne hexadécimale en nombre entier de 24 chiffres
    const randomNumber = BigInt('0x' + hashValue.slice(0, 101)).toString().padStart(24, '0'); // Prendre les 24 premiers caractères et les convertir en BigInt
    return randomNumber.slice(0, 101); // Retourne les 24 chiffres
}

// Génération de la graine
const seed = generateSeed();
let randomNumbers = [];

// Fonction pour générer un nouveau nombre aléatoire chaque milliseconde
const millisecondInterval = setInterval(() => {
    const newRandomNumber = generateRandomNumber(seed + Date.now()); // Génère un nombre aléatoire basé sur la graine et l'heure actuelle
    randomNumbers.push(newRandomNumber); // Ajouter le nouveau nombre à la liste
}, 1);

// Fonction pour afficher un nombre toutes les secondes
const secondInterval = setInterval(() => {
    if (randomNumbers.length > 0) {
        const numberToShow = randomNumbers.pop(); // Prend le dernier nombre généré
        process.stdout.clearLine(0); // Efface la ligne dans la console
        process.stdout.cursorTo(0); // Ramène le curseur au début de la ligne
        process.stdout.write(`Nombre affiché : ${numberToShow}`); // Affiche le nombre
    }
}, 1000);

// Arrêt de la génération de nombres après une période de temps (optionnel)
setTimeout(() => {
    clearInterval(millisecondInterval); // Arrêter de générer des nombres aléatoires
    clearInterval(secondInterval); // Arrêter d'afficher des nombres
    console.log('\nArrêt de la génération des nombres.'); // Message de fin
}, 30000); // Arrêter après 30 secondes
