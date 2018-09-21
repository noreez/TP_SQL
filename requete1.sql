SELECT firstname,label FROM student 
LEFT JOIN enroiment ON student.id = enroiment.id_student 
LEFT JOIN year on year.id = enroiment.id_year 
ORDER BY firstname asc;