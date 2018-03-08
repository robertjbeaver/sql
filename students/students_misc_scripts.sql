select user.Name, course.Name
from user
inner join course on user.CourseID = course.CourseID;

SELECT user.Name as UserName, course.name as CourseName
from user, course
where user.courseid = course.CourseID;

select user.Name, course.name
from user
left join course on user.courseid = course.courseid;

select * from user
where courseid is null;

