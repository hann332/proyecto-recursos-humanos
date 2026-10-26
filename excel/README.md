# Limpieza de Datos en Excel

## Descripción

Esta carpeta documenta el proceso de limpieza y preparación de los datos de Recursos Humanos antes de realizar el análisis en SQL y Looker Studio

## Actividades realizadas

- **Eliminación de duplicados:** revisión de identificadores para evitar registros repetidos de empleados
- **Normalización de textos:** corrección de espacios adicionales y estandarización de valores de género y puestos
- **Revisión de valores faltantes:** identificación de datos ausentes y asignación de valores como "Sin dato" cuando correspondía
- **Validación de estatus:** revisión de la consistencia entre el estatus laboral y las fechas de baja
- **Estandarización de fechas:** organización de las fechas en un formato consistente
- **Revisión salarial:** identificación de registros salariales vacíos o con valores iguales a cero

## Archivos de trabajo

Los archivos de Excel utilizados para la limpieza se conservaron durante el desarrollo del proyecto. Los datos finales se exportaron a CSV para importarlos a SQLite y utilizarlos en el dashboard

## Herramientas

- Microsoft Excel
- Funciones de texto y conteo
- Herramientas de eliminación de duplicados
- Exportación CSV UTF-8

## Resultado

Se obtuvieron archivos preparados para facilitar las consultas SQL, reducir inconsistencias y mejorar la calidad de los datos utilizados en el análisis

## Consideraciones

Los datos son ficticios y se utilizan con fines educativos y de demostración
