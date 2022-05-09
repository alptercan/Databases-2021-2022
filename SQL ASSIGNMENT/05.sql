SELECT a1.ocust, SUM(Details.qty) as total FROM Orders a1 INNER JOIN Orders a2 ON a1.ocust = a2.ocust
INNER JOIN Details on Details.ordid = a1.ordid
INNER JOIN Products ON Details.pcode = Products.pcode
WHERE qty IN(SELECT MAX(qty) FROM Details) and Products.ptype = 'BOOK'
GROUP BY a1.ocust;