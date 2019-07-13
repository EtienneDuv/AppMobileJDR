-- TRUNCATE TABLE campagne RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE carte RESTART IDENTITY;
-- TRUNCATE TABLE personnage RESTART IDENTITY;
-- TRUNCATE TABLE joueur RESTART IDENTITY;

INSERT INTO joueur (nom, prenom, mail) VALUES 
    ( 'Duverney',   'Etienne',      'etienne.duverney@gmail.com' ),
    ( 'Chiaverini', 'Marie',        'marie.chiaverini@gmail.com' ),
    ( 'TestNom',    'Test-Prénom',  'test.test@gmail.com' );

INSERT INTO jeu (nom, infoPersonnage) VALUES
    ('Degenesis',
        '{  "pseudo":"",
            "sexe":"",
            "alignement":"",
            "faction":"",
            "stats":{
                "force":0,
                "intelligence":0,
                "charisme":0,
                "agilité":0
                }
        }'

    ),
    ('Naheulbeuk',
        '{
        "pseudo": "",
        "sexe": "",
        "alignement": "",
        "Religion": "",
        "stats" : {
            "force": 0,
            "intelligence": 0,
            "charisme": 0,
            "agilité": 0 
            }
        }'
    );
