USE GSBdb;


-- donnees regions
INSERT INTO `regions` (`id`, `libelle`) VALUES
  (1, 'GUADELOUPE'),
  (2, 'MARTINIQUE'),
  (3, 'GUYANE'),
  (4, 'LA REUNION'),
  (6, 'MAYOTTE'),
  (11, 'ILE-DE-FRANCE'),
  (21, 'CHAMPAGNE-ARDENNE'),
  (22, 'PICARDIE'),
  (23, 'HAUTE-NORMANDIE'),
  (24, 'CENTRE'),
  (25, 'BASSE-NORMANDIE'),
  (26, 'BOURGOGNE'),
  (31, 'NORD-PAS-DE-CALAIS'),
  (41, 'LORRAINE'),
  (42, 'ALSACE'),
  (43, 'FRANCHE-COMTE'),
  (52, 'PAYS DE LA LOIRE'),
  (53, 'BRETAGNE'),
  (54, 'POITOU-CHARENTES'),
  (72, 'AQUITAINE'),
  (73, 'MIDI-PYRENEES'),
  (74, 'LIMOUSIN'),
  (82, 'RHONE-ALPES'),
  (83, 'AUVERGNE'),
  (91, 'LANGUEDOC-ROUSSILLON'),
  (93, 'PROVENCE-ALPES-COTE D''AZUR'),
  (94, 'CORSE');

-- donnees secteurs

INSERT INTO `secteurs` (`id`, `libelle`, `idRegion`) VALUES
  (1, 'PARIS NORD', 11),
  (2, 'PARIS SUD', 11),
  (3, 'PARIS (CENTRE)', 11);


-- donnees departements
INSERT INTO `departements` (`id`, `libelle`, `idSecteur`) VALUES
  (1, 'AIN', NULL),
  (2, 'AISNE', NULL),
  (3, 'ALLIER', NULL),
  (4, 'ALPES-DE-HAUTE-PROVENCE', NULL),
  (5, 'HAUTES-ALPES', NULL),
  (6, 'ALPES-MARITIMES', NULL),
  (7, 'ARDECHE', NULL),
  (8, 'ARDENNES', NULL),
  (9, 'ARIEGE', NULL),
  (10, 'AUBE', NULL),
  (11, 'AUDE', NULL),
  (12, 'AVEYRON', NULL),
  (13, 'BOUCHES-DU-RHONE', NULL),
  (14, 'CALVADOS', NULL),
  (15, 'CANTAL', NULL),
  (16, 'CHARENTE', NULL),
  (17, 'CHARENTE-MARITIME', NULL),
  (18, 'CHER', NULL),
  (19, 'CORREZE', NULL),
  (21, 'COTE-D''OR', NULL),
  (22, 'COTES-D''ARMOR', NULL),
  (23, 'CREUSE', NULL),
  (24, 'DORDOGNE', NULL),
  (25, 'DOUBS', NULL),
  (26, 'DROME', NULL),
  (27, 'EURE', NULL),
  (28, 'EURE-ET-LOIR', NULL),
  (29, 'FINISTERE', NULL),
  (30, 'GARD', NULL),
  (31, 'HAUTE-GARONNE', NULL),
  (32, 'GERS', NULL),
  (33, 'GIRONDE', NULL),
  (34, 'HERAULT', NULL),
  (35, 'ILLE-ET-VILAINE', NULL),
  (36, 'INDRE', NULL),
  (37, 'INDRE-ET-LOIRE', NULL),
  (38, 'ISERE', NULL),
  (39, 'JURA', NULL),
  (40, 'LANDES', NULL),
  (41, 'LOIR-ET-CHER', NULL),
  (42, 'LOIRE', NULL),
  (43, 'HAUTE-LOIRE', NULL),
  (44, 'LOIRE-ATLANTIQUE', NULL),
  (45, 'LOIRET', NULL),
  (46, 'LOT', NULL),
  (47, 'LOT-ET-GARONNE', NULL),
  (48, 'LOZERE', NULL),
  (49, 'MAINE-ET-LOIRE', NULL),
  (50, 'MANCHE', NULL),
  (51, 'MARNE', NULL),
  (52, 'HAUTE-MARNE', NULL),
  (53, 'MAYENNE', NULL),
  (54, 'MEURTHE-ET-MOSELLE', NULL),
  (55, 'MEUSE', NULL),
  (56, 'MORBIHAN', NULL),
  (57, 'MOSELLE', NULL),
  (58, 'NIEVRE', NULL),
  (59, 'NORD', NULL),
  (60, 'OISE', NULL),
  (61, 'ORNE', NULL),
  (62, 'PAS-DE-CALAIS', NULL),
  (63, 'PUY-DE-DOME', NULL),
  (64, 'PYRENEES-ATLANTIQUES', NULL),
  (65, 'HAUTES-PYRENEES', NULL),
  (66, 'PYRENEES-ORIENTALES', NULL),
  (67, 'BAS-RHIN', NULL),
  (68, 'HAUT-RHIN', NULL),
  (69, 'RHONE', NULL),
  (70, 'HAUTE-SAONE', NULL),
  (71, 'SAONE-ET-LOIRE', NULL),
  (72, 'SARTHE', NULL),
  (73, 'SAVOIE', NULL),
  (74, 'HAUTE-SAVOIE', NULL),
  (75, 'PARIS', 3),
  (76, 'SEINE-MARITIME', NULL),
  (77, 'SEINE-ET-MARNE', NULL),
  (78, 'YVELINES', 1),
  (79, 'DEUX-SEVRES', NULL),
  (80, 'SOMME', NULL),
  (81, 'TARN', NULL),
  (82, 'TARN-ET-GARONNE', NULL),
  (83, 'VAR', NULL),
  (84, 'VAUCLUSE', NULL),
  (85, 'VENDEE', NULL),
  (86, 'VIENNE', NULL),
  (87, 'HAUTE-VIENNE', NULL),
  (88, 'VOSGES', NULL),
  (89, 'YONNE', NULL),
  (90, 'TERRITOIRE DE BELFORT', NULL),
  (91, 'ESSONNE', 2),
  (92, 'HAUTS-DE-SEINE', 1),
  (93, 'SEINE-SAINT-DENIS', 1),
  (94, 'VAL-DE-MARNE', 2),
  (95, 'VAL-D''OISE', NULL),
  (111, 'PARIS ALL', NULL),
  (971, 'GUADELOUPE', NULL),
  (972, 'MARTINIQUE', NULL),
  (973, 'GUYANE', NULL),
  (974, 'LA REUNION', NULL),
  (976, 'MAYOTTE', NULL);

-- donnees responsable

INSERT INTO `responsables` (`nom`, `prenom`, `adresse`, `ville`, `codePostal`, `dateEmbauche`, `login`, `motDePasse`, `photo`, `idRegion`) VALUES
  ('DUPONT', 'Marine', '7 rue du 8 Mai 1945', 'MASSY-PALAISEAU', '91000', STR_TO_DATE('1900-01-02', '%Y-%m-%d'), NULL, NULL, 'femme033.gif', 11);

-- donnees delegues

INSERT INTO `delegues` (`nom`, `prenom`, `adresse`, `ville`, `codePostal`, `dateEmbauche`, `login`, `photo`, `motDePasse`, `idResponsable`, `idSecteur`) VALUES
  ('DURAND', 'Patrick', '9 chemin du lot Neuf', 'PARIS', '75010', STR_TO_DATE('2013-02-28', '%Y-%m-%d'), NULL, NULL, 'femme027.gif', (SELECT id FROM responsables WHERE nom='DUPONT'), 2),
  ('DUPONT', 'Louise', '19 rue du Genie	', 'Villejuif', '94800', STR_TO_DATE('2013-02-22', '%Y-%m-%d'), NULL, NULL,'homme017.gif', (SELECT id FROM responsables WHERE nom='DUPONT'), 2);


-- donnees utilisateurs

INSERT INTO `utilisateurs` (`login`, `motDePasse`) VALUES
  ('DURAND', '1234');

-- donnees visiteurs

INSERT INTO `visiteurs` (`nom`, `prenom`, `adresse`, `ville`, `codePostal`, `dateEmbauche`, `login`, `motDePasse`, `photo`, `idDepartement`, `idDelegue`) VALUES
  ('LUIDGI', 'Mario', '7 rue NintendoStreet	', 'SAVIGNY SUR ORGE', '91300', STR_TO_DATE('2013-02-27', '%Y-%m-%d'), NULL, NULL, 'femme033.gif', 91, (SELECT id FROM delegues WHERE nom='DUPONT')),
  ('LAMY', 'Julie', '7 rue Henri Mondor	', 'Creteil', '94000', STR_TO_DATE('2013-02-28', '%Y-%m-%d'), NULL, NULL, 'femme011.gif', 94, (SELECT id FROM delegues WHERE nom='DURAND'));