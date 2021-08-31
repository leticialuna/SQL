-- # https://www.hackerrank.com/challenges/weather-observation-station-13/problem?h_r=next-challenge&h_v=zen

select round(sum(lat_n), 4)
from station
where lat_n between 38.7880 and 137.2345;
