USE dbtest;
SELECT * FROM students_table;

-- Updating a record;
UPDATE students_table SET age = '21' WHERE student_id = 5;

-- Deleting a row;
DELETE FROM classes_table
WHERE class_id = '4444';
SELECT * FROM classes_table;

-- Joining tables;
SELECT *
FROM students_table 
JOIN classes_table 
	ON students_table.student_id=classes_table.class_id;
    
-- Running a simple query;    
SELECT *
FROM students_table
WHERE last_name = 'MATTIS' AND age = 19; 

-- demonstrate the relations between the 2 tables
SELECT *
FROM students_table, classes_table
WHERE age = 19 AND class_id = 2222;

-- Sorting data in ascending order by last name in students_table
SELECT *
FROM students_table order by last_name asc

