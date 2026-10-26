-- Proyecto: Análisis de Recursos Humanos
-- Base de datos: SQLite

-- 1. Contar empleados activos y dados de baja
SELECT estatus, COUNT(*) AS total FROM EMPLEADOS GROUP BY estatus;

-- 2. Calcular el salario promedio vigente por departamento para empleados activos
SELECT d.nombre_departamento, COUNT(DISTINCT e.id_empleado) AS empleados,
ROUND(AVG(s.salario_mensual),0) AS salario_promedio FROM empleados AS e JOIN departamentos AS d
on e.id_departamento = d.id_departamento JOIN salarios AS s ON s.id_empleado = e.id_empleado
where e.estatus = 'Activo' and s.fecha_fin is null group by d.nombre_departamento
ORDER BY salario_promedio DESC; 

-- 3. Calcular la tasa de rotación por departamento
SELECT d.nombre_departamento, COUNT (*)AS total_empleados, SUM(CASE WHEN e.estatus = 'Baja' THEN 1 ELSE 0 END) AS bajas,
ROUND( 100.0 * SUM(CASE WHEN e.estatus = 'Baja' THEN 1 ELSE 0 END) / COUNT(*), 1) AS rotacion_pct
FROM empleados AS e JOIN departamentos AS d ON e.id_departamento = d.id_departamento
GROUP BY d.nombre_departamento
ORDER BY rotacion_pct DESC;

-- 4. Calcular la antigüedad promedio de empleados activos en años
SELECT  ROUND(AVG((julianday('2026-10-01') - julianday(fecha_ingreso)) / 365.25),1) as antiguedad_anios
from empleados where estatus = 'Activo';

-- 5. Contar empleados ingresados por año
SELECT strftime('%Y', fecha_ingreso) as anio, count(*) as ingresos  from empleados group by anio order by anio;

-- 6A. Distribución de empleados por género
SELECT genero, count (*) AS total from empleados group by genero;

---6b. distribucion de empleados por ciudad
SELECT ciudad, COUNT (*) AS TOTAL FROM EMPLEADOS GROUP BY CIUDAD ORDER BY total DESC;

-- 7. Preparar los datos para el dashboard
SELECT
    e.id_empleado,
    e.nombre,
    e.genero,
    d.nombre_departamento AS departamento,
    e.puesto,
    e.ciudad,
    e.fecha_ingreso,
    e.fecha_baja,
    e.estatus,
    strftime('%Y', e.fecha_ingreso) AS anio_ingreso,
    s.salario_mensual,
    ROUND(
        (
            julianday(COALESCE(e.fecha_baja, '2026-10-01'))
            - julianday(e.fecha_ingreso)
        ) / 365.25,
        1
    ) AS antiguedad_anios
FROM empleados AS e
JOIN departamentos AS d
    ON e.id_departamento = d.id_departamento
LEFT JOIN salarios AS s
    ON s.id_empleado = e.id_empleado
    AND s.fecha_inicio = (
        SELECT MAX(s2.fecha_inicio)
        FROM salarios AS s2
        WHERE s2.id_empleado = e.id_empleado
    )
ORDER BY e.id_empleado;
