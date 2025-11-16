# Mindful-AI

> Tu asistente para el bienestar digital - Inspira. Conecta. Sana.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Node.js Version](https://img.shields.io/badge/node-%3E%3D16.0.0-brightgreen.svg)](https://nodejs.org/)
[![Vite](https://img.shields.io/badge/vite-5.1.6-646CFF.svg)](https://vitejs.dev/)

## 📋 Descripción

Mindful-AI es una plataforma web de asistencia para el bienestar mental que utiliza inteligencia artificial para proporcionar apoyo psicológico digital. El proyecto incluye una landing page informativa, sistema de autenticación de usuarios, blog educativo, y recursos sobre salud mental.

## 🚀 Características

- **Landing Page Responsiva** - Diseño adaptativo para todos los dispositivos
- **Sistema de Autenticación** - Registro e inicio de sesión de usuarios
- **Blog de Salud Mental** - Artículos y recursos educativos
- **Sección de FAQs** - Preguntas frecuentes sobre el servicio
- **Reseñas de Usuarios** - Testimonios y experiencias
- **Diseño Moderno** - Interfaz limpia y profesional

## 🛠️ Tecnologías

### Frontend
- **HTML5** - Estructura y contenido
- **CSS3** - Estilos y diseño responsivo
- **JavaScript (ES6+)** - Interactividad y lógica
- **Font Awesome 4.7.0** - Iconografía

### Herramientas de Desarrollo
- **Vite 5.1.6** - Build tool y servidor de desarrollo
- **Prettier 3.3.1** - Formateo de código
- **Node.js 16+** - Entorno de ejecución
- **npm** - Gestor de paquetes

### Control de Versiones
- **Git** - Sistema de control de versiones
- **GitHub** - Repositorio remoto y colaboración
- **GitFlow** - Workflow de branching

### Testing
- **Cucumber/Gherkin** - Pruebas BDD (Behavior-Driven Development)
- **Feature Files** - Escenarios de prueba en `/tests/features/`

## 📦 Instalación

### Prerrequisitos

- Node.js 16 o superior
- npm 8 o superior
- Git

### Pasos de Instalación

```bash
# Clonar el repositorio
git clone https://github.com/Mindful-AI-Upc/Mindfull-IA.git

# Navegar al directorio del proyecto
cd Mindfull-IA

# Instalar dependencias
npm install

# Ejecutar servidor de desarrollo
npm run dev
```

El servidor de desarrollo se iniciará en `http://localhost:5173` (o el puerto que Vite asigne).

## 🎯 Scripts Disponibles

```bash
# Servidor de desarrollo con HMR (Hot Module Replacement)
npm run dev

# Build para producción
npm run build

# Preview del build de producción
npm run preview

# Formatear código con Prettier
npx prettier --write .

# Verificar formato de código
npx prettier --check .
```

## 📁 Estructura del Proyecto

```
Mindfull-IA/
├── .git/                       # Control de versiones Git
├── .gitignore                  # Archivos ignorados por Git
├── README.md                   # Este archivo
├── package.json                # Dependencias y scripts
├── package-lock.json           # Lock file de dependencias
├── public/                     # Archivos estáticos públicos
│   ├── index.html              # Página principal
│   ├── login.html              # Página de inicio de sesión
│   ├── register.html           # Página de registro
│   ├── blog.html               # Página del blog
│   ├── faqs.html               # Página de preguntas frecuentes
│   ├── nosotros.html           # Página sobre nosotros
│   ├── reviews.html            # Página de reseñas
│   └── assets/                 # Recursos estáticos
│       ├── images/             # Imágenes
│       ├── styles/             # Hojas de estilo CSS
│       │   └── fonts/          # Fuentes personalizadas
│       └── scripts/            # Scripts JavaScript
├── src/                        # Código fuente
│   └── main.js                 # Punto de entrada JavaScript
├── docs/                       # Documentación del proyecto
│   ├── git-workflow/           # Documentación de Git y GitFlow
│   │   ├── repositories.md     # Especificación de repositorios
│   │   └── gitflow.md          # Workflow GitFlow
│   ├── conventions/            # Convenciones de programación
│   │   └── coding-standards.md # Estándares de código
│   ├── tools/                  # Herramientas y tecnologías
│   │   └── technologies.md     # Especificación de tecnologías
│   └── agile/                  # Metodología ágil
│       └── methodology.md      # Gestión ágil con GitHub Projects
└── tests/                      # Suite de pruebas
    └── features/               # Archivos .feature de Gherkin
        ├── README.md           # Guía de testing
        ├── landing-page-navigation.feature
        ├── user-registration.feature
        ├── user-authentication.feature
        ├── responsive-design.feature
        ├── blog-functionality.feature
        └── faq-page.feature
```

## 📖 Documentación

La documentación completa del proyecto se encuentra en el directorio `/docs/`:

### Git y Control de Versiones
- [**Repositorios**](docs/git-workflow/repositories.md) - Especificación de repositorios Git
- [**GitFlow Workflow**](docs/git-workflow/gitflow.md) - Branching strategy y colaboración

### Desarrollo
- [**Estándares de Código**](docs/conventions/coding-standards.md) - Convenciones de programación
- [**Tecnologías y Herramientas**](docs/tools/technologies.md) - Stack tecnológico completo

### Gestión del Proyecto
- [**Metodología Ágil**](docs/agile/methodology.md) - Scrum, GitHub Projects, y gestión de backlogs

### Testing
- [**Feature Files**](tests/features/README.md) - Guía de pruebas BDD con Gherkin

## 🔄 Workflow de Desarrollo (GitFlow)

El proyecto utiliza **GitFlow** como workflow de branching:

### Ramas Principales
- **`main`** - Código en producción
- **`develop`** - Rama de integración

### Ramas de Soporte
- **`feature/*`** - Nuevas funcionalidades
- **`release/*`** - Preparación de releases
- **`hotfix/*`** - Fixes urgentes para producción

### Flujo de Trabajo

```bash
# Crear rama de feature
git checkout develop
git checkout -b feature/mi-funcionalidad

# Desarrollar y hacer commits
git add .
git commit -m "feat: agregar nueva funcionalidad"

# Hacer push y crear Pull Request
git push origin feature/mi-funcionalidad
# Crear PR en GitHub: feature/mi-funcionalidad -> develop
```

Ver [GitFlow Documentation](docs/git-workflow/gitflow.md) para más detalles.

## 📝 Convenciones de Commits

Seguimos la especificación [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Tipos de Commits
- **feat:** Nueva funcionalidad
- **fix:** Corrección de bugs
- **docs:** Cambios en documentación
- **style:** Cambios de formato (no afectan la lógica)
- **refactor:** Refactorización de código
- **test:** Agregar o actualizar tests
- **chore:** Tareas de mantenimiento

### Ejemplos
```bash
git commit -m "feat(auth): implementar login de usuario"
git commit -m "fix(ui): corregir alineación del header en mobile"
git commit -m "docs(readme): actualizar instrucciones de instalación"
```

## 🧪 Testing

El proyecto incluye pruebas de comportamiento (BDD) usando Gherkin:

```bash
# Los archivos .feature están en /tests/features/
# Ejecutar con Cucumber (configuración pendiente)
npx cucumber-js tests/features/
```

Ver [Testing Documentation](tests/features/README.md) para más información.

## 🤝 Contribuir

### Proceso de Contribución

1. **Fork del repositorio**
2. **Crear rama de feature** (`git checkout -b feature/AmazingFeature`)
3. **Commit cambios** (`git commit -m 'feat: Add some AmazingFeature'`)
4. **Push a la rama** (`git push origin feature/AmazingFeature`)
5. **Abrir Pull Request**

### Lineamientos

- Seguir los [estándares de código](docs/conventions/coding-standards.md)
- Escribir commits descriptivos siguiendo [Conventional Commits](https://www.conventionalcommits.org/)
- Actualizar documentación si es necesario
- Asegurar que el código esté formateado con Prettier
- Agregar tests para nuevas funcionalidades

## 📊 Gestión del Proyecto

El proyecto utiliza **GitHub Projects** para gestión ágil:

- **Product Backlog** - Todas las funcionalidades y requisitos
- **Sprint Backlog** - Trabajo del sprint actual
- **GitHub Issues** - Tracking de tareas, bugs y features
- **Milestones** - Sprints y releases

Ver [Agile Methodology Documentation](docs/agile/methodology.md) para más detalles.

## 🔐 Seguridad

Para reportar vulnerabilidades de seguridad, por favor contacta al equipo directamente en lugar de abrir un issue público.

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 👥 Equipo

**Mindful-AI UPC Team**
- Organización: [Mindful-AI-Upc](https://github.com/Mindful-AI-Upc)
- Repositorio: [Mindfull-IA](https://github.com/Mindful-AI-Upc/Mindfull-IA)

## 📞 Contacto

Para más información sobre Mindful-AI:
- **Website:** [Visitar sitio](#)
- **Email:** info@mindful-ai.com
- **GitHub:** [Mindful-AI-Upc](https://github.com/Mindful-AI-Upc)

## 🙏 Agradecimientos

- Font Awesome por los iconos
- Vite por el excelente build tool
- La comunidad de código abierto

---

**Hecho con ❤️ por el equipo de Mindful-AI**
