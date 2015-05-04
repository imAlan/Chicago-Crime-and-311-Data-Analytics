# Chicago-Crime-and-311-Data-Analytics

Analysis on Chicago's 311 graffiti and street light outage service requests vs crime data.

Programming Languages Used: Pig, Map Reduce and Java 

##Datasets

[Chicago 311 Graffiti Removal Dataset](https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Graffiti-Removal/hec5-y4x5)

[Chicago 311 Street Lights One Out Dateset](https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Street-Lights-One-Out/3aav-uy2v)

[Chicago 311 Street Lights All Out Dataset](https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Street-Lights-All-Out/zuxi-7xem)

[Chicago Crime Dataset](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2)

##Process
Used Excel to delete columns that were irrelevant

Used Python to remove incomplete rows

Used Pig to aggregate 311 Light Dataset to 2 columns: (year, community area), number of lights request

Used MapReduce Java to aggregate 311 Graffiti Dataset to 2 columns: (year, community area), number of graffiti request

Used Pig to aggregate Crime Dataset to 2 outputs (all crime and street crime) with two columns: (year, community area), number of crimes

Used Pig to merge the crime output with the lights and graffiti 

Final output in the analytics folder

##Visualization
Programming languages/Tools Used: HTML, CSS, JavaScript, c3.js, materializecss

In the visualization folder