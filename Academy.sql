-- Создание базы данных Academy
CREATE DATABASE Academy;

USE Academy;

-- Создание таблицы Groups
CREATE TABLE Groups(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(10) NOT NULL,
    Rating INT NOT NULL,
    Year INT NOT NULL
);

-- Создание таблицы Departments
CREATE TABLE Departments(
    id INT PRIMARY KEY IDENTITY(1,1),
    Financing MONEY NOT NULL,
    Name NVARCHAR(100) NOT NULL
);

-- Создание таблицы Faculties
CREATE TABLE Faculties(
    id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);

-- Создание таблицы Teachers
CREATE TABLE Teachers(
    id INT PRIMARY KEY IDENTITY(1,1),
    EmploymentDate DATE NOT NULL,
    Name NVARCHAR(100) NOT NULL, -- Ограничение длины строки
    Premium MONEY NOT NULL,
    Salary MONEY NOT NULL,
    Surname NVARCHAR(100) NOT NULL, -- Ограничение длины строки
    Position NVARCHAR(100) NOT NULL -- Поле для должности
);

GO

-- Вставка данных в таблицу Groups
INSERT INTO Groups (name, Rating, Year) 
VALUES 
('Group A', 85, 2020),
('Group B', 90, 2021),
('Group C', 78, 2022);

GO

-- Вставка данных в таблицу Departments
INSERT INTO Departments (Financing, Name) 
VALUES 
(50000.00, 'Computer Science Department'),
(30000.00, 'Mathematics Department'),
(45000.00, 'Physics Department');

GO

-- Вставка данных в таблицу Faculties
INSERT INTO Faculties (Name) 
VALUES 
('Faculty of Engineering'),
('Faculty of Sciences'),
('Faculty of Arts');

GO

-- Вставка данных в таблицу Teachers
INSERT INTO Teachers (EmploymentDate, Name, Premium, Salary, Surname, Position) 
VALUES 
('2020-09-01', 'John', 5000.00, 50000.00, 'Doe', 'Professor'),
('2019-03-15', 'Alice', 4500.00, 48000.00, 'Smith', 'Assistant'),
('2021-06-20', 'Robert', 5500.00, 52000.00, 'Johnson', 'Professor');

GO

-- Вывести таблицу кафедр, но расположить ее поля в обратном порядке
SELECT Name, Financing, id FROM Departments;

GO

-- Вывести названия групп и их рейтинги, используя, как названия выводимых полей, "Group Name" и "Group Rating" соответственно
SELECT name AS 'Group Name', Rating AS 'Group Rating' FROM Groups;

GO

-- Вывести проценты ставки по отношению к надбавке и к зарплате
SELECT Name, Surname, 
    (Premium / Salary * 100) AS '% premium from salary', 
    ((Premium + Salary) / Salary * 100) AS '% salary+premium from salary' 
FROM Teachers;

GO

-- Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 1050
SELECT Surname 
FROM Teachers 
WHERE Position = 'Professor' AND Salary > 1050;

GO

-- Вывести названия кафедр, фонд финансирования которых меньше 11000 или больше 25000
SELECT Name 
FROM Departments 
WHERE Financing < 11000 OR Financing > 25000;

GO

-- Вывести названия факультетов, кроме факультета "Computer Science Department"
SELECT Name 
FROM Faculties 
WHERE Name != 'Faculty of Engineering';

GO

-- Вывести фамилии и должности преподавателей, которые не являются профессорами
SELECT Surname, Position 
FROM Teachers 
WHERE Position != 'Professor';

GO

-- Вывести фамилии, должности, ставки и надбавки ассистентов, у которых надбавка в диапазоне от 160 до 550
SELECT Surname, Position, Salary, Premium 
FROM Teachers 
WHERE Position = 'Assistant' AND Premium BETWEEN 160 AND 550;

GO

-- Вывести фамилии и ставки ассистентов
SELECT Surname, Salary 
FROM Teachers 
WHERE Position = 'Assistant';

GO

-- Вывести фамилии и должности преподавателей, которые были приняты на работу до 01.01.2000
SELECT Surname, Position 
FROM Teachers 
WHERE EmploymentDate < '2000-01-01';

GO

-- Вывести названия кафедр, которые в алфавитном порядке размещаются до кафедры "Software Development"
SELECT Name AS 'Name of Department' 
FROM Departments 
WHERE Name < 'Software Development' 
ORDER BY Name;

GO

-- Вывести фамилии ассистентов, которые имеют зарплату (сумма ставки и надбавки) не более 1200
SELECT Surname 
FROM Teachers 
WHERE Position = 'Assistant' AND (Salary + Premium) <= 1200;

GO

-- Вывести названия групп 5-го курса, которые имеют рейтинг в диапазоне от 2 до 4
SELECT name 
FROM Groups 
WHERE Year = 5 AND Rating BETWEEN 2 AND 4;

GO

-- Вывести фамилии ассистентов со ставкой меньше 550 или надбавкой меньше 200
SELECT Surname 
FROM Teachers 
WHERE Position = 'Assistant' AND (Salary < 550 OR Premium < 200);

-- Удаление таблиц и базы данных
DROP TABLE Groups;
DROP TABLE Departments;
DROP TABLE Faculties;
DROP TABLE Teachers;
DROP DATABASE Academy;
-- Создание базы данных Academy
CREATE DATABASE Academy;

USE Academy;

-- Создание таблицы Groups
CREATE TABLE Groups(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(10) NOT NULL,
    Rating INT NOT NULL,
    Year INT NOT NULL
);

-- Создание таблицы Departments
CREATE TABLE Departments(
    id INT PRIMARY KEY IDENTITY(1,1),
    Financing MONEY NOT NULL,
    Name NVARCHAR(100) NOT NULL
);

-- Создание таблицы Faculties
CREATE TABLE Faculties(
    id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);

-- Создание таблицы Teachers
CREATE TABLE Teachers(
    id INT PRIMARY KEY IDENTITY(1,1),
    EmploymentDate DATE NOT NULL,
    Name NVARCHAR(100) NOT NULL, -- Ограничение длины строки
    Premium MONEY NOT NULL,
    Salary MONEY NOT NULL,
    Surname NVARCHAR(100) NOT NULL, -- Ограничение длины строки
    Position NVARCHAR(100) NOT NULL -- Поле для должности
);

GO

-- Вставка данных в таблицу Groups
INSERT INTO Groups (name, Rating, Year) 
VALUES 
('Group A', 85, 2020),
('Group B', 90, 2021),
('Group C', 78, 2022);

GO

-- Вставка данных в таблицу Departments
INSERT INTO Departments (Financing, Name) 
VALUES 
(50000.00, 'Computer Science Department'),
(30000.00, 'Mathematics Department'),
(45000.00, 'Physics Department');

GO

-- Вставка данных в таблицу Faculties
INSERT INTO Faculties (Name) 
VALUES 
('Faculty of Engineering'),
('Faculty of Sciences'),
('Faculty of Arts');

GO

-- Вставка данных в таблицу Teachers
INSERT INTO Teachers (EmploymentDate, Name, Premium, Salary, Surname, Position) 
VALUES 
('2020-09-01', 'John', 5000.00, 50000.00, 'Doe', 'Professor'),
('2019-03-15', 'Alice', 4500.00, 48000.00, 'Smith', 'Assistant'),
('2021-06-20', 'Robert', 5500.00, 52000.00, 'Johnson', 'Professor');

GO

-- Вывести таблицу кафедр, но расположить ее поля в обратном порядке
SELECT Name, Financing, id FROM Departments;

GO

-- Вывести названия групп и их рейтинги, используя, как названия выводимых полей, "Group Name" и "Group Rating" соответственно
SELECT name AS 'Group Name', Rating AS 'Group Rating' FROM Groups;

GO

-- Вывести проценты ставки по отношению к надбавке и к зарплате
SELECT Name, Surname, 
    (Premium / Salary * 100) AS '% premium from salary', 
    ((Premium + Salary) / Salary * 100) AS '% salary+premium from salary' 
FROM Teachers;

GO

-- Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 1050
SELECT Surname 
FROM Teachers 
WHERE Position = 'Professor' AND Salary > 1050;

GO

-- Вывести названия кафедр, фонд финансирования которых меньше 11000 или больше 25000
SELECT Name 
FROM Departments 
WHERE Financing < 11000 OR Financing > 25000;

GO

-- Вывести названия факультетов, кроме факультета "Computer Science Department"
SELECT Name 
FROM Faculties 
WHERE Name != 'Faculty of Engineering';

GO

-- Вывести фамилии и должности преподавателей, которые не являются профессорами
SELECT Surname, Position 
FROM Teachers 
WHERE Position != 'Professor';

GO

-- Вывести фамилии, должности, ставки и надбавки ассистентов, у которых надбавка в диапазоне от 160 до 550
SELECT Surname, Position, Salary, Premium 
FROM Teachers 
WHERE Position = 'Assistant' AND Premium BETWEEN 160 AND 550;

GO

-- Вывести фамилии и ставки ассистентов
SELECT Surname, Salary 
FROM Teachers 
WHERE Position = 'Assistant';

GO

-- Вывести фамилии и должности преподавателей, которые были приняты на работу до 01.01.2000
SELECT Surname, Position 
FROM Teachers 
WHERE EmploymentDate < '2000-01-01';

GO

-- Вывести названия кафедр, которые в алфавитном порядке размещаются до кафедры "Software Development"
SELECT Name AS 'Name of Department' 
FROM Departments 
WHERE Name < 'Software Development' 
ORDER BY Name;

GO

-- Вывести фамилии ассистентов, которые имеют зарплату (сумма ставки и надбавки) не более 1200
SELECT Surname 
FROM Teachers 
WHERE Position = 'Assistant' AND (Salary + Premium) <= 1200;

GO

-- Вывести названия групп 5-го курса, которые имеют рейтинг в диапазоне от 2 до 4
SELECT name 
FROM Groups 
WHERE Year = 5 AND Rating BETWEEN 2 AND 4;

GO

-- Вывести фамилии ассистентов со ставкой меньше 550 или надбавкой меньше 200
SELECT Surname 
FROM Teachers 
WHERE Position = 'Assistant' AND (Salary < 550 OR Premium < 200);

-- Удаление таблиц и базы данных
DROP TABLE Groups;
DROP TABLE Departments;
DROP TABLE Faculties;
DROP TABLE Teachers;
DROP DATABASE Academy;
