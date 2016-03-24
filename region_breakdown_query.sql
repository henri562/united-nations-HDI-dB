SELECT decode(region_name, --check for region name
              'North America' -- if North America is found
             , substr(region_name, 1, instr(region_name, 'N')) --trunc "orth"
               || '.' || --append "."
               substr(region_name, instr(region_name, ' '), instr(region_name, 'a')) --append " America"
             , 'South America' --perform same operations if South America is found
             , substr(region_name, 1, instr(region_name, 'S'))
               || '.' ||
               substr(region_name, instr(region_name, ' '), instr(region_name, 'a'))
             , region_name --default region string to display
             ) "Region"
      , COUNT(country_name) "Total" --count total number of countries in region
      , TO_CHAR(SUM(gdp_nominal),'$99,999,999') "Total GDP in Mil"
      , TO_CHAR(MAX(hdi), '0.999') "Max HDI" --return maximum HDI in region
      , TO_CHAR(MIN(hdi), '0.999') "Min HDI" --return minimum HDI in region
      , TO_CHAR(TRUNC(AVG(hdi), 3), '0.999') "Avg HDI" --return average HDI in region, truncate to three decimal places
      , COUNT(hdi_vh) "Very High (> 0.8)" --count countries with very high HDI
      , COUNT(hdi_h) "High (> 0.7)" --count countries with high HDI
      , COUNT(hdi_m) "Medium (> 0.55)" --count countries with medium HDI
      , COUNT(hdi_l) "Low (< 0.55)" --count countries with low HDI
FROM ( SELECT
	     r.region_name
       , g.gdp_nominal
	   , c.country_name
       , h.hdi
	   , CASE WHEN h.hdi > 0.8 THEN 1 END AS hdi_vh
       , CASE WHEN h.hdi < 0.8 AND h.hdi > 0.7 THEN 1 END AS hdi_h
       , CASE WHEN h.hdi < 0.7 AND h.hdi > 0.55 THEN 1 END AS hdi_m
       , CASE WHEN h.hdi < 0.55 THEN 1 END AS hdi_l
	   FROM un_regions r
	   INNER JOIN un_countries c USING (region_id)
	   INNER JOIN un_hdi_2013 h USING (country_id)
	   INNER JOIN un_gdp_2013 g USING (country_id)
      )
WHERE region_name IN ( SELECT region_name
					   FROM un_regions
					   WHERE region_id BETWEEN 1 AND 6 --select regions to display
                     )
GROUP BY region_name
HAVING COUNT(country_name) > 0
ORDER BY "Total" DESC, "Total GDP in Mil" DESC, "Region";