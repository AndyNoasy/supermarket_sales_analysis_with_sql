COPY categories 
FROM 'C:\Users\Noasy.cdg\OneDrive - Sanifer\Bureau\TRAVAIL\LIGNES DE CODE\PROJECTS\descriptive_analysis_with_sql\dataset\categories.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

COPY customers 
FROM 'C:\Users\Noasy.cdg\OneDrive - Sanifer\Bureau\TRAVAIL\LIGNES DE CODE\PROJECTS\descriptive_analysis_with_sql\dataset\customers.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

COPY departments 
FROM 'C:\Users\Noasy.cdg\OneDrive - Sanifer\Bureau\TRAVAIL\LIGNES DE CODE\PROJECTS\descriptive_analysis_with_sql\dataset\departments.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

COPY products 
FROM 'C:\Users\Noasy.cdg\OneDrive - Sanifer\Bureau\TRAVAIL\LIGNES DE CODE\PROJECTS\descriptive_analysis_with_sql\dataset\products.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

COPY stores 
FROM 'C:\Users\Noasy.cdg\OneDrive - Sanifer\Bureau\TRAVAIL\LIGNES DE CODE\PROJECTS\descriptive_analysis_with_sql\dataset\stores.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

COPY sales 
FROM 'C:\Users\Noasy.cdg\OneDrive - Sanifer\Bureau\TRAVAIL\LIGNES DE CODE\PROJECTS\descriptive_analysis_with_sql\dataset\sales.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF-8');