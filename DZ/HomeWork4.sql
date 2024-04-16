use Academy
go
create table Faculties(
    ID int primary key identity(1,1) not null,
    Name nvarchar(100) not null unique check(Name <> ' ')
);
go
insert into Faculties (Name)
values 
    ('Faculty of Engineering'),
    ('Faculty of Medicine'),
    ('Faculty of Arts'),
    ('Faculty of Science'),
    ('Faculty of Business'),
    ('Faculty of Law'),
    ('Faculty of Social Sciences'),
    ('Faculty of Education'),
    ('Faculty of Information Technology'),
    ('Faculty of Music'),
    ('Faculty of Agriculture'),
    ('Faculty of Architecture'),
    ('Faculty of Pharmacy'),
    ('Faculty of Nursing'),
    ('Faculty of Economics'),
    ('Faculty of Psychology'),
    ('Faculty of Dentistry'),
    ('Faculty of Veterinary Medicine'),
    ('Faculty of Environmental Studies'),
    ('Faculty of Communications');
go
create table Departments(
    ID int primary key identity(1,1) not null,
	Building int not null check(Building between 1 and 5),
    Financing money not null check(Financing >= 0) default 0,
    Name nvarchar(100) not null unique check(Name <> ' '),
    FacultyID int not null,
    foreign key (FacultyId) references Faculties(ID)
);
go
insert into Departments (Building, Financing, Name, FacultyID)
values 
    (1 ,50000, 'Department of Mechanical Engineering', 1),
    (2, 60000, 'Department of Pediatrics', 2),
    (3, 45000, 'Department of English Literature', 3),
    (3, 70000, 'Department of Physics', 4),
    (2, 55000, 'Department of Marketing', 5),
    (4, 48000, 'Department of Criminal Law', 6),
    (2, 52000, 'Department of Sociology', 7),
    (5, 62000, 'Department of Early Childhood Education', 8),
    (5, 58000, 'Department of Computer Science', 9),
    (1, 53000, 'Department of Musicology', 10),
    (3, 49000, 'Department of Agronomy', 11),
    (2, 51000, 'Department of Urban Planning', 12),
    (2, 54000, 'Department of Pharmacology', 13),
    (3, 63000, 'Department of Critical Care Nursing', 14),
    (4, 57000, 'Department of Macroeconomics', 15),
    (5, 60000, 'Department of Clinical Psychology', 16),
    (5, 55000, 'Department of Orthodontics', 17),
    (2, 59000, 'Department of Animal Science', 18),
    (1, 56000, 'Department of Environmental Science', 19),
    (5, 58000, 'Department of Journalism', 20);
go
create table Groups(
    ID int primary key identity(1,1) not null,
    Name nvarchar(10) not null unique check(Name <> ' '),
    Year int not null check(year between 1 and 5),
    DepartmentID int not null,
    foreign key (DepartmentID) references Departments(ID)
);
go
insert into Groups (Name, Year, DepartmentID)
values 
    ('Group A', 3, 1),
    ('Group B', 2, 2),
    ('Group C', 4, 3),
    ('Group D', 1, 4),
    ('Group E', 3, 5),
    ('Group F', 2, 6),
    ('Group G', 4, 7),
    ('Group H', 1, 8),
    ('Group I', 3, 9),
    ('Group J', 2, 10),
    ('Group K', 4, 11),
    ('Group L', 1, 12),
    ('Group M', 3, 13),
    ('Group N', 2, 14),
    ('Group O', 4, 15),
    ('Group P', 1, 16),
    ('Group Q', 3, 17),
    ('Group R', 2, 18),
    ('Group S', 4, 19),
    ('Group T', 1, 20);
go
create table Subjects(
    ID int primary key identity(1,1) not null,
    Name nvarchar(100) not null unique
);
go
insert into Subjects (Name)
values 
    ('Mathematics'),
    ('Physics'),
    ('Chemistry'),
    ('Biology'),
    ('Computer Science'),
    ('History'),
    ('Literature'),
    ('Art'),
    ('Music'),
    ('Physical Education'),
    ('Geography'),
    ('Economics'),
    ('Psychology'),
    ('Sociology'),
    ('Political Science'),
    ('Philosophy'),
    ('Anthropology'),
    ('Languages'),
    ('Religious Studies'),
    ('Environmental Science');
go
create table Teachers(
    ID int primary key identity(1,1) not null,
	IsProfessor bit not null default 0,
    Name nvarchar(max) not null check(Name <> ' '),
    Salary money not null check(salary > 0),
    Surname nvarchar(max) not null check(Surname <> ' '),
);
go
insert into Teachers (IsProfessor, Name, Salary, Surname)
values 
    (0, 'John Doe', 2500, 'Doe'),
    (1, 'Jane Smith', 2800, 'Smith'),
    (1, 'Michael Johnson', 2600, 'Johnson'),
    (0, 'Emily Brown', 2700, 'Brown'),
    (0, 'David Wilson', 3000, 'Wilson'),
    (1, 'Jessica Lee', 2900, 'Lee'),
    (1, 'Brian Davis', 2750, 'Davis'),
    (1, 'Sarah Taylor', 2650, 'Taylor'),
    (0, 'Kevin Martinez', 3100, 'Martinez'),
    (1, 'Laura Rodriguez', 2950, 'Rodriguez'),
    (1, 'Christopher Moore', 2850, 'Moore'),
    (1, 'Amanda White', 2750, 'White'),
    (0, 'Jason Clark', 3200, 'Clark'),
    (0, 'Melissa Young', 3000, 'Young'),
    (1, 'Steven Hall', 2950, 'Hall'),
    (0, 'Rachel Allen', 2800, 'Allen'),
    (1, 'Daniel Scott', 2900, 'Scott'),
    (1, 'Michelle Adams', 3100, 'Adams'),
    (1, 'Eric Baker', 2950, 'Baker'),
    (1, 'Kimberly King', 3000, 'King');
go
create table Lectures(
    ID int primary key identity(1,1) not null,
    Date date not null check(Date <> '2024-04-16'),
    SubjectID int not null,
    TeacherID int not null,
    foreign key (SubjectID) references Subjects(ID),
    foreign key (TeacherID) references Teachers(ID)
);
go
insert into Lectures (Date, SubjectID, TeacherID)
values 
	('2024-04-11', 1, 1),
    ('2024-04-13', 2, 2),
    ('2024-04-10', 3, 3),
    ('2024-04-14', 4, 4),
    ('2024-04-06', 5, 5),
    ('2024-04-02', 6, 6),
    ('2024-04-12', 7, 7),
    ('2024-04-14', 8, 8),
    ('2024-04-09', 9, 9),
    ('2024-04-01', 10, 10),
    ('2024-04-03', 11, 11),
    ('2024-04-09', 12, 12),
    ('2024-04-13', 13, 13),
    ('2024-04-08', 14, 14),
    ('2024-04-08', 15, 15),
    ('2024-04-12', 16, 16),
    ('2024-04-10', 17, 17),
    ('2024-04-12', 18, 18),
    ('2024-04-08', 19, 19),
    ('2024-04-14', 20, 20);
go
create table GroupsLectures(
    ID int primary key identity(1,1) not null,
    GroupID int not null,
    LectureID int not null,
    foreign key (GroupID) references Groups(ID),
    foreign key (LectureID) references Lectures(ID)
);
go
insert into GroupsLectures (GroupID, LectureID)
values 
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);
go
create table Curators(
	ID int identity(1,1) not null primary key,
	Name nvarchar(max) not null check(Name <> ' '),
	Surname nvarchar(max) not null check(Surname <> ' ')
)
go
insert into Curators (Name, Surname)
values
	('Ange', 'Bellany'),
	('Hyacintha', 'Woodier'),
	('Werner', 'Arkcoll'),
	('Adele', 'Moody'),
	('Koressa', 'Callum'),
	('Gypsy', 'Frisch'),
	('Milissent', 'Glanvill'),
	('Cletis', 'Cotterel'),
	('Upton', 'Fyfield'),
	('Silva', 'Fevers'),
	('Gwenny', 'Prier'),
	('Wynn', 'Haps'),
	('Bellanca', 'Narducci'),
	('Felicia', 'O''Harney'),
	('Shir', 'Coveney'),
	('Natka', 'Auchterlonie'),
	('Mordy', 'Cammack'),
	('Gawen', 'Giberd'),
	('Raddie', 'Pitcaithly'),
	('Kristien', 'Doiley');

go
create table GroupsCurators(
	ID int identity(1,1) not null primary key,
	CuratorId int not null,
	GroupId int not null,
	foreign key (CuratorId) references Curators(ID),
	foreign key (GroupId) references Groups(ID)
)
go
insert into GroupsCurators (CuratorId, GroupId)
values
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 2),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 1),
    (15, 15),
    (16, 16),
    (17, 13),
    (18, 18),
    (19, 7),
    (20, 20);

go
create table Students(
	ID int identity(1,1) not null primary key,
	Name nvarchar(max) not null	check(Name <> ' '),
	Rating int not null check(Rating between 1 and 5),
	Surname nvarchar(max) not null check(Surname <> ' ')
)
insert into Students (Name, Rating, Surname)
values
	('Tamarah', 5, 'Sumsion'),
	('Vanya', 2, 'Kubasek'),
	('Remy', 1, 'Jansema'),
	('Danny', 4, 'Conahy'),
	('Fax', 1, 'Rosiello'),
	('Jackquelin', 2, 'Neno'),
	('Cory', 2, 'Curl'),
	('Chere', 2, 'Sussams'),
	('Lanita', 1, 'Allsepp'),
	('Jane', 3, 'Bradberry'),
	('Tani', 4, 'McRory'),
	('Giselle', 4, 'Boice'),
	('Celestia', 1, 'Eglise'),
	('Kristan', 5, 'Kinlock'),
	('Eden', 4, 'Conningham'),
	('Josh', 3, 'Domelow'),
	('Paco', 3, 'Cristea'),
	('Roxanne', 4, 'McReynold'),
	('Finley', 4, 'Drejer'),
	('Cosme', 3, 'Aldcorne');

go 
create table GroupsStudents(
	ID int identity(1,1) not null primary key,
	GroupId int not null,
	StudentId int not null,
	foreign key (GroupId) references Groups(ID),
	foreign key (StudentId) references Students(ID)
)
insert into GroupsStudents (GroupId, StudentId)
values
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

drop table Groups

select Building
from Departments
group by Building
having sum(Financing) > 100000

select g.Name
from Groups g
join Departments d on g.DepartmentID = d.ID
join GroupsLectures gl on g.ID = gl.GroupID
join Lectures l on gl.LectureID = l.ID
where g.Year = 5
and d.Name = 'Department of English Literature'
and datepart(weekday, l.Date) = 2 
group by g.Name
having count(*) > 10

select g.Name
from Groups g
join GroupsStudents gs on g.ID = gs.GroupID
join Students s on gs.StudentID = s.ID
group by g.Name
having avg(s.Rating) > 
(select avg(s2.Rating) 
from Groups g2
join GroupsStudents gs2 on g2.ID = gs2.GroupID
join Students s2 on gs2.StudentID = s2.ID
where g2.Name = 'Group I')

select Name, Surname
from Teachers
where Salary > (select avg(Salary) 
                from Teachers 
                where IsProfessor = 1)

select g.Name
from Groups g
join GroupsCurators gc on g.ID = gc.GroupID
group by g.Name
having count(gc.CuratorID) > 1;

select g.Name as GroupName
from Groups g
join GroupsStudents gs on g.ID = gs.GroupID
join Students s on gs.StudentID = s.ID
where g.Year = 5
group by g.ID, g.Name
having avg(s.Rating) < (
select min(avg_rating)
from (
select avg(s2.Rating) as avg_rating
from Groups g2
join GroupsStudents gs2 on g2.ID = gs2.GroupID
join Students s2 on gs2.StudentID = s2.ID
where g2.Year = 5
group by g2.ID
) AS min_ratings
)

select f.Name
from Faculties f
join Departments d on f.ID = d.FacultyID
group by f.Name
having sum(d.Financing) > (
    select sum(d2.Financing)
    from Faculties f2
    join Departments d2 on f2.ID = d2.FacultyID
    where f2.Name = 'Faculty of Information Technology'
);

select s.Name as Discipline,
concat(t.Name, ' ', t.Surname) as TeacherFullName
FROM Lectures l
join Subjects s on l.SubjectID = s.ID
join Teachers t on l.TeacherID = t.ID
group by s.Name, t.Name, t.Surname, l.SubjectID
having count(*) = (
select max(lecture_count)
from (
select count(*) as lecture_count
from Lectures
where SubjectID = l.SubjectID
group by TeacherID
) as lecture_counts
);


select s.Name as SubjectName
from Lectures l
join Subjects s on l.SubjectID = s.ID
group by s.Name
having count(*) = (
select min(lecture_count)
from (
select count(*) as lecture_count
from Lectures
group by SubjectID
) as lecture_counts
);

select 
count(distinct gs.StudentID) as StudentCount,
count(distinct s.ID) as DisciplineCount
from GroupsStudents gs
join Groups g on gs.GroupID = g.ID
join Departments d on g.DepartmentID = d.ID
join Subjects s on d.ID = s.ID
where d.Name = 'Department of Critical Care Nursing';