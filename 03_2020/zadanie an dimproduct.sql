SELECT * FROM
DimProduct
WHERE ProductAlternateKey in (
SELECT ProductAlternateKey
FROM DimProduct
GROUP BY ProductAlternateKey
HAVING COUNT(*) > 1)