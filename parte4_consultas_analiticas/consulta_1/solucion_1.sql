SELECT MIN(precio_unitario) as precio_minimo, 
       MAX(precio_unitario) as precio_maximo,
       AVG(precio_unitario) as precio_promedio
FROM Producto;
