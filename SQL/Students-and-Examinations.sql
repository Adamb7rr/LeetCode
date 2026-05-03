1-- Write your PostgreSQL query statement below
2SELECT Students.student_id, student_name, Subjects.subject_name, COUNT(Examinations.subject_name) AS attended_exams
3FROM Students
4CROSS JOIN Subjects
5LEFT JOIN Examinations ON Students.student_id = Examinations.student_id AND Subjects.subject_name = Examinations.subject_name
6GROUP BY 1,2,3
7ORDER BY 1,3