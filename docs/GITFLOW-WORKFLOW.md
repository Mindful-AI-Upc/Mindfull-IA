# GitFlow Workflow - Code Repository Branching and Collaboration

## Overview
This document specifies the GitFlow workflow implementation for the Mindful-AI project. GitFlow is a branching model designed around project releases, providing a robust framework for managing larger projects.

## Branch Structure

### Main Branches

#### 1. `main` (or `master`)
- **Purpose**: Production-ready code
- **Lifetime**: Permanent
- **Protection**: Protected, requires pull request reviews
- **Deployment**: Automatically deploys to production
- **Merges from**: `release/*` and `hotfix/*` branches only

#### 2. `develop`
- **Purpose**: Integration branch for features
- **Lifetime**: Permanent
- **Protection**: Protected, requires pull request reviews
- **Deployment**: Automatically deploys to development/staging environment
- **Merges from**: `feature/*`, `release/*`, and `hotfix/*` branches

### Supporting Branches

#### 3. Feature Branches (`feature/*`)
- **Naming Convention**: `feature/short-description` or `feature/ISSUE-123-short-description`
- **Purpose**: Develop new features for upcoming releases
- **Branches from**: `develop`
- **Merges into**: `develop`
- **Lifetime**: Temporary (deleted after merge)
- **Examples**:
  - `feature/login-functionality`
  - `feature/user-registration`
  - `feature/blog-section`

#### 4. Release Branches (`release/*`)
- **Naming Convention**: `release/v1.0.0` (using semantic versioning)
- **Purpose**: Prepare for production release
- **Branches from**: `develop`
- **Merges into**: `main` AND `develop`
- **Lifetime**: Temporary (deleted after merge)
- **Activities**: Bug fixes, documentation updates, version bumping
- **Examples**:
  - `release/v1.0.0`
  - `release/v1.1.0`

#### 5. Hotfix Branches (`hotfix/*`)
- **Naming Convention**: `hotfix/v1.0.1-critical-bug`
- **Purpose**: Quick fixes for production issues
- **Branches from**: `main`
- **Merges into**: `main` AND `develop`
- **Lifetime**: Temporary (deleted after merge)
- **Examples**:
  - `hotfix/v1.0.1-login-error`
  - `hotfix/v1.0.2-security-patch`

## Workflow Process

### 1. Feature Development

```bash
# Start a new feature
git checkout develop
git pull origin develop
git checkout -b feature/new-feature

# Work on feature
git add .
git commit -m "feat: add new feature"

# Push to remote
git push origin feature/new-feature

# Create Pull Request to develop
# After review and approval, merge to develop
# Delete feature branch
```

### 2. Release Preparation

```bash
# Create release branch
git checkout develop
git pull origin develop
git checkout -b release/v1.0.0

# Bump version, update changelog, fix bugs
git commit -m "chore: prepare release v1.0.0"

# Push to remote
git push origin release/v1.0.0

# Create PR to main
# After testing, merge to main
git checkout main
git merge release/v1.0.0
git tag -a v1.0.0 -m "Release version 1.0.0"

# Also merge back to develop
git checkout develop
git merge release/v1.0.0

# Delete release branch
```

### 3. Hotfix Process

```bash
# Create hotfix branch
git checkout main
git pull origin main
git checkout -b hotfix/v1.0.1-critical-bug

# Fix the bug
git commit -m "fix: resolve critical bug"

# Push to remote
git push origin hotfix/v1.0.1-critical-bug

# Merge to main
git checkout main
git merge hotfix/v1.0.1-critical-bug
git tag -a v1.0.1 -m "Hotfix version 1.0.1"

# Merge to develop
git checkout develop
git merge hotfix/v1.0.1-critical-bug

# Delete hotfix branch
```

## Commit Message Convention

We follow the Conventional Commits specification:

### Format
```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types
- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, missing semicolons, etc.)
- **refactor**: Code refactoring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks

### Examples
```
feat(auth): add login functionality
fix(ui): resolve button alignment issue
docs(readme): update installation instructions
test(api): add unit tests for user service
```

## Pull Request Guidelines

### Creating a Pull Request

1. **Title**: Clear and descriptive
   - Good: "feat: Add user registration form"
   - Bad: "Update files"

2. **Description**: Include:
   - What changes were made
   - Why the changes were necessary
   - How to test the changes
   - Related issue numbers

3. **Reviewers**: Assign at least one team member

4. **Labels**: Add appropriate labels (enhancement, bug, documentation, etc.)

### Review Process

1. At least one approval required
2. All CI/CD checks must pass
3. No merge conflicts
4. Code follows conventions (see CODING-CONVENTIONS.md)
5. Tests are included for new features
6. Documentation is updated if needed

## Branch Protection Rules

### `main` branch
- Require pull request reviews before merging (minimum 1)
- Require status checks to pass
- Require branches to be up to date before merging
- Include administrators in restrictions

### `develop` branch
- Require pull request reviews before merging (minimum 1)
- Require status checks to pass
- Require branches to be up to date before merging

## Versioning Strategy

We use **Semantic Versioning** (SemVer): `MAJOR.MINOR.PATCH`

- **MAJOR**: Incompatible API changes
- **MINOR**: New functionality in a backward-compatible manner
- **PATCH**: Backward-compatible bug fixes

### Examples
- `1.0.0` - Initial release
- `1.1.0` - Added new features
- `1.1.1` - Bug fixes
- `2.0.0` - Breaking changes

## Best Practices

1. **Keep branches up to date**: Regularly merge develop into your feature branches
2. **Small, focused commits**: Each commit should represent one logical change
3. **Write descriptive commit messages**: Follow the commit convention
4. **Review your own code**: Before creating a PR, review your changes
5. **Respond to feedback**: Address review comments promptly
6. **Delete merged branches**: Keep the repository clean
7. **Tag releases**: Always tag release commits
8. **Update documentation**: Keep docs in sync with code changes

## Team Collaboration

### Communication
- Discuss major changes before implementation
- Use PR comments for code discussions
- Link commits to issue tracker items
- Update team on breaking changes

### Code Reviews
- Be respectful and constructive
- Focus on code quality and best practices
- Check for security vulnerabilities
- Verify tests are adequate
- Ensure documentation is updated

## Continuous Integration/Deployment

### CI Pipeline (on PR)
1. Run linters
2. Run tests
3. Build project
4. Check code coverage

### CD Pipeline (on merge to main)
1. Build production bundle
2. Run security scans
3. Deploy to production
4. Create release notes
5. Notify team

## Emergency Procedures

### Rolling Back a Release
```bash
git checkout main
git revert <commit-hash>
git push origin main
```

### Fixing a Broken Build
1. Create hotfix branch immediately
2. Fix the issue
3. Fast-track the PR review
4. Deploy as soon as possible

## References

- [GitFlow Original Article](https://nvie.com/posts/a-successful-git-branching-model/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Semantic Versioning](https://semver.org/)
