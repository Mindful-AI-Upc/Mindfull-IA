# GitFlow Workflow

## Overview
This document describes the GitFlow branching model used for the Mindful-AI project. GitFlow is a robust workflow for managing feature development, releases, and hotfixes.

## Branch Strategy

### Main Branches

#### 1. `main` Branch
- **Purpose:** Production-ready code
- **Protection:** Fully protected, no direct commits
- **Merges From:** `release/*` and `hotfix/*` branches only
- **Lifetime:** Permanent
- **Tagging:** All merges to main are tagged with version numbers

#### 2. `develop` Branch
- **Purpose:** Integration branch for features
- **Protection:** Protected, requires pull request
- **Merges From:** `feature/*`, `release/*`, and `hotfix/*` branches
- **Merges To:** `release/*` branches
- **Lifetime:** Permanent

### Supporting Branches

#### 3. `feature/*` Branches
- **Purpose:** Develop new features
- **Naming Convention:** `feature/<feature-name>`
- **Examples:** 
  - `feature/user-authentication`
  - `feature/blog-section`
  - `feature/faq-page`
- **Created From:** `develop`
- **Merged Into:** `develop`
- **Lifetime:** Temporary (deleted after merge)
- **Pull Request Required:** Yes

#### 4. `release/*` Branches
- **Purpose:** Prepare for production release
- **Naming Convention:** `release/<version>`
- **Examples:**
  - `release/1.0.0`
  - `release/1.1.0`
- **Created From:** `develop`
- **Merged Into:** `main` and `develop`
- **Lifetime:** Temporary (deleted after merge)
- **Activities:** Bug fixes, documentation updates, version bumping

#### 5. `hotfix/*` Branches
- **Purpose:** Quick fixes for production issues
- **Naming Convention:** `hotfix/<version>`
- **Examples:**
  - `hotfix/1.0.1`
  - `hotfix/1.1.1`
- **Created From:** `main`
- **Merged Into:** `main` and `develop`
- **Lifetime:** Temporary (deleted after merge)
- **Priority:** High (production issues)

## Workflow Processes

### Feature Development Workflow

1. **Create Feature Branch**
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b feature/my-feature
   ```

2. **Develop Feature**
   ```bash
   # Make changes
   git add .
   git commit -m "feat: add user authentication"
   ```

3. **Keep Updated**
   ```bash
   git checkout develop
   git pull origin develop
   git checkout feature/my-feature
   git merge develop
   ```

4. **Push and Create Pull Request**
   ```bash
   git push origin feature/my-feature
   # Create pull request on GitHub: feature/my-feature -> develop
   ```

5. **Code Review and Merge**
   - Request review from team members
   - Address review comments
   - Merge when approved
   - Delete feature branch

### Release Workflow

1. **Create Release Branch**
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b release/1.0.0
   ```

2. **Prepare Release**
   - Update version numbers
   - Update CHANGELOG
   - Fix minor bugs
   - Update documentation

3. **Merge to Main**
   ```bash
   git checkout main
   git merge release/1.0.0
   git tag -a v1.0.0 -m "Release version 1.0.0"
   git push origin main --tags
   ```

4. **Merge Back to Develop**
   ```bash
   git checkout develop
   git merge release/1.0.0
   git push origin develop
   ```

5. **Delete Release Branch**
   ```bash
   git branch -d release/1.0.0
   ```

### Hotfix Workflow

1. **Create Hotfix Branch**
   ```bash
   git checkout main
   git pull origin main
   git checkout -b hotfix/1.0.1
   ```

2. **Fix Issue**
   ```bash
   # Make critical fixes
   git add .
   git commit -m "fix: critical security patch"
   ```

3. **Merge to Main**
   ```bash
   git checkout main
   git merge hotfix/1.0.1
   git tag -a v1.0.1 -m "Hotfix version 1.0.1"
   git push origin main --tags
   ```

4. **Merge to Develop**
   ```bash
   git checkout develop
   git merge hotfix/1.0.1
   git push origin develop
   ```

5. **Delete Hotfix Branch**
   ```bash
   git branch -d hotfix/1.0.1
   ```

## Collaboration Guidelines

### Pull Request Process

1. **Create Pull Request**
   - Use descriptive title
   - Include detailed description
   - Link related issues
   - Add appropriate labels

2. **Code Review**
   - At least 1 approval required
   - Address all comments
   - Keep PR focused and small
   - Update PR description if scope changes

3. **Merge Requirements**
   - All CI checks must pass
   - No merge conflicts
   - Branch up to date with base
   - Approved by reviewer(s)

### Commit Message Convention

Follow Conventional Commits specification:

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

**Examples:**
```
feat(auth): add user login functionality
fix(ui): correct header alignment on mobile
docs(readme): update installation instructions
```

### Branch Naming Convention

- Use lowercase
- Use hyphens to separate words
- Be descriptive but concise
- Include issue number if applicable

**Examples:**
```
feature/user-authentication
feature/issue-123-add-blog
fix/header-responsive-layout
hotfix/security-vulnerability
release/1.0.0
```

## Version Numbering

Follow Semantic Versioning (SemVer):

```
MAJOR.MINOR.PATCH
```

- **MAJOR:** Breaking changes
- **MINOR:** New features (backward compatible)
- **PATCH:** Bug fixes (backward compatible)

**Examples:**
- `1.0.0` - Initial release
- `1.1.0` - New features added
- `1.1.1` - Bug fixes
- `2.0.0` - Breaking changes

## Tools and Integrations

- **Git Client:** Command line or GUI (GitKraken, SourceTree, GitHub Desktop)
- **GitHub:** Remote repository hosting
- **GitHub Actions:** CI/CD pipelines
- **Branch Protection:** Enforced on main and develop
- **Pull Request Reviews:** Required for all merges

## Best Practices

1. **Keep Branches Updated:** Regularly sync with develop/main
2. **Small Commits:** Commit frequently with focused changes
3. **Descriptive Messages:** Write clear commit messages
4. **Review Code:** Thoroughly review pull requests
5. **Test Before Merge:** Ensure all tests pass
6. **Delete Merged Branches:** Clean up after merging
7. **Tag Releases:** Always tag production releases
8. **Document Changes:** Update CHANGELOG and documentation

## Troubleshooting

### Merge Conflicts
```bash
# Update your branch
git checkout feature/my-feature
git fetch origin
git merge origin/develop

# Resolve conflicts in your editor
# After resolving:
git add .
git commit -m "merge: resolve conflicts with develop"
git push origin feature/my-feature
```

### Accidentally Committed to Wrong Branch
```bash
# Move commits to correct branch
git log  # Note the commit hash
git checkout correct-branch
git cherry-pick <commit-hash>
git checkout wrong-branch
git reset --hard HEAD~1
```

## References

- [GitFlow Original Article](https://nvie.com/posts/a-successful-git-branching-model/)
- [Semantic Versioning](https://semver.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)
