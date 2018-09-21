SELECT firstname,AVG(grade)
FROM student 
INNER JOIN enroiment ON student.id = enroiment.id_student 
INNER JOIN year on year.id = enroiment.id_year ORDER BY lastname asc.
HAVING = 4;