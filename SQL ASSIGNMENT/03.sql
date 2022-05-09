SELECT custid, cname, odate FROM Customers INNER JOIN Orders
ON Customers.custid = Orders.ocust
WHERE(custid, odate) IN(SELECT ocust, MAX(odate) as odate
FROM Orders
GROUP BY ocust);