USE university;

/* 5 студентов с наибольшим средним баллом по всем предметам. */
SELECT students.first_name, students.last_name, ROUND(AVG(marks.mark), 2) AS avg_mark
FROM marks
JOIN students ON marks.students_id = students.id
GROUP BY students_id
ORDER BY avg_mark DESC
LIMIT 5;

/* 1 студент с наивысшим средним баллом по одному предмету. */
SELECT students.first_name, students.last_name, subjects.name, ROUND(AVG(marks.mark), 2) AS avg_mark 
FROM marks
JOIN students ON marks.students_id = students.id
JOIN subjects ON marks.subjects_id = subjects.id
WHERE marks.subjects_id = 3
GROUP BY subjects_id, students_id
ORDER BY avg_mark DESC, subjects_id
LIMIT 1;

/* cредний балл в группе по одному предмету. */
SELECT subjects.name, groupss.name, ROUND(AVG(marks.mark), 2) AS avg_mark  
FROM groupss, marks
JOIN students ON marks.students_id = students.id
JOIN subjects ON marks.subjects_id = subjects.id
WHERE students.group_id = groupss.id
GROUP BY subjects_id, group_id;

/* Средний балл в потоке. */
SELECT ROUND(AVG(marks.mark), 2) AS avg_mark 
FROM marks;

/* Какие курсы читает преподаватель. */
SELECT subjects.name AS subjects
FROM subjects
JOIN teachers ON subjects.teachers_id = teachers.id
WHERE subjects.teachers_id = 1;

/* Список студентов в группе. */
SELECT students.first_name, students.last_name
FROM students
WHERE group_id = 1
ORDER BY first_name;

/* Оценки студентов в группе по предмету. */
SELECT first_name, last_name, mark
FROM students 
JOIN marks ON marks.students_id = students.id
WHERE group_id = 1 AND subjects_id = 2
ORDER BY first_name;

/* Оценки студентов в группе по предмету на последнем занятии. */
SELECT first_name, last_name, mark
FROM students 
JOIN marks ON marks.students_id = students.id
WHERE group_id = 1 AND subjects_id = 2 AND date = '2022-07-22'
ORDER BY first_name;

/* Список курсов, которые посещает студент. */
SELECT subjects.name 
FROM subjects 
JOIN marks ON marks.subjects_id = subjects.id
WHERE marks.students_id = 30;

/* Список курсов, которые студенту читает преподаватель. */
SELECT DISTINCT subjects.name, teachers.first_name, teachers.last_name
FROM subjects 
JOIN teachers ON teachers.id = subjects.id
JOIN marks ON marks.subjects_id = subjects.teachers_id
WHERE marks.students_id = 25 AND teachers.id = 1;

/* Средний балл, который преподаватель ставит студенту. */
SELECT teachers.first_name, teachers.last_name, ROUND(AVG(mark), 2) as avg_mark
FROM subjects
JOIN teachers ON teachers.id = subjects.id 
JOIN marks ON marks.subjects_id = subjects.id
WHERE marks.students_id = 25 AND teachers.id = 1;

/* Средний балл, который ставит преподаватель. */
SELECT ROUND(AVG(mark), 2) as avg_mark
FROM marks 
JOIN subjects ON marks.subjects_id = subjects.id
WHERE subjects.teachers_id = 1;