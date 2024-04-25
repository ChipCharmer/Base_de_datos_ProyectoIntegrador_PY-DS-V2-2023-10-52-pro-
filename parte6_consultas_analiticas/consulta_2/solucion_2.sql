SELECT categoria.nombre as categoria,
         SUM(stock.cantidad) as total_en_stock
FROM stock
JOIN producto ON stock.producto_id = producto.id
JOIN categoria ON producto.categoria_id = categoria.id
GROUP BY categoria.id
ORDER BY total_en_stock DESC,
          categoria ASC;