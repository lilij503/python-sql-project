import csv
import os
from os import write
from csv import writer

if not os.path.isfile("Address.csv"):
    with open("Address.csv", 'w', newline='') as address_file:
    
        newfile = csv.writer(address_file)
        newfile.writerow(["a_id","street","city","state"])
        address_file.close()
else:
    with open("Address.csv", 'a', newline='') as address_file:
        newfile = csv.writer(address_file)
        numberofinput = int(input('Please enter how many info you want: '))
        for i in range(numberofinput):
            # Create user input for Addresses
            add1 = int(input("Enter the address_id: "))
            add2 = input("Enter the street: ")
            add3 = input("Enter the city: ")
            add4 = input("Enter the state: ")
            newfile.writerow([add1,add2,add3,add4])
        print('Thank you for your information')

with open ("Address.csv", 'r') as address_file:
    save_file= csv.reader(address_file)
    for row in save_file:
        print("The information has been recorded: ", row)

