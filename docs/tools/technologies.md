# Technologies and Tools

## Overview
This document specifies all technologies and tools used by the Mindful-AI team throughout the project lifecycle.

## Development Technologies

### Frontend Technologies

#### Core Technologies
- **HTML5** - Markup language for web pages
  - Version: HTML5
  - Purpose: Structure and content of web pages
  - Files: `*.html` in `/public` directory

- **CSS3** - Styling language
  - Version: CSS3
  - Purpose: Visual design and layout
  - Files: `/public/assets/styles/`
  - Features: Responsive design, animations, flexbox/grid

- **JavaScript** - Programming language
  - Version: ES6+ (ECMAScript 2015+)
  - Type: Vanilla JavaScript (no framework)
  - Purpose: Interactivity and dynamic behavior
  - Files: `/src/main.js`, `/public/assets/scripts/`

#### External Libraries
- **Font Awesome** - Icon library
  - Version: 4.7.0
  - CDN: MaxCDN
  - Purpose: Icons and symbols

### Build Tools

#### Vite
- **Version:** 5.1.6
- **Purpose:** Build tool and development server
- **Features:**
  - Fast HMR (Hot Module Replacement)
  - Optimized build process
  - ES modules support
  - Asset handling
- **Scripts:**
  - `npm run dev` - Development server
  - `npm run build` - Production build
  - `npm run preview` - Preview production build

#### Node.js & npm
- **Node.js:** Runtime environment
- **npm:** Package manager
- **Purpose:** Dependency management and script execution
- **Package Manager:** npm (included with Node.js)

### Code Quality Tools

#### Prettier
- **Version:** 3.3.1
- **Purpose:** Code formatting
- **Configuration:** `.prettierrc` or package.json
- **Features:**
  - Automatic code formatting
  - Consistent code style
  - Supports HTML, CSS, JavaScript
- **Usage:**
  ```bash
  npx prettier --write .
  ```

## Version Control Tools

### Git
- **Version:** 2.x+
- **Purpose:** Distributed version control
- **Workflow:** GitFlow (see [GitFlow Documentation](../git-workflow/gitflow.md))
- **Commands:**
  - `git add` - Stage changes
  - `git commit` - Commit changes
  - `git push` - Push to remote
  - `git pull` - Pull from remote
  - `git branch` - Branch management
  - `git merge` - Merge branches

### GitHub
- **Purpose:** Remote repository hosting and collaboration
- **Organization:** Mindful-AI-Upc
- **Repository:** Mindfull-IA
- **Features Used:**
  - Pull Requests
  - Code Reviews
  - Issues tracking
  - Branch protection
  - GitHub Actions (CI/CD)
  - Project boards

## Testing Tools

### Cucumber/Gherkin
- **Purpose:** Behavior-Driven Development (BDD) testing
- **File Format:** `.feature` files
- **Syntax:** Gherkin language
- **Location:** `/tests/features/`
- **Features:**
  - Human-readable test scenarios
  - Given-When-Then syntax
  - Acceptance criteria validation

### Browser Testing
- **Tools:** Modern web browsers
- **Browsers Supported:**
  - Chrome/Chromium
  - Firefox
  - Safari
  - Edge
- **Testing Types:**
  - Manual testing
  - Cross-browser compatibility
  - Responsive design testing

## Project Management Tools

### GitHub Projects
- **Purpose:** Agile project management
- **Features:**
  - Kanban boards
  - Product backlog management
  - Sprint planning
  - Issue tracking
  - Milestone tracking
- **Board Columns:**
  - Backlog
  - To Do
  - In Progress
  - In Review
  - Done

### GitHub Issues
- **Purpose:** Track tasks, bugs, and features
- **Labels:**
  - `feature` - New features
  - `bug` - Bug reports
  - `documentation` - Documentation updates
  - `enhancement` - Improvements
  - `priority-high` - High priority items
  - `priority-medium` - Medium priority items
  - `priority-low` - Low priority items
- **Milestones:** Group issues by release or sprint

## Documentation Tools

### Markdown
- **Purpose:** Documentation format
- **Files:** `*.md`
- **Tools:**
  - Any text editor
  - GitHub preview
  - Markdown editors (Typora, Mark Text, VS Code)
- **Features:**
  - Easy to read and write
  - Version control friendly
  - GitHub rendering

## Development Environment

### Code Editors
**Recommended:**
- **Visual Studio Code** - Primary recommendation
  - Extensions: Prettier, ESLint, GitLens, Live Server
- **WebStorm** - Alternative
- **Sublime Text** - Alternative
- **Vim/Neovim** - For terminal-based editing

### Operating Systems
- **Windows** 10/11
- **macOS** 10.15+
- **Linux** (Ubuntu, Debian, Fedora, etc.)

## Continuous Integration/Deployment

### GitHub Actions
- **Purpose:** Automated CI/CD pipelines
- **Workflows:**
  - Build verification
  - Automated testing
  - Code quality checks
  - Deployment automation
- **Configuration:** `.github/workflows/`

## Communication Tools

### Development Communication
- **GitHub Discussions** - Technical discussions
- **Pull Request Comments** - Code review discussions
- **Issue Comments** - Task-specific discussions

### Team Communication
- **Slack/Discord** - Real-time communication (if applicable)
- **Email** - Formal communication
- **Video Conferencing** - Sprint planning, retrospectives

## Deployment Tools

### GitHub Pages
- **Purpose:** Static site hosting
- **Configuration:** Repository settings
- **URL Pattern:** `username.github.io/repository-name`
- **Branch:** `main` or `gh-pages`

### Alternative Deployment Options
- **Vercel** - Modern hosting platform
- **Netlify** - Jamstack hosting
- **Traditional Hosting** - Apache/Nginx servers

## Monitoring and Analytics

### Web Analytics (Recommended)
- **Google Analytics** - User behavior tracking
- **Google Search Console** - SEO monitoring
- **Hotjar** - User experience insights

### Performance Monitoring
- **Lighthouse** - Performance auditing
- **WebPageTest** - Performance testing
- **Chrome DevTools** - Browser debugging

## Security Tools

### Dependency Scanning
- **npm audit** - Vulnerability scanning
  ```bash
  npm audit
  npm audit fix
  ```
- **Dependabot** - Automated dependency updates (GitHub)

### Code Security
- **GitHub Security Advisories** - Vulnerability alerts
- **Security Policy** - SECURITY.md file

## Asset Management

### Image Optimization
- **Tools:** TinyPNG, ImageOptim, Squoosh
- **Purpose:** Reduce file sizes
- **Location:** `/public/assets/images/`

### Font Management
- **Custom Fonts** - Stored in `/public/assets/styles/fonts/`
- **Web Fonts** - Font Awesome via CDN

## Development Workflow Tools

### Package Management
```bash
# Install dependencies
npm install

# Update dependencies
npm update

# Check for outdated packages
npm outdated
```

### Build Process
```bash
# Development mode
npm run dev

# Production build
npm run build

# Preview production build
npm run preview
```

## Tool Installation

### Prerequisites
1. **Node.js** (v16+)
   ```bash
   # Check version
   node --version
   npm --version
   ```

2. **Git**
   ```bash
   # Check version
   git --version
   ```

### Project Setup
```bash
# Clone repository
git clone https://github.com/Mindful-AI-Upc/Mindfull-IA.git

# Navigate to project
cd Mindfull-IA

# Install dependencies
npm install

# Run development server
npm run dev
```

## Tool Versions Summary

| Tool | Version | Purpose |
|------|---------|---------|
| Node.js | 16+ | Runtime |
| npm | 8+ | Package manager |
| Vite | 5.1.6 | Build tool |
| Prettier | 3.3.1 | Code formatting |
| Git | 2.x+ | Version control |
| HTML | 5 | Markup |
| CSS | 3 | Styling |
| JavaScript | ES6+ | Programming |
| Font Awesome | 4.7.0 | Icons |

## Related Documentation
- [Programming Conventions](../conventions/coding-standards.md)
- [GitFlow Workflow](../git-workflow/gitflow.md)
- [Agile Methodology](../agile/methodology.md)
