
create database project;
use project;
select * from housing;
SELECT * FROM housing WHERE crim IS NULL OR rm IS NULL OR medv IS NULL;
DELETE FROM housing WHERE crim IS NULL OR rm IS NULL OR medv IS NULL; 
CREATE TABLE housing_clean AS SELECT DISTINCT * FROM housing;
DROP TABLE housing; 
RENAME TABLE housing_clean TO housing;
DELETE FROM housing WHERE medv >= 50;
DELETE FROM housing WHERE rm <= 0 OR lstat < 0;
SELECT
    COUNT(*) AS total_rows,
    AVG(medv) AS avg_price,
    MIN(medv) AS min_price,
    MAX(medv) AS max_price
FROM housing;
SELECT * FROM housing;