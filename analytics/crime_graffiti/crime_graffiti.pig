graffiti = LOAD 'graffiti.txt' AS (key:chararray, num_graffiti:int);
all_crime = LOAD 'all_crime.txt' AS (key:chararray, num_crimes:int);
graffiti_join_crime = JOIN all_crime BY key, graffiti by key;
graffiti_vs_crime = FOREACH graffiti_join_crime GENERATE $0 AS key, $1 AS num_crimes, $3 AS num_graffiti;
STORE graffiti_vs_crime INTO 'output'; 
