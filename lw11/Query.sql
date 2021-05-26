CREATE TABLE 
    `students` (
        `id_student` INT NOT NULL AUTO_INCREMENT,
        `id_groupe` INT NOT NULL,
        `id_faculty` INT NOT NULL,
        `name` NVARCHAR(255) NOT NULL,
	`last_name` NVARCHAR(255) NOT NULL,	
	`middle_name` NVARCHAR(255) NOT NULL,
PRIMARY KEY(`id_student`),
FOREIGN KEY(`id_groupe`) REFERENCES groups(`id_groupe`),
FOREIGN KEY(`id_faculty`) REFERENCES facultes(`id_faculty`)); //удаление студентов при удалении группы или добавлении


CREATE TABLE 
    `groups` (
        `id_groupe` INT NOT NULL AUTO_INCREMENT,
        `id_faculty` INT NOT NULL,
        `name` NVARCHAR(255) NOT NULL,
PRIMARY KEY(`id_groupe`),
FOREIGN KEY(`id_faculty`) REFERENCES facultes(id_faculty));


CREATE TABLE 
    `facultes` (
        `id_faculty` INT NOT NULL AUTO_INCREMENT,
        `name` NVARCHAR(255) NOT NULL,
PRIMARY KEY(`id_faculty`));


SELECT 
    `name` AS `student_name`,
    `last_name` AS `student_last_name`,
    `middle_name` AS `middle_name`,
    `age` AS `age`
FROM `students`
WHERE `age` = 19;

SELECT 
    students.name AS `student_name`,
    `last_name` AS `student_last_name`,
    `middle_name` AS `middle_name`,
    `age` AS `age`,
    groups.name AS `groupe`
FROM `students`
JOIN `groups` ON students.id_groupe = groups.id_groupe
WHERE groups.name = 'ПС';

SELECT 
    students.name AS `student_name`,
    `last_name` AS `student_last_name`,
    `middle_name` AS `middle_name`,
    `age` AS `age`,
    facultes.name AS `faculty`
FROM `students`
JOIN `facultes` ON students.id_faculty = facultes.id_faculty
WHERE facultes.name = 'ФИиВТ';

SELECT 
    students.name AS `student_name`,
    students.last_name AS `last_name`,
    students.middle_name AS ` middle_name`,
    groups.name AS `group`,
    facultes.name AS `faculty`
FROM `students`
JOIN `facultes` ON students.id_faculty = facultes.id_faculty
JOIN `groups` ON students.id_groupe = groups.id_groupe
WHERE (students.name = 'Максим' AND 
       students.last_name = 'Прозоров' AND
       students.middle_name = 'Андреевич');

INSERT INTO
    `students` (`name`, `last_name`, `middle_name`, `age`, `id_groupe`, `id_faculty`)
VALUES
    ('Максим', 'Прозоров', 'Андреевич', 19, 1, 1),
    ('Андрей', 'Печоров', 'Сергеевич', 23, 1, 1),
    ('Антон', 'Толстой', 'Дмитриевич', 22, 1, 1),
    ('Сергей', 'Гаврилов', 'Даниилович', 16, 1, 1),
    ('Даниил', 'Кожемятько', 'Ярославович', 19, 1, 1),
    ('Дмитрий', 'Самарский', 'Степанович', 34, 2, 1),
    ('Ярослав', 'Тургенев', 'Константинович', 19, 2, 1),
    ('Полина', 'Солнечная', 'Андреевна', 18, 2, 1),
    ('Анеглина', 'Тойшева', 'Данииловна', 21, 2, 1),
    ('Дарья', 'Прозорова', 'Андреевна', 32, 2, 1),
    ('Анжела', 'Прозорова', 'Данииловна', 19, 3, 1),
    ('Степан', 'Опоздалов', 'Дмитриевич', 23, 3, 1),
    ('Алла', 'Степаненко', 'Константиновна', 25, 3, 1),
    ('Анастасия', 'Дмитриевна', 'Андреевна', 27, 3, 1),
    ('Алена', 'Воробьева', 'Сергеевна', 17, 3, 1),
    ('Султан', 'Бахар-Су-Так', 'Дмитриевич', 19, 4, 2),
    ('Ким', 'Чен', 'Ын', 23, 4, 2),
    ('Джозеф', 'Максвелл', 'Константинович', 22, 4, 2),
    ('Брайан', 'Долгоходов', 'Сергеевич', 16, 4, 2),
    ('София', 'Кирпичевна', 'Андреевна', 19, 4, 2),
    ('Виктория', 'Прозорова', 'Данииловна', 34, 5, 2),
    ('Аллах', 'Петров', 'Дмитриевич', 19, 5, 2),
    ('Артем', 'Першуткин', 'Константинович', 18, 5, 2),
    ('Константин', 'Подыганов', 'Даниилович', 21, 5, 2),
    ('Вероника', 'Прозорова', 'Андреевна', 32, 5, 2),
    ('Мария', 'Усынина', 'Сергеевна', 19, 6, 2),
    ('Кристина', 'Прозорова', 'Данииловна', 23, 6, 2),
    ('Татьяна', 'Фадеева', 'Константиновна', 25, 6, 2),
    ('Валерия', 'Григорьева', 'Сергеевна', 27, 6, 2),
    ('Екатерина', 'Станиславская', 'Андреевна', 17, 6, 2),
    ('Марина', 'Герц', 'Данииловна', 19, 7, 3),
    ('Елизавета', 'Блинова', 'Константиновна', 23, 7, 3),
    ('Кирилл', 'Захаренко', 'Даниилович', 22, 7, 3),
    ('Любовь', 'Последняя', 'Дмитриевна', 16, 7, 3),
    ('Надежда', 'Святая', 'Данииловна', 19, 7, 3),
    ('Марат', 'Гитхаб-Де-Как', 'Андреевич', 34, 8, 3),
    ('Фарход', 'Сультан', 'Сергеевич', 19, 8, 3),
    ('Тони', 'Фергюсон', 'Константинович', 18, 8, 3),
    ('Конор', 'МакГрегор', 'Даниилович', 21, 8, 3),
    ('Хабиб', 'Нурмагомедов', 'Андреевич', 32, 8, 3),
    ('Исмаил', 'Карпов', 'Сергеевич', 19, 9, 3),
    ('Джинджер', 'Криваксина', 'Данииловна', 23, 9, 3),
    ('Селеста', 'Пионовна', 'Дмитриевна', 25, 9, 3),
    ('Максим', 'Делегатович', 'Константинович', 27, 9, 3),
    ('Иордаган', 'Почемучкин', 'Андреевич', 17, 9, 3);
