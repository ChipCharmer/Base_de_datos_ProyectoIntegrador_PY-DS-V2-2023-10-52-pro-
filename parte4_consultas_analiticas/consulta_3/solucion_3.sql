SELECT cliente_id, SUM(total) as total_ventas
FROM Orden
GROUP BY cliente_id
ORDER BY cliente_id ASC;