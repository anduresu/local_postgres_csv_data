\c local_db;


\copy public.csv_data FROM '/home/csv_data/data.csv' DELIMITER ';' CSV HEADER;
