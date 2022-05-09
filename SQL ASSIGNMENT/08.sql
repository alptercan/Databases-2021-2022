SELECT  a1.ocust, MAX(a1.odate) - MIN(a1.odate) as number FROM Orders a1
INNER JOIN Orders a2 ON a2.ocust = a1.ocust AND a2.odate < a1.odate AND a2.ordid > a1.ordid
INNER JOIN Customers On Customers.custid = a1.ocust
WHERE a2.ordid - a1.ordid = 1
GROUP BY a1.ocust;