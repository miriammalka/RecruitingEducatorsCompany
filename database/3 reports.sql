use RecruitingDB
go

-- 1. I need to know how many students from each college we were able to find jobs for in under 2 weeks. 
--     This will help my company know which college's graduates we should try to attract to our company.
select e.CollegeAttended, NumOfStudents = count(*)
from EducatorsConnect e
where datediff(week,e.DateContacted,e.DateFoundJob) <= 2
group by e.CollegeAttended

-- 2. Who were we more successful in placing, males or females?
select e.Gender, NumOfPeople = count(*)
from EducatorsConnect e
group by e.Gender

-- 3. On average, how many people contact us every day and how many people find out about us per form of media. 
--     This will help us decide which forms of media communication we should invest in.
-- SM This and the next question neeeds to be modified in my opinion, not to include "On average", as you can't do avg(count()), or maybe you have a way to do it?
-- The real way to do this, is with a CTE which is taught in session 25.
select e.DateContacted, NumOfPeople = count(*)
from EducatorsConnect e
group by e.DateContacted

select e.Media, NumOfPeople = count(*)
from EducatorsConnect e
group by e.Media

-- 4. On average, how many people do we succeed in placing per day?
select e.DateFoundJob, NumOfPeople = count(*)
from EducatorsConnect e
group by e.DateFoundJob

-- 5. How many educators get placed a day per type of education degree?
select e.Degree, NumOfEducators = count(*)
from EducatorsConnect e
group by e.Degree

-- 6. I need a list of the educators who reach out to us in the format of first name, last name, age, - degree.
select ListOfEducators = concat(e.FirstName,', ',e.LastName,', ',datediff(year,e.DOB,e.DateContacted),', - ',e.Degree)
from EducatorsConnect e
