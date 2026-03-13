# Pokédex App 🎮⚡

[![Flutter](https://img.shields.io/badge/Flutter-v3.29.0+-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Clean Architecture](https://img.shields.io/badge/Architecture-Clean_Architecture-green)](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
[![State Management](https://img.shields.io/badge/State_Management-Riverpod-3d61ff)](https://riverpod.dev)
[![Flutter CI](https://github.com/felipechaux/pokedex_app/actions/workflows/main.yml/badge.svg)](https://github.com/felipechaux/pokedex_app/actions/workflows/main.yml)

Una aplicación de Pokédex moderna y profesional construida con **Flutter**, siguiendo los principios de **Clean Architecture** y patrones **SOLID**. Diseñada para ofrecer una experiencia de usuario fluida, con soporte multi-idioma, persistencia local y un sistema de temas dinámicos.

---

## 📱 Vista Previa (Prototype Showcase)


https://github.com/user-attachments/assets/bdd4d578-15ae-4750-91c0-0aad533987bf





---

## 🎨 Look & Feel "Premium"

La aplicación ha sido refinada para ofrecer una experiencia visual de alta calidad:
*   **Animaciones de Celebración**: Efectos de pulso y chispas (sparkles) al marcar un Pokémon como favorito.
*   **Transiciones Hero Avanzadas**: El fondo de la tarjeta en el listado se expande suavemente para convertirse en el encabezado de la página de detalle.
*   **Feedback Háptico**: Integración de `HapticFeedback.lightImpact()` en navegación, filtros y botones para una sensación más táctil ("Tactile UX").
*   **Diseño Moderno**: Uso de tipografía Poppins, espaciado generoso y bordes redondeados siguiendo principios de Material Design 3.

---

## 🏗️ Implementación de Arquitectura

Este proyecto utiliza **Clean Architecture + Riverpod + Inyección de Dependencias**.

```
┌─────────────────────────────────────────────┐
│              APP (Presentation Layer)       │
│  - Screens: Listado, Detalle, Favoritos, Perfil│
│  - State: Riverpod Notifiers (AsyncNotifier)│
│  - Widgets: PokemonCard, DetailContent, UI  │
└─────────────────┬───────────────────────────┘
                  │
┌─────────────────▼───────────────────────────┐
│          DOMAIN (Business Logic)            │
│  - Use Cases: GetPokemonList, ToggleFav...  │
│  - Entities: Pokemon, PokemonListItem       │
│  - Repository Interfaces (Contracts)        │
└─────────────────┬───────────────────────────┘
                  │
┌─────────────────▼───────────────────────────┐
│        DATA (Implementation Layer)          │
│  - Repository Impl: PokemonRepositoryImpl   │
│  - Data Sources: Remote (Dio) & Local (SQLite)│
│  - API: PokeAPI integration                 │
│  - Mappers: Model -> Entity conversion      │
└─────────────────────────────────────────────┘
```

### Capas del Proyecto:
1.  **Presentation**: Contiene toda la lógica de UI y el manejo de estado reactivo mediante Riverpod.
2.  **Domain**: Es el corazón del proyecto. Contiene las entidades de negocio y los casos de uso, totalmente independientes de cualquier framework o librería externa.
3.  **Data**: Define las fuentes de datos (Remotas y Locales) y la implementación concreta de los repositorios.

---

## 🧠 Desarrollo Potenciado por IA (Dash Skills)

Este proyecto ha sido desarrollado utilizando un flujo de trabajo asistido por IA, aplicando los estándares de calidad definidos en [dash_skills](https://github.com/kevmoo/dash_skills). 

### Uso de IA y Roles:
*   **Generación de Estructura**: La IA fue responsable de orquestar la creación de las capas de arquitectura, asegurando la separación de responsabilidades desde el primer día.
*   **Aplicación de Skills**: Se integraron habilidades específicas para elevar la calidad del código:
    *   `dart-test-fundamentals`: Para estructurar pruebas unitarias sólidas en repositorios y proveedores.
    *   `dart-matcher-best-practices`: Para garantizar aserciones legibles y precisas en los tests.
    *   `dart-modern-features`: Uso de patrones, switch expressions y clases selladas disponibles en Dart 3+.
*   **Reglas de Agente AI**: Como asistente de codificación, mis reglas priorizan el código limpio, la proactividad en la resolución de bugs lógicos y el mantenimiento de una estética visual "Premium" en todos los componentes de UI.

---

## 🛡️ Capas de Seguridad

Se han implementado diversas capas para asegurar la estabilidad y protección de los datos:
1.  **Validación de Datos**: Validación rigurosa de respuestas de la API mediante modelos de **Freezed** con nulabilidad controlada.
2.  **Manejo de Timeouts**: Configuración agresiva de tiempos de espera en **Dio** para evitar que la aplicación quede bloqueada ante fallas de red (Fail-Fast).
3.  **Persistencia Segura**: Uso de **SQLite** para datos locales (Favoritos), garantizando integridad referencial y aislamiento de datos.
4.  **Aislamiento de Lógica**: La lógica de negocio (Domain) está aislada de fallos en implementaciones de terceros o cambios en la API externa.
5.  **Detección de Conectividad**: Sistema de monitoreo constante de la red para informar al usuario instantáneamente sobre la pérdida de acceso a internet.

---

## 🛠️ Tecnologías Utilizadas

*   **Riverpod**: Gestión de estado reactiva y segura en tiempo de compilación.
*   **Dio**: Cliente HTTP robusto con soporte para interceptores y timeouts.
*   **Freezed & JSON Serializable**: Generación de código para inmutabilidad y serialización.
*   **Sqflite**: Base de datos local para la gestión de favoritos.
*   **Google Fonts**: Tipografía moderna (Poppins).
*   **SharedPreferences**: Persistencia de preferencias de usuario (Idioma y Tema).
*   **Flutter Hooks**: Simplificación del ciclo de vida de los widgets.

---

## ⚙️ Pipeline de Integración Continua (CI/CD)

Para garantizar la calidad del código, este proyecto incluye una pipeline automatizada mediante **GitHub Actions** que se ejecuta en cada `push` y `pull_request`:

1.  **Análisis Dinámico & Linting**: Verificación automática de reglas de estilo y buenas prácticas mediante `flutter analyze`.
2.  **Tests Automatizados**: Ejecución de la suite completa de pruebas unitarias y de repositorio.
3.  **Check de Formato**: Asegura que el código siga el estándar oficial de Dart.
4.  **Build Check**: Validación de que el proyecto compila correctamente para Android (APK) sin errores latentes.

---

## 🔥 Características Principales

1.  **Listado Infinito**: Carga paginada de Pokémon con skeleton loaders fluidos.
2.  **Detalle Extendido**: Información completa incluyendo tipos, estadísticas base, habilidades y descripciones localizadas.
3.  **Sistema de Favoritos**: Persistencia local con efectos visuales animados (pulsing hearts & sparkles).
4.  **I18N (Multi-idioma)**: Soporte completo para **Inglés** y **Español**, incluyendo datos dinámicos desde la API.
5.  **Temas Dinámicos**: Soporte completo para **Modo Claro** y **Modo Oscuro** (Blue Dark) con persistencia automática.
6.  **Offline Ready**: Notificación instantánea y estado de error personalizado (Magikarp state).
7.  **UX Táctil**: Experiencia enriquecida con vibraciones sutiles (Haptics) y micro-animaciones premium.

---

## 🚀 Cómo Empezar

Para correr el proyecto localmente, sigue estos pasos:

1.  **Clonar el repositorio**.
2.  Instalar dependencias:
    ```bash
    flutter pub get
    ```
3.  Generar archivos necesarios (Freezed/Riverpod):
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
4.  Generar archivos de localización:
    ```bash
    flutter gen-l10n
    ```
5.  Ejecutar el proyecto:
    ```bash
    flutter run
    ```

---
**Desarrollado en Flutter con ❤️ siguiendo las mejores prácticas de ingeniería de software.**
