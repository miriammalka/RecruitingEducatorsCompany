use RecruitingDB
go

drop table if exists EducatorsConnect
go

create table dbo.EducatorsConnect(
    EducatorsConnectId int not null identity primary key,
    FirstName varchar(25) not null constraint ck_EducatorsConnect_FirstName_cannot_be_blank check(FirstName > ''),
    LastName varchar(25) not null constraint ck_EducatorsConnect_LastName_cannot_be_blank check(LastName > ''),
    DOB date not null,
    Gender char(1) not null constraint ck_EducatorsConnect_gender_must_be_m_or_f check(Gender in('m','f')),
    CollegeAttended varchar(50) not null constraint ck_EducatorsConnect_college_attended_cannot_be_blank check(CollegeAttended > ''),
    Degree varchar(50) not null constraint ck_EducatorsConnect_degree_cannot_be_blank check(Degree > ''),
    Media varchar(20) not null constraint ck_EducatorsConnect_media_cannot_be_blank check(Media > ''),
    DateContacted date not null constraint ck_EducatorsConnect_date_contacted_must_be_between_17_02_2017_and_today check(DateContacted between '2017-02-17' and getdate()),
    SchoolPlaced varchar(50) not null default '',
    DateFoundJob date null,
    constraint ck_DOB_must_be_before_DateContacted check(DOB < DateContacted),
    constraint ck_DateFoundJob_must_be_between_DateContacted_and_today check(DateFoundJob between DateContacted and getdate()),
    constraint ck_DateFoundJob_and_SchoolPlaced_must_be_either_both_no_value_or_both_have_value 
        check((SchoolPlaced = '' and DateFoundJob is null) or (SchoolPlaced > '' and DateFoundJob is not null))
)
go