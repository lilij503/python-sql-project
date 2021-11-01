import yaml
import csv

yaml_dict = {}
 
with open('Departments.csv','r') as csvfile:
        reader = csv.reader(csvfile)
        row_idx = 0
        # check hearder
        for row in reader:
                if row_idx == 0:
                        cols = row
                        for col in cols:
                                yaml_dict[col] = []
        # store values
                else:
                        for item_idx, item in enumerate(row):
                                yaml_dict[cols[item_idx]].append(item)
                row_idx+=1
yaml.dump(yaml_dict)

with open("Departments.yaml","wt") as file:
        data = yaml.dump(yaml_dict, sort_keys=False)
        file.write(data)
