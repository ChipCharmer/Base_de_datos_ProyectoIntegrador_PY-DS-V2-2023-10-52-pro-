SELECT cliente.nombre AS nombre_cliente,
         SUM(orden.total) AS total_de_compras
FROM cliente
JOIN orden ON cliente.id = orden.cliente_id
GROUP BY cliente.id
ORDER BY total_de_compras DESC,
         nombre_cliente ASC
LIMIT 1;