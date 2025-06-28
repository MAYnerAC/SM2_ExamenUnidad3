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



## Cambios Realizados

### 1. Eliminación de Imports No Usados
- Archivos con imports eliminados:
  - `main.dart`
  - `admin_home_page.dart`
  - `cart_screen.dart`
  - `chat_screen.dart`

### 2. Correcciones de Lint (estilo y buenas prácticas)

- **Evitar uso de `BuildContext` tras `await`**
  - Se reorganizó el flujo en múltiples pantallas (`login_screen`, `register_screen`, `product_form_screen`, etc.)
  - Uso seguro del contexto tras operaciones asíncronas para evitar errores en la navegación.

- **Eliminación de `print()` en producción**
  - Sustituido por comentarios o removido directamente en:
    - `chat_screen.dart`
    - `preference_service.dart`
    - `product_form_screen.dart`
    - `cart_screen.dart`

- **Variables sin usar eliminadas**
  - Ejemplo: `final url = Uri.parse(initPoint);` → Eliminada por ser innecesaria.

- **Eliminación de métodos no utilizados**
  - Funciones declaradas pero nunca invocadas (`_obtenerRecomendacion`) fueron eliminadas.

- **Cast innecesarios eliminados**
  - Se corrigieron conversiones redundantes como `(value as SomeType)`.

- **Parámetros con nombres conflictivos renombrados**
  - Evitado uso de nombres de parámetros que coinciden con tipos (`sum`, `String`).

---

## Advertencias Pendientes (opcional)
Estas no afectan el funcionamiento, pero se recomienda corregir a futuro:
- Uso de `withOpacity` (reemplazar por `.withAlpha()` o `.withValues()`).
- Renombrar archivos a `lower_case_with_underscores.dart`.
- Revisar que todos los métodos estén siendo usados.

---

## Conclusión

> El proyecto se limpio y mejoro en su mayoria, todo en base a las reglas del analizador estático de Dart/Flutter. El código es ahora más legible, pero aun se esperan completar las correcciones faltantes del analizador.