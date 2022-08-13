/* Database schema to keep the structure of entire database. */


CREATE TABLE animals(
  id            INT GENERATED ALWAYS AS IDENTITY,
  name                 VARCHAR(100),
  date_of_birth        date,
  escape_attempts      INT,
  neutered             boolean,
  weight_kg            decimal,
  species_id           INT REFERENCES species(specie),
  owner_id             INT REFERENCES owners(owner_id),
  PRIMARY KEY(id)
);


CREATE TABLE owners(
  owner_id             INT GENERATED ALWAYS AS IDENTITY,
  full_name            VARCHAR(100),
  age                  INT,
  PRIMARY KEY(owner_id)
);

CREATE TABLE species(
  species_id            INT GENERATED ALWAYS AS IDENTITY,
  name                  VARCHAR(100),
  PRIMARY KEY(species_id)
);

CREATE TABLE vets(
  vets_id                    INT GENERATED ALWAYS AS IDENTITY,
  name                       VARCHAR(100),
  age                        INT,
  date_of_graduation         date,
  PRIMARY KEY(vets_id)
);

CREATE TABLE specializations(
  species_id           INT REFERENCES species(species_id),
  vets_id              INT REFERENCES vets(vets_id)
);

CREATE TABLE visits(
  id                   INT REFERENCES animals(id),
  vets_id              INT REFERENCES vets(vets_id),
);
ALTER TABLE visits
ADD COLUMN visit_date  date;

