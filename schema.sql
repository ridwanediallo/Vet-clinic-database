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
  name            VARCHAR(100),
  PRIMARY KEY(species_id)
);

