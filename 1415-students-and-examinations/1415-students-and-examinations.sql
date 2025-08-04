# Write your MySQL query statement below
select s.student_id, s.student_name, sub.subject_name,
count(ex.student_id) as attended_exams
from students as s
cross join subjects as sub 
left join examinations as ex
on 
s.student_id= ex.student_id
and
sub.subject_name=ex.subject_name

group by  s.student_id, s.student_name, sub.subject_name
order by s.student_id, s.student_name,sub.subject_name;


