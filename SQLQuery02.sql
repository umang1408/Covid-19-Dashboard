SELECT MONTH(date) AS month, YEAR(date) AS year, date, SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
	FROM [Covid-19Project]..owidcoviddata02
 GROUP BY MONTH(date), YEAR(date), date
 ORDER BY YEAR(date),MONTH(date), date

SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths,  YEAR(date) AS year
	FROM [Covid-19Project]..owidcoviddata02
 GROUP BY YEAR(date)

UPDATE [Covid-19Project]..owidcoviddata02 SET [new_cases]=0 WHERE [new_cases] IS NULL; 
UPDATE [Covid-19Project]..owidcoviddata02 SET [new_deaths]=0 WHERE [new_deaths] IS NULL; 

SELECT location, SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths, (SUM(new_cases) - SUM(new_deaths)) AS recovered, YEAR(date) AS year
	FROM [Covid-19Project]..owidcoviddata02
 GROUP BY location, YEAR(date)