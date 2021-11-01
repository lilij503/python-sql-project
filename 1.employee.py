import csv
import os
from os import write
from csv import writer

with open("Employee.csv", 'a', newline='') as emp_file:
    numberofinput = int(input('Please enter how many employees info you want: '))
    newfile = csv.writer(emp_file)
    for i in range(numberofinput):
        emp1 = int(input("Enter the employees_id: "))
        emp2 = input("Enter the employees name: ")
        emp3 = int(input("Enter the employees age: "))
        emp4 = int(input("Enter the employees salary: "))
        emp5 = int(input("Enter the employees department_id: "))
        emp6 = int(input("Enter the employees address_id: "))
        emp7 = int(input("Enter the employees manager_id: "))
        newfile.writerow([emp1,emp2,emp3,emp4,emp5,emp6,emp7])
        print('Thank you for your information')

with open ("Employee.csv", 'r') as emp_file:
    save_file= csv.reader(emp_file)
    for row in save_file:
        print("The information has been recorded: ", row)

