/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT * FROM animals WHERE date_of_birth BETWEEN '01-01-2016' AND '01-01-2019';
SELECT * FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT * FROM animals WHERE name = 'Agumon' OR  name = 'Pikachu';
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.5 AND 17.4;
SELECT * FROM animals WHERE weight_kg > 10.5;

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon%';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;

-- DELETE AND UPDATE--------------------------------------------------------
DELETE FROM animals;

DELETE FROM animals WHERE date_of_birth > '01-01-2022';

SAVEPOINT SP1;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT TRANSACTION;

-- AGGREGATE--------------------------------------------------------

SELECT COUNT(*) FROM animals;
SELECT COUNT(name) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals WHERE neutered = true OR neutered = false;
SELECT MIN(weight_kg), MAX(weight_kg) FROM animals;
SELECT neutered, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY neutered;
SELECT neutered, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '01-01-1990' AND '01-01-2000' GROUP BY neutered;

-- QUERIES WITH JION--------------------------------------------------------
SELECT * FROM animals JOIN owners ON animals.owner_id = owners.owner_id WHERE owners.full_name = 'Melody Pond';
SELECT * FROM animals JOIN species ON animals.species_id = species.species_id WHERE species.name = 'Pokemon';
SELECT * FROM animals LEFT JOIN owners ON animals.owner_id = owners.owner_id;

-- How many animals are there per species?------------------------------------------------
SELECT species.name, COUNT(*)
FROM animals
INNER JOIN species
 ON animals.species_id = species.species_id
GROUP BY species.species_id;

-- List all Digimon owned by Jennifer Orwell. --------------------------------------------
SELECT a.name, o.full_name, s.name
FROM animals a
INNER JOIN owners o
 ON a.owner_id = o.owner_id
INNER JOIN species s
 ON a.species_id = s.species_id
WHERE s.name = 'Digimon' AND o.full_name = 'Jennifer Orwell';

-- List all animals owned by Dean Winchester that haven't tried to escape --------------------------------------------
SELECT a.name, o.full_name
FROM animals a
INNER JOIN owners o
 ON a.owner_id = o.owner_id
WHERE a.escape_attempts = 0 AND o.full_name = 'Dean Winchester';

-- Who owns the most animals? -------------------------------------------------------------------------------
SELECT COUNT(o.full_name) AS num, o.full_name
FROM animals a
INNER JOIN owners o
 ON a.owner_id = o.owner_id
GROUP BY o.full_name
ORDER BY num DESC LIMIT 1;


