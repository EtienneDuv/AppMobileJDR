INSERT INTO campagne (nom, idJeu, idMj1) VALUES
    ('Campagne avec les potes', 1, 1),
    ('Les Terres de Naheulbeuk', 2, 2),
    ('Campagne 1', 1, 3),
    ('Campagne 2', 2, 2);

INSERT INTO carte (idJoueur, nom, carte) VALUES
    (1, 'Mines', 'urlToMap'),
    (1, 'Donjon', 'urlToMap'),
    (2, 'Bâtiment', 'urlToMap'),
    (3, 'Endroit', 'urlToMap');

INSERT INTO personnage(idJoueur, idJeu, nom, info) VALUES
    (1, 1, 'Kragor', '{}'),
    (1, 2, 'Gomaloth', '{}'),
    (2, 1, 'Alagaros', '{}'),
    (3, 1, 'Trauwen', '{}'),
    (3, 2, 'Nemy', '{}');