# Coding Conventions and Programming Standards

## Overview
This document establishes the coding conventions, naming standards, and best practices for all Mindful-AI project repositories. Following these conventions ensures code consistency, readability, and maintainability across the team.

## General Principles

### Code Quality Standards
1. **Readability**: Write code for humans first, computers second
2. **Simplicity**: Keep it simple and avoid over-engineering
3. **Consistency**: Follow established patterns throughout the codebase
4. **DRY (Don't Repeat Yourself)**: Avoid code duplication
5. **SOLID Principles**: Apply object-oriented design principles
6. **YAGNI (You Aren't Gonna Need It)**: Don't add functionality until needed
7. **KISS (Keep It Simple, Stupid)**: Prefer simple solutions

## JavaScript / TypeScript Conventions

### File Naming
- **Files**: Use kebab-case: `user-service.js`, `auth-controller.js`
- **Components**: Use PascalCase: `UserProfile.jsx`, `LoginForm.tsx`
- **Tests**: Suffix with `.test.js` or `.spec.js`: `user-service.test.js`
- **Constants**: Use UPPER_SNAKE_CASE files if file contains only constants: `API_CONSTANTS.js`

### Variable Naming
```javascript
// Constants - UPPER_SNAKE_CASE
const MAX_RETRY_COUNT = 3;
const API_BASE_URL = 'https://api.mindful-ai.com';

// Variables and functions - camelCase
let userCount = 0;
const userName = 'John Doe';
function getUserData() { }
const calculateTotalScore = () => { };

// Classes and constructors - PascalCase
class UserManager { }
class HttpClient { }

// Private variables/methods - prefix with underscore
class Service {
  _privateMethod() { }
  _internalState = null;
}

// Boolean variables - prefix with is, has, should, can
const isActive = true;
const hasPermission = false;
const shouldUpdate = true;
const canDelete = false;
```

### Code Structure
```javascript
// 1. Imports first (grouped logically)
import React from 'react';
import { useState, useEffect } from 'react';

import { getUserData } from '../services/userService';
import { formatDate } from '../utils/dateUtils';

import './styles.css';

// 2. Constants and configuration
const CONFIG = {
  timeout: 5000,
  retryCount: 3
};

// 3. Component or main logic
function UserProfile({ userId }) {
  // State declarations first
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  
  // Effects
  useEffect(() => {
    loadUserData();
  }, [userId]);
  
  // Helper functions
  const loadUserData = async () => {
    // Implementation
  };
  
  // Render
  return (
    <div>
      {/* Component JSX */}
    </div>
  );
}

// 4. Exports last
export default UserProfile;
```

### Function Guidelines
```javascript
// Use descriptive names
// Good
function calculateUserAge(birthDate) { }
function validateEmailFormat(email) { }

// Bad
function calc(bd) { }
function check(e) { }

// Keep functions small and focused (single responsibility)
// Good
function getUserById(id) {
  return api.get(`/users/${id}`);
}

function validateUser(user) {
  return user.email && user.password;
}

// Bad - doing too much
function getUserAndValidateAndSave(id) {
  const user = api.get(`/users/${id}`);
  if (user.email && user.password) {
    database.save(user);
  }
}

// Use arrow functions for short callbacks
const numbers = [1, 2, 3];
const doubled = numbers.map(n => n * 2);
const filtered = numbers.filter(n => n > 1);

// Use async/await over promises
// Good
async function fetchUserData(userId) {
  try {
    const response = await api.get(`/users/${userId}`);
    return response.data;
  } catch (error) {
    console.error('Error fetching user:', error);
    throw error;
  }
}

// Less preferred
function fetchUserData(userId) {
  return api.get(`/users/${userId}`)
    .then(response => response.data)
    .catch(error => {
      console.error('Error fetching user:', error);
      throw error;
    });
}
```

### Object and Array Handling
```javascript
// Use destructuring
// Good
const { name, email, age } = user;
const [first, second, ...rest] = items;

// Use spread operator
const newUser = { ...existingUser, updatedAt: Date.now() };
const newArray = [...oldArray, newItem];

// Use object shorthand
const name = 'John';
const age = 30;
const user = { name, age }; // Instead of { name: name, age: age }

// Use optional chaining
const userName = user?.profile?.name;
const firstItem = items?.[0];

// Use nullish coalescing
const displayName = user.name ?? 'Anonymous';
```

### Comments
```javascript
// Single line comments for brief explanations
// Calculate the total price including tax
const totalPrice = basePrice * (1 + taxRate);

/**
 * Multi-line JSDoc comments for functions and classes
 * Fetch user data from the API
 * 
 * @param {string} userId - The unique identifier of the user
 * @param {Object} options - Optional configuration
 * @param {boolean} options.includeProfile - Include profile data
 * @returns {Promise<Object>} User data object
 * @throws {Error} If user not found
 */
async function fetchUser(userId, options = {}) {
  // Implementation
}

// TODO comments for future improvements
// TODO: Implement caching for better performance
// FIXME: This breaks when user has no email
// HACK: Temporary workaround until API is fixed
// NOTE: This behavior is intentional per requirements
```

### Error Handling
```javascript
// Always handle errors appropriately
try {
  const data = await fetchData();
  processData(data);
} catch (error) {
  console.error('Failed to fetch data:', error);
  // Handle error appropriately
  notifyUser('Unable to load data');
}

// Validate inputs
function divide(a, b) {
  if (b === 0) {
    throw new Error('Cannot divide by zero');
  }
  return a / b;
}

// Use custom error classes for specific errors
class ValidationError extends Error {
  constructor(message) {
    super(message);
    this.name = 'ValidationError';
  }
}
```

## HTML Conventions

### Structure
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Title - Mindful-AI</title>
    
    <!-- External stylesheets -->
    <link rel="stylesheet" href="assets/styles/style.css">
</head>
<body>
    <!-- Use semantic HTML5 elements -->
    <header>
        <nav>
            <!-- Navigation -->
        </nav>
    </header>
    
    <main>
        <section id="hero">
            <!-- Main content -->
        </section>
        
        <section id="features">
            <!-- Features -->
        </section>
    </main>
    
    <footer>
        <!-- Footer content -->
    </footer>
    
    <!-- Scripts at the end -->
    <script src="assets/scripts/main.js"></script>
</body>
</html>
```

### HTML Best Practices
```html
<!-- Use semantic elements -->
<nav>, <header>, <main>, <section>, <article>, <aside>, <footer>

<!-- Use proper heading hierarchy -->
<h1>Main Title</h1>
<h2>Section Title</h2>
<h3>Subsection</h3>

<!-- Always include alt text for images -->
<img src="logo.png" alt="Mindful-AI Logo">

<!-- Use meaningful IDs and classes -->
<!-- Good -->
<button class="primary-button" id="submit-form">Submit</button>

<!-- Bad -->
<button class="btn1" id="b1">Submit</button>

<!-- Use kebab-case for IDs and classes -->
<div id="user-profile" class="profile-card"></div>

<!-- Close all tags properly -->
<input type="text" />
<br />
```

## CSS Conventions

### Naming and Organization
```css
/* Use BEM (Block Element Modifier) methodology */
/* Block */
.user-card { }

/* Element */
.user-card__header { }
.user-card__body { }
.user-card__footer { }

/* Modifier */
.user-card--featured { }
.user-card--large { }

/* Or use semantic class names */
.primary-button { }
.secondary-button { }
.error-message { }
.success-message { }

/* Group related styles */
/* Layout */
.container { }
.grid { }
.flex-row { }

/* Components */
.button { }
.card { }
.modal { }

/* Utilities */
.text-center { }
.margin-top-large { }
.hidden { }
```

### CSS Best Practices
```css
/* Use consistent formatting */
.selector {
  property: value;
  another-property: value;
}

/* Order properties logically */
.element {
  /* Positioning */
  position: absolute;
  top: 0;
  left: 0;
  z-index: 10;
  
  /* Box model */
  display: flex;
  width: 100%;
  margin: 10px;
  padding: 20px;
  border: 1px solid #ccc;
  
  /* Typography */
  font-size: 16px;
  color: #333;
  text-align: center;
  
  /* Visual */
  background: #fff;
  opacity: 1;
  
  /* Misc */
  cursor: pointer;
  transition: all 0.3s ease;
}

/* Use CSS variables for theming */
:root {
  --primary-color: #4a90e2;
  --secondary-color: #50c878;
  --text-color: #333333;
  --background-color: #ffffff;
  --font-family: 'Arial', sans-serif;
}

.element {
  color: var(--primary-color);
  background: var(--background-color);
}

/* Avoid !important unless absolutely necessary */
/* Instead, increase specificity or restructure CSS */

/* Use mobile-first approach */
/* Base styles for mobile */
.element {
  font-size: 14px;
}

/* Tablet and up */
@media (min-width: 768px) {
  .element {
    font-size: 16px;
  }
}

/* Desktop and up */
@media (min-width: 1024px) {
  .element {
    font-size: 18px;
  }
}
```

## Python Conventions

### Naming
```python
# Modules and files - lowercase with underscores
user_service.py
data_processor.py

# Classes - PascalCase
class UserManager:
    pass

class HttpClient:
    pass

# Functions and variables - snake_case
def get_user_data():
    pass

user_count = 0
total_price = 100.0

# Constants - UPPER_SNAKE_CASE
MAX_CONNECTIONS = 100
API_KEY = "your-api-key"

# Private methods - prefix with underscore
class Service:
    def _internal_method(self):
        pass
    
    def __private_method(self):  # Name mangling
        pass
```

### Code Structure
```python
"""
Module docstring explaining the purpose of this module.
"""

# 1. Standard library imports
import os
import sys
from datetime import datetime

# 2. Third-party imports
import requests
import pandas as pd

# 3. Local imports
from .user_service import UserService
from .utils import format_date

# 4. Constants
MAX_RETRIES = 3
DEFAULT_TIMEOUT = 30

# 5. Classes and functions
class UserManager:
    """
    Manages user operations.
    
    Attributes:
        users (list): List of user objects
    """
    
    def __init__(self):
        self.users = []
    
    def add_user(self, user):
        """
        Add a user to the manager.
        
        Args:
            user (User): User object to add
            
        Returns:
            bool: True if successful
        """
        self.users.append(user)
        return True
```

## Git Commit Conventions

### Commit Message Format
```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation only
- `style`: Code style (formatting, semicolons, etc.)
- `refactor`: Code refactoring
- `test`: Adding tests
- `chore`: Maintenance tasks
- `perf`: Performance improvement

### Examples
```
feat(auth): add OAuth2 login support

Implement OAuth2 authentication flow for Google and GitHub providers.
Includes token validation and refresh logic.

Closes #123

---

fix(ui): resolve button alignment on mobile devices

The submit button was misaligned on screens smaller than 768px.
Added flexbox styling to ensure proper alignment.

---

docs(readme): update installation instructions

Added steps for Node.js 20 and updated dependency versions.
```

## Code Review Standards

### What to Look For
1. **Functionality**: Does the code work as intended?
2. **Code Quality**: Is it readable and maintainable?
3. **Performance**: Are there any performance issues?
4. **Security**: Are there security vulnerabilities?
5. **Tests**: Are there adequate tests?
6. **Documentation**: Is the code well-documented?
7. **Standards**: Does it follow these conventions?

### Review Checklist
- [ ] Code follows naming conventions
- [ ] Functions are small and focused
- [ ] Error handling is appropriate
- [ ] No code duplication
- [ ] Comments explain "why", not "what"
- [ ] Tests are included
- [ ] No security vulnerabilities
- [ ] Performance is acceptable
- [ ] Documentation is updated

## Testing Conventions

### Test File Structure
```javascript
// user-service.test.js
describe('UserService', () => {
  describe('getUserById', () => {
    it('should return user when valid ID is provided', async () => {
      // Arrange
      const userId = '123';
      
      // Act
      const user = await UserService.getUserById(userId);
      
      // Assert
      expect(user).toBeDefined();
      expect(user.id).toBe(userId);
    });
    
    it('should throw error when user not found', async () => {
      // Arrange
      const invalidId = 'invalid';
      
      // Act & Assert
      await expect(UserService.getUserById(invalidId))
        .rejects
        .toThrow('User not found');
    });
  });
});
```

### Test Naming
```javascript
// Use descriptive test names
it('should return 400 when email is invalid')
it('should update user profile successfully')
it('should not allow duplicate usernames')

// Group related tests
describe('Authentication', () => {
  describe('login', () => {
    it('should succeed with valid credentials')
    it('should fail with invalid password')
    it('should lock account after 5 failed attempts')
  });
});
```

## Documentation Standards

### README Structure
1. Project title and description
2. Features
3. Installation instructions
4. Usage examples
5. Configuration
6. Contributing guidelines
7. License

### Code Documentation
- Document all public APIs
- Include examples in documentation
- Keep documentation up to date with code
- Use JSDoc/Sphinx for generated documentation

## Accessibility Standards

```html
<!-- Use semantic HTML -->
<button>Click Me</button> <!-- Not <div onclick=""> -->

<!-- Provide text alternatives -->
<img src="chart.png" alt="Sales chart showing 20% increase">

<!-- Use ARIA labels when needed -->
<button aria-label="Close dialog">×</button>

<!-- Ensure keyboard navigation -->
<a href="#main-content" class="skip-link">Skip to main content</a>

<!-- Use proper color contrast (WCAG AA minimum) -->
```

## Performance Best Practices

1. **Minimize HTTP requests**: Bundle and minify assets
2. **Optimize images**: Use appropriate formats and compression
3. **Lazy load**: Load resources only when needed
4. **Cache appropriately**: Use browser and server caching
5. **Avoid blocking**: Load scripts asynchronously
6. **Code splitting**: Split large bundles into smaller chunks

## Security Best Practices

1. **Validate all inputs**: Never trust user input
2. **Sanitize outputs**: Prevent XSS attacks
3. **Use HTTPS**: Encrypt all communications
4. **Secure authentication**: Use proven authentication methods
5. **Keep dependencies updated**: Regularly update packages
6. **Environment variables**: Never commit secrets
7. **SQL injection prevention**: Use parameterized queries
8. **CORS configuration**: Properly configure cross-origin requests

## Enforcement

### Automated Tools
- ESLint for JavaScript linting
- Prettier for code formatting
- Pre-commit hooks with Husky
- CI/CD checks on pull requests

### Manual Review
- Code reviews before merging
- Pair programming for complex features
- Regular team code quality discussions

## Resources

- [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
- [Google JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)
- [PEP 8 - Python Style Guide](https://www.python.org/dev/peps/pep-0008/)
- [Clean Code by Robert C. Martin](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)
