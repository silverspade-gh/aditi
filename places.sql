-- Origin of the database
CREATE DATABASE aditi;

-- This sequence of statements is the dump for the creation of the Places Visited database

CREATE TABLE places (
id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
name text NOT NULL,
address text NOT NULL,
city text NOT NULL,
state varchar(2),
country varchar(2) NOT NULL,
visited varchar(1) NOT NULL, -- If the place has been visited or not
date_visited date,
notes text
);

-- Add the constraint to enforce date_visited NOT NULL if visited is 'Y' or 'y'

ALTER TABLE places
ADD CONSTRAINT date_visited_not_null_if_visited_yes
CHECK (visited ILIKE 'n' OR (visited NOT ILIKE 'n' AND date_visited IS NOT NULL));

-- Perform \d places and check on the values returned

/* Example Input and Output
\d places
                                   Table "public.places"
    Column    |         Type         | Collation | Nullable |           Default
--------------+----------------------+-----------+----------+------------------------------
 id           | integer              |           | not null | generated always as identity
 name         | text                 |           | not null |
 address      | text                 |           | not null |
 city         | text                 |           | not null |
 state        | character varying(2) |           | not null |
 country      | character varying(2) |           | not null |
 visited      | character varying(1) |           | not null |
 date_visited | date                 |           |          |
 notes        | text                 |           |          |
Indexes:
    "places_pkey" PRIMARY KEY, btree (id)
Check constraints:
    "date_visited_not_null_if_visited_yes" CHECK (visited::text ~~* 'n'::text OR visited::text !~~* 'n'::text AND date_visited IS NOT NULL)
*/

-- Example Row Insert
INSERT INTO places (name, address, city, state, country, visited, date_visited, notes)
VALUES (
'Curly''s Carribean', '1892 Abbey Rd', 'West Palm Beach', 'FL', 'US', 'Y', '2024-11-03', 'The service was OK and the prices were fair, but the food was plentiful and delicious. I would come here once a week if it were closer, but I will stop by if I am in the area.'
);
-- Should output 'INSERT 0 1'. The 0 is an object identifier (OID), but returns zero because it's not used for rows. The 1 is the value signifying how many rows were imported.
