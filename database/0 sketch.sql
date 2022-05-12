/*
EducatorsConnect
    EducatorsConnectId int <> null pk
    FirstName varchar(25) <> null <> blank
    LastName varchar(25) <> null <> blank
    DOB date <> null
    Gender char(1) <> null in(M,F)
    CollegeAttended varchar(50) <> null <> blank
    Degree varchar(50) <> null <> blank
    Media varchar(20) <> null <> blank
    DateContacted date <> null > February 17, 2017 < today
    SchoolPlaced varchar(50) <> null default blank
    DateFoundJob date null
    constraint 
        DOB < DateContacted
        DateFoundJob >= DateContacted
        (DateFoundJob <> null and SchoolPlaced <> blank) or (DateFoundJob = null and SchoolPlaced = blank)
*/