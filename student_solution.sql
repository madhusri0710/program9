USE CollegeDB;

SELECT Student.StudentID,
       Student.StudentName,
       Department.DepartmentName
FROM Student
INNER JOIN Department
ON Student.DepartmentID = Department.DepartmentID;
