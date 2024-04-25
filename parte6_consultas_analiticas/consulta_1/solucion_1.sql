SELECT categoria.nombre AS categoria,
        AVG(precio_unitario) AS precio_promedio
FROM producto
JOIN categoria ON producto.categoria_id = categoria.id
GROUP BY categoria.id
ORDER BY precio_promedio DESC,
          categoria ASC;