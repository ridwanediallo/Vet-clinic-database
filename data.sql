/* Populate database with sample data. */

--
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Agumon', '02-03-2020', 0, true, 10.23);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Gabumon', '15-12-2018', 2, true, 8);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Pikachu', '07-02-2020', 5, true, 15.04);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Devimon', '12-05-2017', 1, false, 11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Charmander', '08-02-2020', 0, false, -11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Plantmon', '15-11-2021', 2, true, -5.7);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Squirtle', '02-04-1993', 3, true, -12.13);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Angemon', '12-06-2005', 1, true, -45);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Boarmon', '07-06-2005', 7, true, 20.4);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Blossom', '13-10-1998', 3, true, 17);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Ditto', '14-05-2022', 4, true, 22);

DROP COLUMN species;

-- OWNERS TABLE-----------------------------------------------------------------------------

INSERT INTO owners(full_name, age) VALUES('Sam Smith', 34);
INSERT INTO owners(full_name, age) VALUES('Jennifer Orwell', 19);
INSERT INTO owners(full_name, age) VALUES('Bob', 45);
INSERT INTO owners(full_name, age) VALUES('Melody Pond', 77);
INSERT INTO owners(full_name, age) VALUES('Dean Winchester', 17);
INSERT INTO owners(full_name, age) VALUES('Jodie Whittaker', 38);

-- SPECIES TABLE-----------------------------------------------------------------------------

INSERT INTO species(name) VALUES('Pokemon');
INSERT INTO species(name) VALUES('Digimon');

-- ANIMALS OWNERS-----------------------------------------------------------------------------
UPDATE animals SET owner_id = 1 WHERE id = 1;
UPDATE animals SET owner_id = 2 WHERE id = 2;
UPDATE animals SET owner_id = 2 WHERE id = 3;
UPDATE animals SET owner_id = 3 WHERE id = 4;
UPDATE animals SET owner_id = 3 WHERE id = 6;
UPDATE animals SET owner_id = 4 WHERE id = 5;
UPDATE animals SET owner_id = 4 WHERE id = 7;
UPDATE animals SET owner_id = 4 WHERE id = 10;
UPDATE animals SET owner_id = 5 WHERE id = 9;
UPDATE animals SET owner_id = 5 WHERE id = 8;

-- ANIMALS SPECIES-----------------------------------------------------------------------------
UPDATE animals SET species_id = 1 WHERE name LIKE '%mon%';
UPDATE animals SET species_id = 2 WHERE species_id IS NULL;

-- VETS TABLE-----------------------------------------------------------------------------

INSERT INTO vets(name, age, date_of_graduation) VALUES('William Tatcher', 45, '23-04-2000');
INSERT INTO vets(name, age, date_of_graduation) VALUES('Maisy Smith ', 26, '17-01-2019');
INSERT INTO vets(name, age, date_of_graduation) VALUES('Stephanie Mendez', 64, '04-05-1981');
INSERT INTO vets(name, age, date_of_graduation) VALUES('Jack Harkness', 38, '08-06-2008');

-- SPECIALIZATION TABLE-----------------------------------------------------------------------------

INSERT INTO specializations(species_id, vets_id) VALUES(1,1);
INSERT INTO specializations(species_id, vets_id) VALUES(2,3);
INSERT INTO specializations(species_id, vets_id) VALUES(1,3);
INSERT INTO specializations(species_id, vets_id) VALUES(2,4);

-- VISITS TABLE-----------------------------------------------------------------------------

INSERT INTO visits(id, vets_id, visit_date) VALUES(1, 1, '24-05-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(1, 3, '22-07-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(2, 4, '02-02-2021');
INSERT INTO visits(id, vets_id, visit_date) VALUES(3, 2, '05-02-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(3, 2, '08-03-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(3, 2, '14-05-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(4, 3, '04-05-2021');
INSERT INTO visits(id, vets_id, visit_date) VALUES(5, 4, '24-02-2021');
INSERT INTO visits(id, vets_id, visit_date) VALUES(6, 2, '21-12-2019');
INSERT INTO visits(id, vets_id, visit_date) VALUES(6, 1, '10-08-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(6, 2, '07-02-2021');
INSERT INTO visits(id, vets_id, visit_date) VALUES(7, 3, '29-09-2019');
INSERT INTO visits(id, vets_id, visit_date) VALUES(8, 4, '03-10-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(8, 4, '04-11-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(9, 2, '24-02-2019');
INSERT INTO visits(id, vets_id, visit_date) VALUES(9, 2, '15-05-2019');
INSERT INTO visits(id, vets_id, visit_date) VALUES(9, 2, '27-02-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(9, 2, '03-08-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(9, 3, '24-05-2020');
INSERT INTO visits(id, vets_id, visit_date) VALUES(9, 1, '02-11-2020');
