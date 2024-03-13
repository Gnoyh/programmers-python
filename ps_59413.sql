# https://school.programmers.co.kr/learn/courses/30/lessons/59413

WITH RECURSIVE VT AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 FROM VT WHERE HOUR < 23
)
SELECT VT.HOUR, COUNT(AO.ANIMAL_ID) AS COUNT
FROM ANIMAL_OUTS AS AO
RIGHT JOIN VT ON HOUR(AO.DATETIME) = VT.HOUR
GROUP BY VT.HOUR
ORDER BY VT.HOUR