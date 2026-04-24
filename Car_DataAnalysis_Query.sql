-- 1 read car data
SELECT * FROM Car.Car_detail;

-- 2 total cars:to get a count of total records
SELECT 
    COUNT(*) AS total_cars
FROM
    Car.Car_detail;

-- 3 the manager asked the employee how many cars willbe avaliable in 2023
SELECT 
    COUNT(*) AS toal_car
FROM
    Car.Car_detail
WHERE
    year = '2023';

-- 4 the manager asked the employee how many car will avaliable in 2020,2021,2022.
SELECT 
    COUNT(*) AS total_car, year
FROM
    Car.Car_detail
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year
ORDER BY year ASC;

-- 5 client ask to car dealer agent how many diesel cars will there in 2020
SELECT 
    COUNT(*) AS total_cars
FROM
    Car.Car_detail
WHERE
    year = 2020 AND fuel = 'diesel';

-- 6 the manager told the employee to give print all the fuel cars come by all year
SELECT 
    year, fuel, COUNT(*) AS total_cars
FROM
    Car.Car_detail
GROUP BY year , fuel
ORDER BY year;

-- 7 manager said there were more than 100 cars in a given year which year had more than 100 cars
SELECT 
    COUNT(*) AS total_cars, year
FROM
    Car.Car_detail
GROUP BY year
HAVING COUNT(*) > 100
ORDER BY year ASC;

-- 8 the manager said the employee all cars count details between 2015 and 2023 ; 
SELECT 
    COUNT(*) AS total_cars, year
FROM
    Car.Car_detail
WHERE
    year BETWEEN 2015 AND 2023
GROUP BY year
ORDER BY year ASC
