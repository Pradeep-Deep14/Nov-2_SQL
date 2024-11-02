CREATE TABLE companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100)
     );
     INSERT INTO companies VALUES 
         (1, 'Tata Group'), 
         (2, 'Wipro'), 
         (3, 'TCS');

SELECT * FROM COMPANIES

/*
List all companies that have a name starting with "T" using regex.
*/

SELECT COMPANY_NAME
FROM COMPANIES
WHERE COMPANY_NAME LIKE '%T%'