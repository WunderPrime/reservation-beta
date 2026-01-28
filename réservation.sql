-- Création de la base
CREATE DATABASE IF NOT EXISTS reservation;
USE reservation;

-- =========================
-- Table réservations
-- =========================
CREATE TABLE reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    nb_personnes NUMBER,
    date_reservation DATE NOT NULL,
    heure_reservation TIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Requêtes principales
-- =========================

-- Ajouter une réservation
INSERT INTO reservation (id, nom, email, nb_personnes, date_reservation, heure_reservation)
VALUES (?, ?, ?, ?);

-- Modifier une réservation
UPDATE reservation
SET nom=?, email=?,date_reservation=?, heure_reservation=?, nb_personnes=?
WHERE id=?;

-- Supprimer une réservation
DELETE FROM reservation
WHERE id=?;

-- Afficher toutes les réservations
SELECT * FROM reservation;

