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

Los resultados fueron:

Al inicio se encontraron los siguientes:

| Archivo                                      | Errores detectados                                                                 |
|------------------------------------------------|---------------------------------------------------------------------------------------|
| `lib/services/AuthService.dart`                | - Uso de `print` en: línea 106, 126, 137                                             |
| `lib/services/favorite_service.dart`            | - Nombre de archivo no en `lower_case_with_underscores`<br>- Uso de `print` en: línea 29, 31, 40, 42 |
| `lib/services/auth_service.dart`               | - Posible duplicado de `AuthService.dart`<br>- Uso de `print` en: línea 22           |
| `lib/services/favorites_service.dart`          | - Sentencias `if` sin llaves `{}` en: línea 14, 15                                   |

### Total de archivos involucrados:
- `lib/services/AuthService.dart`  
- `lib/services/favorite_service.dart`  
- `lib/services/auth_service.dart` (verificar si es duplicado)  
- `lib/services/favorites_service.dart`


