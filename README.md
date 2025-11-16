# Mindful-AI Landing Page

> Tu asistente para el bienestar digital - Inspira. Conecta. Sana.

Página de inicio y marketing del proyecto Mindful-AI, una plataforma de inteligencia artificial diseñada para promover el bienestar digital y la salud mental.

## 📋 Tabla de Contenidos

- [Acerca del Proyecto](#acerca-del-proyecto)
- [Características](#características)
- [Tecnologías](#tecnologías)
- [Comenzando](#comenzando)
  - [Prerequisitos](#prerequisitos)
  - [Instalación](#instalación)
  - [Desarrollo](#desarrollo)
  - [Producción](#producción)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Documentación](#documentación)
- [Testing](#testing)
- [Workflow de Git](#workflow-de-git)
- [Contribuir](#contribuir)
- [Licencia](#licencia)

## 🎯 Acerca del Proyecto

Mindful-AI es una plataforma integral que utiliza inteligencia artificial para ayudar a las personas a mantener hábitos digitales saludables. Este repositorio contiene la landing page oficial del proyecto, que sirve como punto de entrada para nuevos usuarios y proporciona información sobre las características y servicios disponibles.

### Características Principales

- 🏠 **Página de Inicio Atractiva**: Hero section con llamadas a la acción claras
- 📱 **Diseño Responsive**: Optimizado para dispositivos móviles, tablets y escritorio
- 🎨 **Interfaz Moderna**: Diseño limpio y profesional con UX optimizada
- 📝 **Secciones Informativas**: 
  - Showcase de proyectos
  - Descripción de funciones y servicios
  - FAQs
  - Blog
  - Reseñas de usuarios
- 🔐 **Autenticación**: Páginas de login y registro
- 📧 **Newsletter**: Suscripción para recibir actualizaciones

## 🚀 Tecnologías

Este proyecto está construido con:

- **HTML5**: Estructura semántica
- **CSS3**: Estilos personalizados y diseño responsive
- **JavaScript (ES6+)**: Interactividad del lado del cliente
- **Vite**: Build tool y servidor de desarrollo rápido
- **Git**: Control de versiones
- **GitHub Pages**: Hosting (producción)

Para más detalles sobre el stack tecnológico completo, consulta [docs/TECH-STACK.md](docs/TECH-STACK.md).

## 🏁 Comenzando

### Prerequisitos

Asegúrate de tener instalado:

- **Node.js** (v18 o superior)
- **npm** (v9 o superior)
- **Git** (v2.40 o superior)

### Instalación

1. Clona el repositorio:
```bash
git clone https://github.com/Mindful-AI-Upc/Mindfull-IA.git
cd Mindfull-IA
```

2. Instala las dependencias:
```bash
npm install
```

### Desarrollo

Inicia el servidor de desarrollo:

```bash
npm run dev
```

El sitio estará disponible en `http://localhost:5173` (o el puerto que Vite asigne).

### Producción

Genera los archivos optimizados para producción:

```bash
npm run build
```

Los archivos compilados se generarán en el directorio `dist/`.

Para previsualizar la build de producción localmente:

```bash
npm run preview
```

## 📁 Estructura del Proyecto

```
Mindfull-IA/
├── public/                 # Archivos estáticos públicos
│   ├── assets/
│   │   ├── images/        # Imágenes del sitio
│   │   ├── scripts/       # Scripts JavaScript
│   │   └── styles/        # Hojas de estilo CSS
│   ├── index.html         # Página principal
│   ├── nosotros.html      # Página "Nosotros"
│   ├── blog.html          # Página del blog
│   ├── faqs.html          # Preguntas frecuentes
│   ├── reviews.html       # Reseñas
│   ├── login.html         # Página de login
│   └── register.html      # Página de registro
├── src/                    # Código fuente
│   └── main.js            # JavaScript principal
├── features/               # Feature files para testing (BDD)
│   ├── authentication/    # Tests de autenticación
│   ├── landing-page/      # Tests de landing page
│   └── support/           # Archivos de soporte para tests
├── docs/                   # Documentación del proyecto
│   ├── REPOSITORY-STRUCTURE.md  # Estructura de repositorios
│   ├── GITFLOW-WORKFLOW.md      # Workflow de GitFlow
│   ├── TECH-STACK.md            # Stack tecnológico
│   ├── CODING-CONVENTIONS.md    # Convenciones de código
│   └── AGILE-MANAGEMENT.md      # Gestión ágil
├── package.json           # Dependencias y scripts
├── .gitignore            # Archivos ignorados por Git
└── README.md             # Este archivo
```

## 📚 Documentación

La documentación completa del proyecto está disponible en el directorio `/docs`:

1. **[Estructura de Repositorios](docs/REPOSITORY-STRUCTURE.md)**: Especificación de todos los repositorios del proyecto
2. **[Workflow GitFlow](docs/GITFLOW-WORKFLOW.md)**: Estrategia de branching y colaboración
3. **[Stack Tecnológico](docs/TECH-STACK.md)**: Tecnologías y herramientas utilizadas
4. **[Convenciones de Código](docs/CODING-CONVENTIONS.md)**: Estándares de programación
5. **[Gestión Ágil](docs/AGILE-MANAGEMENT.md)**: Herramientas y procesos agile

## 🧪 Testing

Este proyecto incluye una suite de pruebas BDD (Behavior-Driven Development) usando Gherkin/Cucumber.

### Feature Files

Los archivos `.feature` se encuentran en el directorio `/features` y cubren:

- ✅ Autenticación (login y registro)
- ✅ Navegación de la landing page
- ✅ Diseño responsive
- ⏳ Funcionalidad del dashboard (planificado)
- ⏳ Chat con IA (planificado)

Para ejecutar los tests:

```bash
# Instalar dependencias de testing
npm install --save-dev @cucumber/cucumber selenium-webdriver

# Ejecutar todos los tests
npx cucumber-js

# Ejecutar tests específicos
npx cucumber-js features/authentication/login.feature
```

Para más información, consulta [features/support/README.md](features/support/README.md).

## 🔄 Workflow de Git

Este proyecto sigue el modelo **GitFlow** para el control de versiones:

### Ramas Principales

- `main`: Código en producción
- `develop`: Rama de integración para desarrollo

### Ramas de Soporte

- `feature/*`: Nuevas características
- `release/*`: Preparación de releases
- `hotfix/*`: Correcciones urgentes en producción

### Convención de Commits

Seguimos [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <subject>

feat(auth): add login functionality
fix(ui): resolve button alignment issue
docs(readme): update installation instructions
```

Para más detalles, consulta [docs/GITFLOW-WORKFLOW.md](docs/GITFLOW-WORKFLOW.md).

## 🤝 Contribuir

Las contribuciones son bienvenidas. Por favor sigue estos pasos:

1. **Fork** el proyecto
2. Crea una **feature branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit** tus cambios (`git commit -m 'feat: add some AmazingFeature'`)
4. **Push** a la rama (`git push origin feature/AmazingFeature`)
5. Abre un **Pull Request**

### Guías de Contribución

- Sigue las [convenciones de código](docs/CODING-CONVENTIONS.md)
- Escribe tests para nuevas funcionalidades
- Actualiza la documentación según sea necesario
- Asegúrate de que todos los tests pasen
- Solicita revisión de código antes de hacer merge

## 🌐 Repositorios Relacionados

Este proyecto es parte del ecosistema Mindful-AI:

- **Landing Page** (este repo): https://github.com/Mindful-AI-Upc/Mindfull-IA
- **Testing Suite**: https://github.com/Mindful-AI-Upc/Mindfull-IA-Testing
- **Mobile App**: https://github.com/Mindful-AI-Upc/Mindfull-IA-Mobile
- **Web Platform**: https://github.com/Mindful-AI-Upc/Mindfull-IA-Platform
- **Backend API**: https://github.com/Mindful-AI-Upc/Mindfull-IA-API

## 📊 Gestión de Proyecto

Utilizamos **GitHub Projects** para la gestión ágil del proyecto:

- **Product Backlog**: Todas las historias de usuario priorizadas
- **Sprint Backlog**: Tareas del sprint actual
- **Kanban Board**: Visualización del flujo de trabajo
- **Issues**: Seguimiento de bugs, features y tareas

Para más información sobre nuestro proceso ágil, consulta [docs/AGILE-MANAGEMENT.md](docs/AGILE-MANAGEMENT.md).

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## 👥 Equipo

Desarrollado por el equipo de Mindful-AI UPC.

## 📞 Contacto

- **Website**: [Mindful-AI Landing Page](https://mindful-ai-upc.github.io/Mindfull-IA/)
- **GitHub**: [@Mindful-AI-Upc](https://github.com/Mindful-AI-Upc)
- **Email**: contacto@mindful-ai.com

---

**Hecho con ❤️ por el equipo de Mindful-AI**
