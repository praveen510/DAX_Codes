CREATE DATABASE rankings_db;
USE rankings_db;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    score DECIMAL(5,2)
);

INSERT INTO students (student_name, score) VALUES 
('Alice', 85.50),
('Bob', 92.00),
('Charlie', 87.75),
('David', 92.00),
('Eve', 74.25),
('Frank', 87.75);


select * from students;

SELECT     
id,     
student_name,     
score,    
RANK() OVER (ORDER BY score DESC) AS rank_col,    
DENSE_RANK() OVER (ORDER BY score DESC) AS dense_rank_col,    
PERCENT_RANK() OVER (ORDER BY score DESC) AS percent_rank_col,    
CUME_DIST() OVER (ORDER BY score DESC) AS CUME_DIST_col
FROM     
students;

