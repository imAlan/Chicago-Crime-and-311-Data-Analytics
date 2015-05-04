"""
Author: Alan Chen
Clean crime data - removes rows with missing data
"""
import csv

def main():
	field_names = ['ID'	,'Case Number',	'Date'	,'Block',	'IUCR',	'Type',	'Description',	'Loc'	,'Arrest',	'Domestic',	'Beat',	'District',	'Ward',	'Area',	'FBI Code'	,'X Coordinate',	'Y Coordinate',	'Year', 'Updated On',	'Latitude',	'Longitude',	'Location']
	delimiter = ','
	with open('crime.csv', 'rU') as fh:
		reader = csv.DictReader(fh, dialect=csv.excel_tab, fieldnames=field_names, delimiter=delimiter)
		with open('crime_output.csv', 'w') as fw:
			csv_fw = csv.writer(fw)
			for row in reader:
				if row['Area'] != '' and row['Type'] != '' and row['Loc'] != '' and row['Year'] != '':
					csv_fw.writerow((row['Type'], row['Loc'], row['Area'], row['Year']))


if __name__ == "__main__":
	main()