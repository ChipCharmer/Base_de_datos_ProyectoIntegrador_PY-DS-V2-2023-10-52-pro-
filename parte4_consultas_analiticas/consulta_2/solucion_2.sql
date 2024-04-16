SELECT sucursal_id, SUM(cantidad) as total_productos
FROM Stock
GROUP BY sucursal_id
ORDER BY sucursal_id ASC;
