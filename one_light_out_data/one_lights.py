"""
Author: Alan Chen
Clean 311 one street light out - removes rows with missing data and formats the date
"""
import csv

def main():
	field_names = ['date', 'type', 'area']
	delimiter = ','
	with open('311_one_lights.csv', 'rU') as fh:
		reader = csv.DictReader(fh, dialect=csv.excel_tab, fieldnames=field_names, delimiter=delimiter)
		with open('one_lights_output.csv', 'w') as fw:
			csv_fw = csv.writer(fw)
			for row in reader:
				if row['date'] != '' and row['type'] != '' and row['area'] != '':
					try:
						date = "20" + row['date'].split('/')[2]
						csv_fw.writerow((date, row['type'], row['area']))
					except:
						print row['date']

if __name__ == "__main__":
	main()