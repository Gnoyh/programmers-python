# https://school.programmers.co.kr/learn/courses/30/lessons/131530

SELECT FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP, COUNT(PRICE) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP