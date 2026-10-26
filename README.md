# Análisis de Recursos Humanos | HR Analytics

## Descripción

Proyecto de análisis de datos de Recursos Humanos de una empresa ficticia, desarrollado para identificar patrones relacionados con la distribución del personal, los salarios, la rotación laboral, la antigüedad y las contrataciones

El proyecto integra limpieza de datos en Excel, consultas SQL en SQLite y visualización de indicadores mediante Looker Studio

## Objetivo

Transformar los datos de Recursos Humanos en información útil para comprender la composición de la plantilla, comparar indicadores entre departamentos e identificar áreas de oportunidad para la gestión del personal

## Herramientas utilizadas

- **Excel:** limpieza, estandarización y validación de datos
- **SQL (SQLite):** consultas, agregaciones y análisis de indicadores
- **DB Browser for SQLite:** administración de la base de datos y ejecución de consultas
- **Google Sheets:** preparación y conexión de los datos para la visualización
- **Looker Studio:** creación del dashboard interactivo
- **GitHub:** documentación y control de versiones del proyecto

## Datos utilizados

Se trabajó con datos ficticios organizados en tres tablas principales:

- **Empleados:** identificador, género, puesto, departamento, ciudad, fechas de ingreso y baja, y estatus laboral
- **Departamentos:** catálogo de departamentos de la empresa
- **Salarios:** registros salariales con fechas de inicio y fin de vigencia

Los datos se utilizaron exclusivamente con fines educativos y de demostración

## Proceso de análisis

### 1. Limpieza de datos en Excel

- Eliminación de registros duplicados de empleados.
- Normalización de textos y valores categóricos.
- Revisión de datos faltantes.
- Validación de fechas de ingreso, baja y estatus laboral.
- Identificación de registros salariales vacíos o con valores iguales a cero.
- Estandarización de fechas y exportación de archivos CSV en UTF-8.

### 2. Análisis con SQL

Se desarrollaron consultas para responder preguntas de negocio relacionadas con:

- Cantidad de empleados activos y dados de baja.
- Salario promedio vigente por departamento.
- Tasa de rotación por departamento.
- Antigüedad promedio de los empleados activos.
- Contrataciones por año.
- Distribución del personal por género y ciudad.
- Preparación de una tabla de datos para el dashboard.

### 3. Visualización en Looker Studio

Se diseñó un dashboard interactivo con indicadores clave (KPIs) y gráficas para facilitar la interpretación de los resultados.

## Indicadores principales (KPIs)

- **Empleados activos:** 92.
- **Bajas:** 28.
- **Tasa de rotación:** 23.3 %.
- **Salario promedio de empleados activos:** aproximadamente $25,834 mensuales.
- **Antigüedad promedio de empleados activos:** 4.3 años.

Los indicadores corresponden a los resultados obtenidos durante el análisis de los datos ficticios.

## Principales hallazgos

- La plantilla analizada contiene 120 empleados únicos.
- Se identificaron 92 empleados activos y 28 bajas.
- Finanzas presenta la mayor tasa de rotación entre los departamentos analizados.
- Tecnología registra el salario promedio más alto entre los empleados activos.
- El análisis de contrataciones permite comparar la evolución de los ingresos de personal entre 2018 y 2026.
- La distribución del personal por género es de 61 registros F y 59 registros M.

## Estructura del repositorio

```text
proyecto-recursos-humanos/
├── dashboard/
│   └── README.md
├── datos/
│   ├── README.md
│   ├── departamentos_limpio.csv
│   ├── empleados_limpio.csv
│   └── salarios_limpio.csv
├── excel/
│   ├── README.md
│   ├── departamentos_limpio.xlsx
│   ├── empleados_limpio.xlsx
│   └── salarios_limpio.xlsx
├── sql/
│   ├── README.md
│   └── analisis_recursos_humanos.sql
└── README.md
```

## Acceso al dashboard

**Looker Studio:** enlace público pendiente de agregar

El acceso dependerá de los permisos de publicación y visualización configurados en Looker Studio

## Aprendizajes del proyecto

Este proyecto permitió practicar habilidades de análisis de datos, incluyendo:

- Limpieza y validación de datos en Excel
- Consultas SQL con `JOIN`, `GROUP BY`, `CASE`, funciones de agregación y subconsultas
- Cálculo e interpretación de indicadores de Recursos Humanos
- Preparación de datos para visualización
- Creación de dashboards y documentación de un proyecto en GitHub

## Consideraciones

Los datos utilizados son ficticios. Los resultados son ilustrativos y no representan información de una empresa real

## Autora

Proyecto desarrollado como parte de mi portafolio de **Data Analyst Jr**, con el objetivo de demostrar habilidades prácticas de limpieza, análisis y visualización de datos.
