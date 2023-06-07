SELECT location, YEAR(date) AS year, MONTH(date) AS month, MAX(total_cases) AS Max_Total_Cases, MAX(total_deaths) AS total_deaths
	FROM [Covid-19Project]..owidcoviddata02
 GROUP BY location, YEAR(date), MONTH(date)
 ORDER BY location, YEAR(date), MONTH(date)

SELECT
    location,
    YEAR(date) AS year,
    MONTH(date) AS month,
    MAX(total_cases) AS Max_Total_Cases
FROM [Covid-19Project]..owidcoviddata02
WHERE total_cases = (SELECT MAX(total_cases) FROM [Covid-19Project]..owidcoviddata02)
GROUP BY location, YEAR(date), MONTH(date)

