
-- insérer les 25 trames
-- lundi
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('A', 'Lu', '08:30', '09:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('B', 'Lu', '10:00', '11:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('C', 'Lu', '12:00', '13:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('D', 'Lu', '13:30', '14:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('E', 'Lu', '15:00', '16:15');
-- mardi
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('F', 'Ma', '08:30', '09:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('G', 'Ma', '10:00', '11:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('H', 'Ma', '12:00', '13:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('I', 'Ma', '13:30', '14:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('J', 'Ma', '15:00', '16:15');
-- mercredi
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('K', 'Me', '08:30', '09:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('L', 'Me', '10:00', '11:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('M', 'Me', '12:00', '13:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('N', 'Me', '13:30', '14:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('O', 'Me', '15:00', '16:15');
-- jeudi
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('P', 'Je', '08:30', '09:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('Q', 'Je', '10:00', '11:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('R', 'Je', '12:00', '13:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('S', 'Je', '13:30', '14:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('T', 'Je', '15:00', '16:15');
-- vendredi
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('U', 'Ve', '08:30', '09:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('V', 'Ve', '10:00', '11:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('W', 'Ve', '12:00', '13:15');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('X', 'Ve', '13:30', '14:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('Y', 'Ve', '15:00', '16:15');

--

INSERT INTO edifice (code, nom) 
values ('MRR', 'Pavillon Rémi-Rossignol'        ),
       ('MAR', 'Pavillon des arts et beaux arts'),
       ('MJC', 'Pavillon Jean-Cadieux'          );
INSERT INTO faculte (nom, edifice_code)
values ('sciences'                , 'MRR'),
       ('administration'          , 'MJC'),
       ('arts et science sociales', 'MAR');
INSERT INTO departement (nom, faculte_nom)
values ('informatique'     , 'sciences'                ),
       ('administration'   , 'administration'          ),
       ('etudes françaises', 'arts et science sociales');
INSERT INTO etudiant (matricule, prenom, nom, courriel, dept_majeure)
values ('A00213805', 'Elhadj Ibrahima dit Dieudonne', 'Traore','eet8315@umoncton.ca', 'informatique');

INSERT INTO cours (sigle, nom) -- cours.credits est par defaut '3,00' 
values ('FRAN1500', 'Communication orale'         ),
       ('INFO3103', 'Organisation des ordinateurs'),
       ('INFO3106', 'Développement de logiciels'  ),
       ('INFO3114', 'Fichiers et bases de données'),
       ('INFO3212', 'Algorithmique'               ),
       ('INFO4108', 'Programmation UNIX'          );
INSERT INTO section (cours_sigle, groupe, semestre, annee, max_ins) 
values ('FRAN1500', '08M', 'hiver', '2024', '25'),
	   ('INFO3103', '01M', 'hiver', '2024', '30'),
       ('INFO3106', '01M', 'hiver', '2024', '20'),
       ('INFO3114', '01M', 'hiver', '2024', '30'),
       ('INFO3212', '01M', 'hiver', '2024', '30'),
       ('INFO4108', '01M', 'hiver', '2024', '20');
INSERT INTO instructeur (matricule, prenom, nom, departement_nom) 
-- associe des valeurs fictifs au Matricules instructeurs 
values ('A00111111', 'Anahita'  , 'Shafie'  , 'etudes françaises'  ),
       ('A00222222', 'Eric'     , 'Snow'    , 'informatique'       ),
       ('A00333333', 'Gaëtan'   , 'Gauvin'  , 'administration'     ),
       ('A00444444', 'Julien B.', 'Chiasson', 'informatique'       ),
       ('A00555555', 'Eric'     , 'Hervet'  , 'informatique'       );
INSERT INTO info_instructeur (instructeur_matricule, salaire, date_embauche) 
--  inserer des donnees fictifs pour les attributs salaire et la date d'embauche
values ('A00111111', 97000.00 ,  '2018-09-01'),
       ('A00222222', 104000.00,  '2020-01-01'),
       ('A00333333', 80000.00 ,  '2019-01-05'),
       ('A00444444', 112000.00,  '2000-01-01'),
       ('A00555555', 101000.00,  '2005-06-12');
INSERT INTO enseigne (instructeur_matricule, section_cours_sigle, section_groupe, section_semestre, annee) 
values ('A00111111', 'FRAN1500', '08M', 'hiver', 2024),
       ('A00222222', 'INFO3114', '01M', 'hiver', 2024),
       ('A00222222', 'INFO3212', '01M', 'hiver', 2024),
       ('A00333333', 'INFO3106', '01M', 'hiver', 2024),
       ('A00444444', 'INFO3103', '01M', 'hiver', 2024),
       ('A00555555', 'INFO4108', '01M', 'hiver', 2024);
INSERT INTO prend (etudiant_matricule, section_cours_sigle, section_groupe, section_semestre, annee)
-- prend.note est par default null  
values ('A00213805', 'FRAN1500', '08M', 'hiver', 2024),  
       ('A00213805', 'INFO3114', '01M', 'hiver', 2024), 
       ('A00213805', 'INFO3212', '01M', 'hiver', 2024),
       ('A00213805', 'INFO3106', '01M', 'hiver', 2024),
       ('A00213805', 'INFO3103', '01M', 'hiver', 2024),
       ('A00213805', 'INFO4108', '01M', 'hiver', 2024);

