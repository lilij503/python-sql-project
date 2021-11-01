import csv
import os
from os import write
from csv import writer

with open("Departments.csv", 'a', newline='') as depart_file:
    numberofinput = int(input('Please enter how many employees info you want: '))
    newfile = csv.writer(depart_file)
    for i in range(numberofinput):
        depart1 = int(input("Enter the departments_id: "))
        depart2 = input("Enter the departments name: ")
        depart3 = int(input("Enter the departments_manager_id: "))
        depart4 = int(input("Enter the headquarters_address_id: "))
        newfile.writerow([depart1,depart2,depart3,depart4])
        print('Thank you for your information')

with open ("Departments.csv", 'r') as depart_file:
    save_file= csv.reader(depart_file)
    for row in save_file:
        print("The information has been recorded: ", row)


