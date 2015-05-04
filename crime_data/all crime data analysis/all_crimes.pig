data = LOAD 'crimedata.csv' USING PigStorage(',') as (type:chararray,loc:chararray,area:int,year:int);
streetcrimes = FILTER data BY year > 2010;
group_area_year = GROUP streetcrimes BY (year, area);
streetcount = FOREACH group_area_year GENERATE group, COUNT(streetcrimes);
sortcrimes = ORDER streetcount BY group DESC;
STORE sortcrimes INTO 'output';

