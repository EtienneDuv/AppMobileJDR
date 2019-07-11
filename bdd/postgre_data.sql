-- TRUNCATE 
--     joueur RESTART IDENTITY CASCADE, 
--     jeu RESTART IDENTITY

INSERT INTO joueur (nom, prenom, mail) 
VALUES ( 'Duverney', 'Etienne', 'etienne.duverney@gmail.com' );

INSERT INTO jeu (champs)
VALUES (
    '{
    "jeu": "Degenesis",
    "pseudo": "",
    "sexe": "",
    "alignement": "",
    "faction": "",
    "stats" : {
        "force": "",
        "intelligence": "",
        "charisme": "",
        "agilité": "",
    }
    }',
    '{
    "jeu": "Naheulbeuk",
    "pseudo": "",
    "sexe": "",
    "alignement": "",
    "Religion": "",
    "stats" : {
        "force": "",
        "intelligence": "",
        "charisme": "",
        "agilité": "",
    }
    }')