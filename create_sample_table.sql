-- Create Sample Employee Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(100),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1, 'Andi', 'Database Administrator', 7000000),
(2, 'Budi', 'System Analyst', 6500000),
(3, 'Siti', 'Data Engineer', 8000000);
