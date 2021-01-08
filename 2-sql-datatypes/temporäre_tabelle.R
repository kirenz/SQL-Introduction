### Werte während des Imports hinzufügen

* Erzeugung von temporären Tabellen 

```{sql connection=con, eval=FALSE}
DELETE FROM supervisor_salaries;
```


```{sql connection=con, eval=FALSE}
CREATE TEMPORARY TABLE supervisor_salaries_temp 
(LIKE supervisor_salaries);
```


```{sql connection=con, eval=FALSE}
COPY supervisor_salaries_temp (town, supervisor, salary)
FROM '/Users/jankirenz/Documents/HdM/Vorlesungen/DataScience/ProgrammingLanguages/SQL/practical-sql-master/Chapter_04/supervisor_salaries.csv'
WITH (FORMAT CSV, HEADER);
```


???
  Listing 4-6 Use a temporary table to add a default value to a column during
import

---
  
  ```{sql connection=con, eval=FALSE}
INSERT INTO supervisor_salaries (town, county, supervisor, salary)
```


```{sql connection=con, eval=FALSE}
UPDATE supervisor_salaries_temp 
SET county = 'Some County';
```



```{}
--SELECT town, county, supervisor, salary
--FROM supervisor_salaries_temp;
```


---
  
  ```{sql connection=con, eval=FALSE}
--Check the data
SELECT * 
  FROM supervisor_salaries 
LIMIT 2;
```

--
  
  
  ```{sql connection=con, eval=FALSE}
DROP TABLE supervisor_salaries_temp;
```
