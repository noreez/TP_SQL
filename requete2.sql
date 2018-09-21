SELECT firstname,label FROM student 
RIGHT JOIN enroiment ON student.id = enroiment.id_student 
RIGHT JOIN year on year.id = enroiment.id_year 
ORDER BY firstname asc;