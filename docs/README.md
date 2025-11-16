# Documentación Mindful-AI

Bienvenido a la documentación completa del proyecto Mindful-AI. Esta documentación cubre todos los aspectos del desarrollo, desde control de versiones hasta metodologías ágiles.

## 📚 Índice de Documentación

### 1. Control de Versiones y Git

#### [Especificación de Repositorios](git-workflow/repositories.md)
Especificación completa de los repositorios Git utilizados para el control de versiones de todos los productos de software:
- Repositorio de Landing Page
- Repositorio de Testing Suite (.feature files)
- Estructura de directorios
- Mejores prácticas de Git

#### [GitFlow Workflow](git-workflow/gitflow.md)
Workflow completo de GitFlow para branching y colaboración:
- Estrategia de ramas (main, develop, feature, release, hotfix)
- Procesos de desarrollo de features
- Procesos de release
- Procesos de hotfix
- Convenciones de commits
- Convenciones de nombres de ramas
- Versionado semántico

### 2. Tecnologías y Herramientas

#### [Tecnologías y Herramientas](tools/technologies.md)
Especificación completa del stack tecnológico utilizado en el ciclo de vida del proyecto:
- Tecnologías frontend (HTML5, CSS3, JavaScript ES6+)
- Herramientas de build (Vite 5.1.6)
- Herramientas de calidad de código (Prettier)
- Herramientas de testing (Cucumber/Gherkin)
- Herramientas de gestión de proyecto (GitHub Projects, Issues)
- Herramientas de CI/CD (GitHub Actions)
- Herramientas de despliegue (GitHub Pages)

### 3. Convenciones de Programación

#### [Estándares de Código](conventions/coding-standards.md)
Convenciones de programación y scripting para el proyecto:
- Convenciones HTML
- Convenciones CSS (BEM, organización, responsive design)
- Convenciones JavaScript (ES6+, naming, estructura)
- Convenciones de nombres de archivos
- Estructura de directorios
- Mejores prácticas
- Code review checklist
- Configuración de Prettier

### 4. Metodología Ágil

#### [Metodología Ágil y Scrum](agile/methodology.md)
Evidencia del uso de herramientas de soporte para desarrollo ágil:
- Framework Scrum
- Roles del equipo
- GitHub Projects para gestión de backlogs
- Product Backlog management
- Sprint Backlog management
- GitHub Issues como work items
- Sprint planning
- Daily stand-ups
- Sprint reviews
- Sprint retrospectives
- Definition of Ready (DoR)
- Definition of Done (DoD)
- Métricas y reporting

### 5. Testing

#### [Feature Files](../tests/features/README.md)
Suite de pruebas BDD con archivos .feature en formato Gherkin:
- Guía de testing
- Sintaxis Gherkin
- Ejecución de pruebas

**Archivos de Prueba Disponibles:**
- `landing-page-navigation.feature` - Navegación de la landing page
- `user-registration.feature` - Registro de usuarios
- `user-authentication.feature` - Autenticación de usuarios
- `responsive-design.feature` - Diseño responsivo
- `blog-functionality.feature` - Funcionalidad del blog
- `faq-page.feature` - Página de FAQs

## 🎯 Guías Rápidas

### Para Nuevos Desarrolladores

1. **Comenzar:**
   - Lee el [README principal](../README.md)
   - Revisa [Estándares de Código](conventions/coding-standards.md)
   - Familiarízate con [GitFlow](git-workflow/gitflow.md)

2. **Configuración:**
   - Clona el repositorio
   - Instala dependencias
   - Configura tu editor con Prettier
   - Crea tu primera rama feature

3. **Desarrollo:**
   - Sigue las [convenciones de código](conventions/coding-standards.md)
   - Usa [GitFlow](git-workflow/gitflow.md) para branching
   - Escribe commits siguiendo [Conventional Commits](git-workflow/gitflow.md#commit-message-convention)

### Para Product Owners

1. **Gestión de Backlog:**
   - Lee [Metodología Ágil](agile/methodology.md)
   - Usa GitHub Projects para backlogs
   - Crea y prioriza GitHub Issues

2. **Sprint Planning:**
   - Define sprint goals
   - Selecciona items del product backlog
   - Estima con el equipo

### Para Scrum Masters

1. **Facilitación:**
   - Organiza ceremonias Scrum
   - Gestiona [GitHub Projects](agile/methodology.md#github-projects-for-agile-management)
   - Remueve impedimentos

2. **Métricas:**
   - Trackea velocity
   - Genera burndown charts
   - Facilita retrospectivas

## 🔍 Búsqueda Rápida por Tema

### Git y Control de Versiones
- [Repositorios](git-workflow/repositories.md)
- [GitFlow Workflow](git-workflow/gitflow.md)
- [Estrategia de Branching](git-workflow/gitflow.md#branch-strategy)
- [Commit Messages](git-workflow/gitflow.md#commit-message-convention)

### Desarrollo
- [HTML Conventions](conventions/coding-standards.md#html-conventions)
- [CSS Conventions](conventions/coding-standards.md#css-conventions)
- [JavaScript Conventions](conventions/coding-standards.md#javascript-conventions)
- [File Naming](conventions/coding-standards.md#file-naming-conventions)

### Herramientas
- [Stack Tecnológico](tools/technologies.md)
- [Build Tools](tools/technologies.md#build-tools)
- [Testing Tools](tools/technologies.md#testing-tools)
- [Project Management](tools/technologies.md#project-management-tools)

### Agile y Gestión
- [Scrum Framework](agile/methodology.md#scrum-methodology)
- [GitHub Projects](agile/methodology.md#github-projects-for-agile-management)
- [Product Backlog](agile/methodology.md#product-backlog-management)
- [Sprint Planning](agile/methodology.md#sprint-planning)
- [Definition of Done](agile/methodology.md#definition-of-done-dod)

### Testing
- [Feature Files](../tests/features/README.md)
- [Gherkin Syntax](../tests/features/README.md#gherkin-syntax)
- [Test Scenarios](../tests/features/)

## 📋 Cumplimiento de Requisitos

Esta documentación cumple con los siguientes requisitos especificados:

✅ **Repositorios Git:** Especificación completa de repositorios individuales para todos los productos de software, incluyendo Landing Page y .feature files para Testing Suite.

✅ **GitFlow Workflow:** Aplicación documentada de GitFlow como workflow de branching y colaboración en Code Repository.

✅ **Tecnologías y Herramientas:** Especificación detallada de todas las tecnologías y herramientas utilizadas en el ciclo de vida del proyecto.

✅ **Convenciones de Programación:** Documentación completa de convenciones de programación y scripting (HTML, CSS, JavaScript).

✅ **Herramientas Agile:** Evidencia del uso de GitHub Projects e Issues como herramientas de soporte para desarrollo ágil, gestión de product backlog y sprint backlog.

✅ **Artefactos Completos:** Documentación exhaustiva para todos los artefactos y secciones relacionadas.

## 🔄 Actualización de Documentación

Esta documentación es un documento vivo y debe actualizarse cuando:
- Se agregan nuevas tecnologías o herramientas
- Se cambian procesos o workflows
- Se actualizan convenciones de código
- Se mejoran prácticas ágiles

### Cómo Actualizar
1. Crear feature branch: `feature/update-docs`
2. Hacer cambios en archivos `.md` relevantes
3. Seguir [GitFlow process](git-workflow/gitflow.md)
4. Crear Pull Request
5. Obtener revisión del equipo

## 📞 Soporte

Si tienes preguntas sobre la documentación:
1. Revisa los archivos relevantes en este directorio
2. Busca en GitHub Issues existentes
3. Crea un nuevo issue con label `documentation`
4. Contacta al equipo

## 🔗 Enlaces Útiles

- [README Principal](../README.md)
- [GitHub Repository](https://github.com/Mindful-AI-Upc/Mindfull-IA)
- [GitHub Projects](https://github.com/orgs/Mindful-AI-Upc/projects)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Semantic Versioning](https://semver.org/)
- [GitFlow Original Article](https://nvie.com/posts/a-successful-git-branching-model/)

---

**Última Actualización:** 2025-11-16
**Versión:** 1.0.0
**Mantenido por:** Equipo Mindful-AI