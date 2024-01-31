CREATE TABLE students (
	id 			integer                  PRIMARY KEY, 
	first_name 	character varying(100)   NOT NULL,
	middle_name character varying(100),
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

SELECT * FROM students WHERE location = 'Manila';

SELECT ROUND(AVG(age),2) FROM students;

SELECT * from students ORDER BY age DESC;

-- CREATE new TABLE  research_papers

CREATE TYPE grades AS ENUM ('A', 'B', 'C', 'D', 'E', 'F', NULL);

CREATE TABLE research_papers (
    id              integer     NOT NULL,
    student_id      integer,
    grade           grades,
    PRIMARY KEY (id),
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- INSERT 10 RECORDS
INSERT INTO research_papers (id, student_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'C'),
(4, 4, 'E'),
(5, 5, 'D'),
(6, 1, 'A'),
(7, 2, 'A'),
(8, 3, NULL),
(9, 4, NULL),
(10, 1, 'A');

-- ALL STUDENTS WITH MULTIPLE RESEARCH PAPER
SELECT students.first_name, students.last_name, COUNT(research_papers.id) AS number_of_research_papers
FROM students
INNER JOIN research_papers ON students.id = research_papers.student_id
GROUP BY students.first_name, students.last_name
HAVING COUNT(research_papers.id) > 1;

-- ALL STUDENTS WITH UNGRADED RESEARCH PAPERS
SELECT students.first_name, students.last_name, COUNT(research_papers.id) AS research_paper_id, COUNT(research_papers.grade) AS grade
FROM students
INNER JOIN research_papers ON students.id = research_papers.student_id
GROUP BY students.first_name, students.last_name, research_papers.grade
HAVING COUNT(research_papers.grade) = 0;