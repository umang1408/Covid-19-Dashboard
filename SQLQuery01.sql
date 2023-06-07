SELECT location, MONTH(date) AS month, YEAR(date) AS year, SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
	FROM [Covid-19Project]..owidcoviddata02
 GROUP BY location, MONTH(date), YEAR(date) 
 ORDER BY location, year, month

SELECT continent,  YEAR(date) AS year, SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
	FROM [Covid-19Project]..owidcoviddata02
 WHERE continent <> 'NULL'
 GROUP BY continent, YEAR(date)
 