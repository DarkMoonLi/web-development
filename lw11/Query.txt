CREATE TABLE 
    `students` (
        `id_student` INT NOT NULL AUTO_INCREMENT,
        `id_groupe` INT NOT NULL,
        `id_faculty` INT NOT NULL,
        `name` NVARCHAR(255) NOT NULL,
	`last_name` NVARCHAR(255) NOT NULL,	
	`middle_name` NVARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_student`),
        FOREIGN KEY(`id_groupe`) REFERENCE groups(id_groupe),
        FOREIGN KEY(`id_faculty`) REFERENCE facultes(id_faculty))


CREATE TABLE 
    `groups` (
        `id_groupe` INT NOT NULL AUTO_INCREMENT,
        `id_faculty` INT NOT NULL,
        `name` NVARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_groupe`),
        FOREIGN KEY(`id_faculty`) REFERENCE facultes(id_faculty))


CREATE TABLE 
    `facultes` (
        `id_faculty` INT NOT NULL AUTO_INCREMENT,
        `name` NVARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_faculty`))


SELECT 
    `students.name` AS `student`
        FROM `students`
        WHERE `students.age`= 19

SELECT 
    `students.name` AS `student`
        FROM `students`
	JOIN `groups` ON `student_id` = `groupe_id`
	WHERE `students.age`= ПС

SELECT 
    `students.name` AS `student`
        FROM `students`
	JOIN `facultes` ON `student_id` = `faculty_id`
	WHERE `students.age`= ФИиВТ

SELECT 
    `students.name` AS `student`
    `students.last_name` AS `last name`
    `students.maiddle_name` AS ` middle name`
    `groupe.name` AS `group`
    `faculty.name` AS `faculty`
        FROM `students`
	JOIN `facultes` ON `student_id` = `faculty_id`
        JOIN 'groups' ON `student_id` = `group_id`
	WHERE (`students.name`= Максим && 
	`students.last_name`= Прозоров &&
	`students.maiddle_name`= Андреевич)

