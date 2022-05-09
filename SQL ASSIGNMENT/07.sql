SELECT Products.pcode, Products.price FROM Products
INNER JOIN Details ON Products.pcode = Details.pcode
WHERE qty >= 3;