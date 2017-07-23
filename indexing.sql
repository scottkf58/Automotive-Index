/*CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_us;

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

CREATE INDEX index1 ON car_models (make_title)
WHERE make_code = 'LAM';
-- Time: 0.294 ms

CREATE INDEX index2 ON car_models (make_title)
WHERE make_code = 'GT-R';
-- Time: 0.175 ms

CREATE INDEX index3 ON car_models (make_code, model_code, model_title, year)
WHERE make_code = 'LAM';
-- Time: 0.177 ms

CREATE INDEX index4 ON car_models (id, make_code, make_title, model_code, model_title, year)
WHERE year BETWEEN '2010' AND '2015';
-- Time: 0.197 ms

CREATE INDEX index5 ON car_models (id, make_code, make_title, model_code, model_title, year)
WHERE year = '2010';
-- Time: 0.549 ms























