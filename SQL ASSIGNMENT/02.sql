SELECT DISTINCT Payments.invid, Payments.amount + Payments.amount - Invoices.amount as refundAmount
FROM Payments
INNER JOIN Invoices ON
Payments.invid = Invoices.invid
WHERE Invoices.amount - Payments.amount = 0;