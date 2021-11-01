BULK INSERT address
    FROM 'C:\Users\ggzi9\Desktop\class\project1\Address.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    )

BULK INSERT employees
    FROM 'C:\Users\ggzi9\Desktop\class\project1\Employee.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    )

BULK INSERT department
    FROM 'C:\Users\ggzi9\Desktop\class\project1\Departments.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    )