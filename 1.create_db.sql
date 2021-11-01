CREATE DATABASE Employee;

CREATE TABLE employees(
e_id INT PRIMARY KEY IDENTITY,
name VARCHAR(100) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
department_id INT NOT NULL,
address_id INT NOT NULL,
manager_id INT NOT NULL
);

CREATE TABLE department(
d_id INT PRIMARY KEY IDENTITY,
name VARCHAR(100) NOT NULL,
manager_id INT NOT NULL,
headquarters_address_id INT NOT NULL,
CONSTRAINT FK_manager_id FOREIGN KEY (manager_id)
REFERENCES employees(e_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE address(
a_id INT PRIMARY KEY IDENTITY,
street VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL,
state VARCHAR(100) NOT NULL,
);

Alter Table employees
ADD FOREIGN KEY (manager_id)
REFERENCES employees(e_id);


Alter Table employees
ADD FOREIGN KEY (address_id)
REFERENCES address(a_id);

Alter Table employees
ADD FOREIGN KEY (department_id)
REFERENCES department(d_id);

Alter Table department
ADD FOREIGN KEY (headquarters_address_id)
REFERENCES address(a_id);

alter table address change colunm