CREATE TABLE students (
    id          integer                 PRIMARY KEY,
    first_name  character varying(10)   NOT NULL,
    middle_name character varying(10)   DEFAULT 'NULL',
    last_name   character varying(10)   NOT NULL,
    age         integer                 NOT NULL,
    location    character varying(100)  NOT NULL
);

SELECT * FROM students;

INSERT INTO students
	( id, first_name, last_name, age, location )
VALUES
	( 1, 'Juan', 'Cruz', 18, 'Manila'),
	( 2, 'Anne', 'Wall', 20, 'Manila'),
	( 3, 'Theresa', 'Joseph', 21, 'Manila'),
	( 4, 'Isaac', 'Gray', 19, 'Laguna'),
	( 5, 'Zack', 'Matthews', 22, 'Marikina'),
	( 6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
	SET 
		first_name = 'Ivan',
		middle_name = 'Ingram',
		last_name = 'Howard',
		age = 25,
		location = 'Bulacan'
	WHERE 
		id = 1;

DELETE FROM students
	WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(id) FROM students;

SELECT * from students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * from students ORDER BY age DESC;


-- JOIN ACTIVITY

-- b. 	Create new table research_papers with the following columns
		-- i. 	id - primary key
		-- ii. 	student_id - foreign key
		-- iii. grade - grades can be "A", "B", "C", "D", "E", "F", or NULL
	-- 		bonus points if you can implement something like this https://stackoverflow.com/questions/10923213/postgres-enum-data-type-or-check-constraint
-- c.	Insert 10 records to the new table
		-- i. 	2 students should have more than 1 research paper
		-- ii. 	2 students should have 1 ungraded (NULL) research paper
-- d.	Query all students with multiple research papers (select first_name, last_name, and number_of_research_papers only)
-- e.	Query all students with ungraded research papers (select first_name, last_name, research_paper_id, and grade only)

CREATE TABLE research_papers (
	id			integer			PRIMARY KEY,
	student_id	integer			NOT NULL,
	grade		character(1)	DEFAULT 'NULL',
	FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO research_papers 
	(id, student_id, grade)
VALUES
	(1, 1, 'B'),
	(2, 1, 'A'),
	(3, 2, NULL),
	(4, 2, 'B'),
	(5, 3, 'C'),
	(6, 4, 'D'),
	(7, 5, 'E'),
	(8, 4, NULL),
	(9, 4, 'B'),
	(10, 5, 'F');


SELECT students.first_name, 
       students.last_name, 
       COUNT(research_papers.student_id) AS number_of_research_papers
FROM students 
JOIN research_papers ON research_papers.student_id = students.id
GROUP BY students.first_name, students.last_name
HAVING COUNT(research_papers.student_id) > 1;

	

SELECT students.first_name, 
		students.last_name, 
		research_papers.id AS research_paper_id, 
		research_papers.grade
FROM students 
JOIN research_papers ON research_papers.student_id = students.id
WHERE research_papers.grade IS NULL;

