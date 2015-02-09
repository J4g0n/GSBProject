USE GSBdb;


CREATE TABLE utilisateurs (
  login VARCHAR(64) NOT NULL PRIMARY KEY,
  motDePasse VARCHAR(64) NOT NULL,
  nom VARCHAR(64),
  prenom VARCHAR(64),
  adresse VARCHAR(128),
  codePostal VARCHAR(32),
  ville VARCHAR(64),
  typeUtilisateur VARCHAR(32)
);

CREATE TABLE regions (
  id INT NOT NULL PRIMARY KEY,
  libelle VARCHAR(32) NOT NULL
);

CREATE TABLE secteurs (
  id INT NOT NULL PRIMARY KEY,
  libelle VARCHAR(32) NOT NULL,
  idRegion INT,
  FOREIGN KEY (idRegion) REFERENCES regions(id)
);

CREATE TABLE departements (
  id INT NOT NULL PRIMARY KEY,
  libelle VARCHAR(32) NOT NULL,
  idSecteur INT,
  FOREIGN KEY (idSecteur) REFERENCES secteurs  (id)
);

CREATE TABLE responsables (
  id INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(64),
  motDePasse VARCHAR(64),
  nom VARCHAR(64) NOT NULL,
  prenom VARCHAR(64) NOT NULL,
  adresse VARCHAR(128) NOT NULL,
  codePostal VARCHAR(32) NOT NULL,
  ville VARCHAR(64) NOT NULL,
  dateEmbauche DATE NOT NULL,
  photo VARCHAR(1024),
  idRegion INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idRegion) REFERENCES regions(id),
  FOREIGN KEY (login) REFERENCES utilisateurs(login)
);

CREATE TABLE delegues (
  id INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(64),
  motDePasse VARCHAR(64),
  nom VARCHAR(64) NOT NULL,
  prenom VARCHAR(64) NOT NULL,
  adresse VARCHAR(128) NOT NULL,
  codePostal VARCHAR(32) NOT NULL,
  ville VARCHAR(64) NOT NULL,
  dateEmbauche DATE NOT NULL,
  photo VARCHAR(1024),
  idResponsable INT NOT NULL,
  idSecteur INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idResponsable) REFERENCES responsables(id),
  FOREIGN KEY (idSecteur) REFERENCES secteurs(id),
  FOREIGN KEY (login) REFERENCES utilisateurs(login)
);

CREATE TABLE visiteurs (
  id INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(64),
  motDePasse VARCHAR(64),
  nom VARCHAR(64) NOT NULL,
  prenom VARCHAR(64) NOT NULL,
  adresse VARCHAR(128) NOT NULL,
  codePostal VARCHAR(32) NOT NULL,
  ville VARCHAR(64) NOT NULL,
  dateEmbauche DATE NOT NULL,
  photo VARCHAR(1024),
  idDelegue INT NOT NULL,
  idDepartement INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idDelegue) REFERENCES delegues(id),
  FOREIGN KEY (idDepartement) REFERENCES departements(id),
  FOREIGN KEY (login) REFERENCES utilisateurs(login)
);

CREATE TABLE fraisForfaits (
  codeFrais INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(32) NOT NULL,
  montant FLOAT NOT NULL,
  PRIMARY KEY (codeFrais)
);

CREATE TABLE etatsFrais (
  codeEtatFrais INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(32) NOT NULL,
  PRIMARY KEY (codeEtatFrais)
);

CREATE TABLE etatsFiche (
  codeEtatFiche INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(32) NOT NULL,
  PRIMARY KEY (codeEtatFiche)
);

-- id must be the same as idVisiteur
CREATE TABLE fichesFrais (
  idVisiteur INT NOT NULL,
  annee VARCHAR(16) NOT NULL,
  mois VARCHAR(16) NOT NULL,
  nbJustificatifs INT NOT NULL,
  montantValide DOUBLE(11,2) NOT NULL,
  dateModif DATE NOT NULL,
  etatFiche INT NOT NULL,
  PRIMARY KEY (idVisiteur, annee, mois),
  FOREIGN KEY (idVisiteur) REFERENCES visiteurs(id),
  FOREIGN KEY (etatFiche) REFERENCES etatsFiche(codeEtatFiche)
);

CREATE TABLE lignesFraisForfaits (
  idVisiteur INT NOT NULL,
  annee VARCHAR(64) NOT NULL,
  mois VARCHAR(64) NOT NULL,
  codeFraisForfait INT NOT NULL,
  etatFrais INT NOT NULL,
  quantite INT NOT NULL,
  PRIMARY KEY (idVisiteur, annee, mois, codeFraisForfait),
  FOREIGN KEY (idVisiteur) REFERENCES visiteurs(id),
  FOREIGN KEY (codeFraisForfait) REFERENCES fraisForfaits(codeFrais),
  FOREIGN KEY (etatFrais) REFERENCES etatsFrais(codeEtatFrais)
);

CREATE TABLE lignesFraisHorsForfait (
  idVisiteur INT NOT NULL,
  annee VARCHAR(64) NOT NULL,
  mois VARCHAR(64) NOT NULL,
  numOrdre INT NOT NULL,
  codeFrais INT NOT NULL,
  etatFrais INT NOT NULL,
  libelle VARCHAR(32) NOT NULL,
  montant INT NOT NULL,
  PRIMARY KEY (idVisiteur, annee, mois, numOrdre),
  FOREIGN KEY (idVisiteur) REFERENCES visiteurs(id),
  FOREIGN KEY (codeFrais) REFERENCES fraisForfaits(codeFrais),
  FOREIGN KEY (etatFrais) REFERENCES etatsFiche(codeEtatFiche)
);
