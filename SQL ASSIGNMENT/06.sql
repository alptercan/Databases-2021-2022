SELECT a1.pcode, a1.qty FROM Details a1
INNER JOIN Details a2 ON a2.pcode = a1.pcode
AND a1.qty <> a2.qty
WHERE a1.qty > 2 * a2.qty
ORDER BY pcode;