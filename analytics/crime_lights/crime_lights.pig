all_lights = LOAD 'all_lights.txt' AS (key:chararray, num_all_lights:int);
one_light = LOAD 'one_light.txt' AS (key:chararray, num_one_lights:int);
lights = JOIN one_light BY key, all_lights BY key;
lights_out = FOREACH lights generate $0 AS key, ($1 + $3) AS num_lights;
scrime = LOAD 'street_crime.txt' AS (key:chararray, num_crimes:int);
scrime_join_lights = JOIN scrime BY key, lights_out BY key;
scrime_vs_lights = FOREACH scrime_join_lights GENERATE $0 AS key, $1 AS num_scrime, $3 AS num_lights;
STORE scrime_vs_lights INTO 'output';
