-- # https://www.hackerrank.com/challenges/weather-observation-station-2/problem

select round(sum(lat_n), 2) AS lat, round(sum(long_w), 2) AS lon
from station;
