
-----------------------------
--------Instructions---------
-----------------------------
/* 
For this challenge you need to create a simple SELECT statement. Your task is to calculate the MIN, MEDIAN and MAX scores of the students from the results table.

Tables and relationship below:

Resultant table:
	min
	median
	max
 */
 -----------------------------
 
 
WITH medianScore
AS
(
  SELECT 
      AVG(CAST(score AS float)) AS median
     FROM ( SELECT 
            score 
             , row_number() OVER (ORDER BY score)
             ,(SELECT count(*) FROM result) AS count 
            FROM result
            ) AS rc
    WHERE row_number between 
        FLOOR((count)/2) 
        and CEIL((count)/2+1)
)

SELECT 
   MIN(score) AS min
  ,(SELECT median FROM medianScore) as median
  ,MAX(score) AS max
FROM result