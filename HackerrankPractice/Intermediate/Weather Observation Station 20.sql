-- # https://www.hackerrank.com/challenges/weather-observation-station-20/problem

select round(lat_n, 4)
from station
order by lat_n asc
limit 249,1
