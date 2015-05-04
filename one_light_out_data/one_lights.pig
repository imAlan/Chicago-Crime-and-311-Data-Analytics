data = LOAD 'one_lights_output.csv' USING PigStorage(',') as (year:int,type:chararray,area:int);
group_area_year = GROUP data BY (year, area);
count_lights = FOREACH group_area_year GENERATE group, COUNT(data);
sort_lights = ORDER count_lights BY group DESC;
STORE sort_lights INTO 'output';
