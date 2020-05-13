select major_name
from majors m join students s on m.MAJOR_ID=s.MAJOR_ID
group by m.major_id, major_name
having count(student_id) > ( 
select count(student_id)
from majors m join students s on m.MAJOR_ID=s.MAJOR_ID
group by m.major_id, major_name
having major_name='ELECTRONICS' )