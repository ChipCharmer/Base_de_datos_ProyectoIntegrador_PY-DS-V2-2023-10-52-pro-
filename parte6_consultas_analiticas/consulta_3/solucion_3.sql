SELECT sucursal.nombre AS nombre_sucursal,
         SUM(orden.total) AS total_ventas
FROM sucursal
JOIN orden ON sucursal.id = orden.sucursal_id
GROUP BY sucursal.id
ORDER BY total_ventas DESC,
          nombre_sucursal ASC;