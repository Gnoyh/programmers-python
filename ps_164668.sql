# https://school.programmers.co.kr/learn/courses/30/lessons/164668

SELECT WRITER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD AS B
JOIN USED_GOODS_USER AS U ON B.WRITER_ID = U.USER_ID
WHERE STATUS = 'DONE'
GROUP BY WRITER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES