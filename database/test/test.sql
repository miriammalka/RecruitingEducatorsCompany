use RecruitingDB
go

set dateformat mdy

-- test nulls
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select null, 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', null, '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', null, 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', null, 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', null, 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', null, 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', null, '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', null, 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', null, null

-- test blank
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select '', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', '', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', '', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', '', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', '', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', '', '5/2/2022', 'Brooklyn High School', '5/9/2022'

-- Test dates
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '5/2/2022', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '2/16/2017', 'Brooklyn High School', '5/9/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/1/2022'
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', dateadd(day,1,getdate())
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', dateadd(day,1,getdate()), 'Brooklyn High School', dateadd(day,1,getdate())

-- test SchoolPlaced and DateFoundJob should both have value or both not
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', null
insert EducatorsConnect(FirstName,LastName,DOB,Gender,CollegeAttended,Degree,Media,DateContacted,SchoolPlaced,DateFoundJob)
select 'John', 'Smith', '2010-01-01', 'M', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', '', '5/9/2022'
