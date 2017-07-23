/*CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_us;

DROP DATABASE IF EXISTS indexed_cars;

\c indexed_cars indexed_cars_user;
\i scripts/car_models.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql*/


SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- Time: 32.925 ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- Time: 29.916 ms

SELECT make_code, model_code, model_title
FROM car_models
WHERE make_code = 'LAM';
-- Time: 25.743 ms

SELECT * FROM car_models
WHERE year BETWEEN '2010' AND '2015';
-- Time: 82.533 ms

SELECT * FROM car_models
WHERE year = '2010';
-- Time: 31.385 ms


CREATE INDEX make_titles
  ON car_models (make_title);

CREATE INDEX model_titles
  ON car_models (model_title);

-- Index Times
-- Time: 1.816
-- Time: 1.112
-- Time: 64.135
-- Time: 12.587























