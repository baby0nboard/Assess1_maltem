CREATE TABLE Employee (
    Id NVARCHAR(10) NOT NULL PRIMARY KEY, -- Unique employee identifier (UIXXXXXXX format)
    Name NVARCHAR(255) NOT NULL,          -- Employee name
    EmailAddress NVARCHAR(255) NOT NULL,  -- Employee email address
    PhoneNumber CHAR(8) NOT NULL,         -- Employee phone number (8 digits, starts with 8 or 9)
    Gender NVARCHAR(10) NOT NULL          -- Gender of the employee (Male/Female)
);

CREATE TABLE Cafe (
    Id UniqueIdentifier NOT NULL PRIMARY KEY,       -- Unique identifier for the café
    Name VARCHAR(255) NOT NULL,         -- Name of the café
    Description TEXT NOT NULL,          -- Short description of the café
    Logo VARCHAR(500),                  -- Optional logo (URL or file path)
    Location VARCHAR(255) NOT NULL      -- Location of the café
);

-- Create the EmployeeCafe mapping table
CREATE TABLE EmployeeCafe (
    EmployeeId NVARCHAR(10) NOT NULL,   -- Foreign key referencing Employee table
    CafeId UNIQUEIDENTIFIER NOT NULL,  -- Foreign key referencing Cafe table
    WorkStartDate DATE NOT NULL,       -- Date when the employee started working at the café
    CONSTRAINT PK_EmployeeCafe PRIMARY KEY (EmployeeId, CafeId), -- Composite primary key
    CONSTRAINT FK_Employee FOREIGN KEY (EmployeeId) REFERENCES Employee(Id) ON DELETE CASCADE,
    CONSTRAINT FK_Cafe FOREIGN KEY (CafeId) REFERENCES Cafe(Id) ON DELETE CASCADE
);

-- Employee Table INSERT Statements

INSERT INTO Employee (Id, Name, EmailAddress, PhoneNumber, Gender)
VALUES
('UI1234567', 'Alice Johnson', 'alice.johnson@example.com', '912345678', 'Female'),
('UI1234568', 'Bob Smith', 'bob.smith@example.com', '812345679', 'Male'),
('UI1234569', 'Charlie Lee', 'charlie.lee@example.com', '912345680', 'Male'),
('UI1234570', 'Diana Green', 'diana.green@example.com', '812345681', 'Female'),
('UI1234571', 'Ethan Brown', 'ethan.brown@example.com', '912345682', 'Male'),
('UI1234572', 'Fayla White', 'fayla.white@example.com', '812345683', 'Female'),
('UI1234573', 'George Miller', 'george.miller@example.com', '912345684', 'Male'),
('UI1234574', 'Hannah Davis', 'hannah.davis@example.com', '812345685', 'Female'),
('UI1234575', 'Ian Wilson', 'ian.wilson@example.com', '912345686', 'Male'),
('UI1234576', 'Jackie Adams', 'jackie.adams@example.com', '812345687', 'Female');

-- Cafe Table INSERT Statements

INSERT INTO Cafe (Id, Name, Description, Location)
VALUES
('f6f8acfa-3f99-4bb6-b31d-9f7a0a8d9a9d', 'Cafe One', 'A cozy place for coffee lovers', 'New York'),
('f3df7c35-d4cf-4a5f-b85c-3fc8de91b4c5', 'Cafe Two', 'Fresh brews and light bites', 'Los Angeles'),
('9e045e3c-8f5b-47c7-b2d4-b77251d5fe73', 'Cafe Three', 'A quiet spot to read and relax', 'Chicago'),
('c05a3208-4d38-448b-9c8e-8319277f4cf1', 'Cafe Four', 'A café with a modern twist', 'San Francisco'),
('2fef51d7-05b4-49a4-b2e2-971a07a7b77b', 'Cafe Five', 'A stylish spot with artisanal pastries', 'Austin'),
('b5749ed9-f4a2-4515-a8d1-bc5ea2b1e2ea', 'Cafe Six', 'Serves delicious smoothies and desserts', 'Miami'),
('ad8b8351-e4c1-4783-bf10-e7751fbc727d', 'Cafe Seven', 'Fresh coffee and hearty breakfast', 'Seattle'),
('fa3f3465-70f1-4604-b5e1-9a9be4299453', 'Cafe Eight', 'The best brewed coffee in town', 'Portland'),
('ebf9a63e-0e77-4909-a81a-89be33eaf268', 'Cafe Nine', 'Homemade cakes and espresso', 'Denver'),
('b2b56f1b-9f52-4842-9f7a-0560c564d710', 'Cafe Ten', 'A perfect place for after-work relaxation', 'Boston');

-- EmployeeCafe Table INSERT Statements

INSERT INTO EmployeeCafe (EmployeeId, CafeId, WorkStartDate)
VALUES
('UI1234567', 'f6f8acfa-3f99-4bb6-b31d-9f7a0a8d9a9d', '2023-03-15'),
('UI1234568', 'f3df7c35-d4cf-4a5f-b85c-3fc8de91b4c5', '2023-07-22'),
('UI1234569', '9e045e3c-8f5b-47c7-b2d4-b77251d5fe73', '2024-02-11'),
('UI1234570', 'c05a3208-4d38-448b-9c8e-8319277f4cf1', '2024-01-05'),
('UI1234571', '2fef51d7-05b4-49a4-b2e2-971a07a7b77b', '2023-11-17'),
('UI1234572', 'b5749ed9-f4a2-4515-a8d1-bc5ea2b1e2ea', '2024-03-29'),
('UI1234573', 'ad8b8351-e4c1-4783-bf10-e7751fbc727d', '2024-05-10'),
('UI1234574', 'fa3f3465-70f1-4604-b5e1-9a9be4299453', '2023-08-03'),
('UI1234575', 'ebf9a63e-0e77-4909-a81a-89be33eaf268', '2024-06-18'),
('UI1234576', 'b2b56f1b-9f52-4842-9f7a-0560c564d710', '2024-04-02');


 