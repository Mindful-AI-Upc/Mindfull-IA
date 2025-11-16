# Repository Structure and Version Control

## Overview
This document specifies the individual Git version control repositories for all software products that are part of the Mindful-AI project scope.

## Product Repositories

### 1. Landing Page Repository
- **Repository Name**: Mindfull-IA
- **URL**: https://github.com/Mindful-AI-Upc/Mindfull-IA
- **Purpose**: Main landing page and marketing website for Mindful-AI
- **Technology**: HTML, CSS, JavaScript, Vite
- **Description**: Public-facing website that showcases the Mindful-AI platform, its features, services, and provides registration/login functionality

### 2. Testing Suite Repository
- **Repository Name**: Mindfull-IA-Testing
- **URL**: https://github.com/Mindful-AI-Upc/Mindfull-IA-Testing
- **Purpose**: Automated testing suite with Gherkin feature files
- **Technology**: Cucumber, Gherkin, Selenium
- **Description**: Contains all .feature files for BDD testing and automated test scenarios
- **Note**: Feature files are also maintained in the `/features` directory of this repository for integration testing

### 3. Mobile Application Repository
- **Repository Name**: Mindfull-IA-Mobile
- **URL**: https://github.com/Mindful-AI-Upc/Mindfull-IA-Mobile
- **Purpose**: Native mobile application for iOS and Android
- **Technology**: React Native / Flutter
- **Description**: Mobile app providing notifications, AI chat, and break management features

### 4. Web Platform Repository
- **Repository Name**: Mindfull-IA-Platform
- **URL**: https://github.com/Mindful-AI-Upc/Mindfull-IA-Platform
- **Purpose**: Web-based dashboard and control panel
- **Technology**: React / Vue.js, Node.js
- **Description**: Web platform with metrics dashboard, data export, and schedule configuration

### 5. Backend API Repository
- **Repository Name**: Mindfull-IA-API
- **URL**: https://github.com/Mindful-AI-Upc/Mindfull-IA-API
- **Purpose**: RESTful API and business logic
- **Technology**: Node.js/Express or Python/FastAPI
- **Description**: Backend services handling authentication, AI recommendations, and data processing

## Repository Features in Scope

### Landing Page (This Repository)
- ✅ Main homepage with hero section
- ✅ About us page (nosotros.html)
- ✅ Blog section
- ✅ FAQs page
- ✅ Reviews section
- ✅ Login and registration pages
- ✅ Responsive design
- ✅ Version control with Git
- ✅ GitFlow workflow implementation

### Testing Suite
- Feature files directory: `/features`
- Test scenarios for all user stories
- Acceptance criteria validation
- Integration test scenarios

## Version Control Strategy

All repositories follow these practices:
- Git for version control
- GitHub for remote hosting
- GitFlow workflow for branching strategy (see GITFLOW-WORKFLOW.md)
- Semantic versioning for releases
- Protected main/master branch
- Required pull request reviews before merging
- Continuous Integration/Continuous Deployment (CI/CD) pipelines

## Repository Access and Permissions

- **Public Repositories**: Landing Page
- **Private Repositories**: Backend API, internal tools
- **Team Access**: All team members have appropriate access levels
- **Branch Protection**: Main branches are protected with required reviews

## Collaboration Guidelines

1. All code changes must go through pull requests
2. At least one team member review required
3. All tests must pass before merging
4. Follow coding conventions (see CODING-CONVENTIONS.md)
5. Update documentation with significant changes
6. Link commits to issue tracker items
