# Git Repositories Specification

## Overview
This document specifies the Git repositories used for version control of all software products within the Mindful-AI project scope.

## Repositories

### 1. Landing Page Repository
**Repository Name:** `Mindfull-IA`
**URL:** https://github.com/Mindful-AI-Upc/Mindfull-IA
**Purpose:** Main landing page and web application for Mindful-AI platform

**Contents:**
- HTML/CSS/JavaScript for the landing page
- Static assets (images, fonts, styles)
- Public-facing web content
- Vite build configuration
- Documentation

**Technologies:**
- Vite 5.1.6 (Build tool)
- Vanilla JavaScript
- HTML5/CSS3
- Prettier 3.3.1 (Code formatting)

### 2. Testing Suite Repository
**Repository Name:** `Mindfull-IA` (integrated)
**Location:** `/tests/features/`
**Purpose:** Behavioral testing using Gherkin syntax

**Contents:**
- `.feature` files for acceptance testing
- Test scenarios in Gherkin format
- Test documentation

**Testing Framework:**
- Cucumber/Gherkin syntax for BDD (Behavior-Driven Development)

## Repository Structure

```
Mindfull-IA/
├── .git/                  # Git version control
├── .gitignore             # Git ignore rules
├── README.md              # Project overview
├── package.json           # Dependencies and scripts
├── package-lock.json      # Locked dependencies
├── public/                # Static files and HTML pages
│   ├── index.html         # Main landing page
│   ├── assets/            # Static assets
│   │   ├── images/        # Image files
│   │   ├── styles/        # CSS stylesheets
│   │   └── scripts/       # JavaScript files
│   └── *.html             # Other HTML pages
├── src/                   # Source code
│   └── main.js            # Main JavaScript entry point
├── docs/                  # Documentation
│   ├── git-workflow/      # Git workflow documentation
│   ├── conventions/       # Coding conventions
│   ├── tools/             # Tools and technologies
│   └── agile/             # Agile methodology
└── tests/                 # Test suite
    └── features/          # Gherkin feature files
```

## Version Control Best Practices

1. **Commit Messages:** Use clear, descriptive commit messages
2. **Branch Naming:** Follow GitFlow naming conventions (see gitflow.md)
3. **Pull Requests:** All changes must go through pull request review
4. **Code Reviews:** At least one approval required before merging
5. **CI/CD:** Automated checks run on all pull requests

## Repository Access

- **Public Repository:** Yes
- **Branch Protection:** Enabled on `main` and `develop` branches
- **Required Reviews:** 1 reviewer minimum
- **Status Checks:** Must pass before merging

## Backup and Recovery

- **GitHub Backups:** Automatic GitHub backups
- **Local Clones:** Team members maintain local clones
- **Release Tags:** Important releases are tagged

## Related Documents
- [GitFlow Workflow](./gitflow.md)
- [Branch Strategy](./gitflow.md#branch-strategy)
- [Collaboration Guidelines](./gitflow.md#collaboration)
