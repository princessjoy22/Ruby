CREATE TABLE students (
	id 			integer, 
	first_name 	character varying(100)   NOT NULL,
	middle_name character varying(100)   NOT NULL,
	last_name 	character varying(100)   NOT NULL,
	age        	integer 			     NOT NULL,
	location 	character varying(100)   NOT NULL
);	

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES 
    (1,'Juan','', 'Cruz', 18, 'Manila'),
    (2,'Anne','', 'Wall', 20, 'Manila'),
    (3,'Theresa','', 'Joseph', 21, 'Manila'),
    (4,'Isaac','', 'Gray', 19, 'Laguna'),
    (5,'Zack','', 'Matthews', 22, 'Marikina'),
    (6,'Finn','', 'Lam', 25, 'Manila');
    
UPDATE students SET 
    first_name = 'Ivan', 
    middle_name = 'Ingram',
    last_name = 'Howard',
    age = 25, 
    location = 'Bulacan'
WHERE id = 1;

DELETE FROM students where id = 6;

SELECT COUNT(*)
FROM students;

SELECT first_name FROM students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * from students ORDER BY age DESC;



