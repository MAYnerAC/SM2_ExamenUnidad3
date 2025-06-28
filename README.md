# SM2_ExamenUnidad3

# Informe del Workflow Automatizado - SM2 Examen Unidad 3

**Curso:** SOLUCIONES MÓVILES II SEC. A  
**Fecha:** 27/06/2025  
**Estudiante:** Mayner Gonzalo Anahua Coaquira

## 🔗 Repositorio

[https://github.com/MAYnerAC/SM2_ExamenUnidad3](https://github.com/MAYnerAC/SM2_ExamenUnidad3)

## Estructura de carpetas

```
.github/
└── workflows/
└── quality-check.yml
test/
```


## Contenido del archivo `quality-check.yml`

```yaml



```

## Explicación de lo realizado
Se implementó un flujo de trabajo en GitHub Actions que se activa automáticamente al hacer push o pull request a la rama main. Este workflow realiza dos acciones:

Ejecuta flutter analyze para asegurar la calidad del código.

Ejecuta flutter test para garantizar que las pruebas automatizadas pasen correctamente.

La configuración se realizó