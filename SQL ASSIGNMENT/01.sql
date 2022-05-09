SELECT SUM(ocust), country FROM Orders, Customers WHERE odate < '2019-12-31' AND odate > '2017-01-01'
GROUP BY country;