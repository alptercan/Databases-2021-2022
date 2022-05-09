SELECT Customers.cname, SUM(qty) as total FROM Customers, Details
INNER JOIN Products on Products.pcode = Details.pcode
INNER JOIN Orders On Orders.ordid = Details.ordid
WHERE qty <= 10 AND Orders.odate <> Orders.odate
GROUP BY CUSTOMERS.CNAME;