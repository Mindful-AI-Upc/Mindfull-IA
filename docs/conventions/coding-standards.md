# Coding Standards and Conventions

## Overview
This document defines the coding standards, conventions, and best practices for the Mindful-AI project.

## General Principles

### Code Quality
1. **Readability** - Code should be easy to read and understand
2. **Maintainability** - Code should be easy to maintain and modify
3. **Consistency** - Follow established patterns throughout the codebase
4. **Simplicity** - Keep solutions simple and straightforward
5. **Documentation** - Comment complex logic and provide clear documentation

### DRY Principle
- **Don't Repeat Yourself** - Avoid code duplication
- Extract reusable functions and modules
- Use constants for repeated values

### KISS Principle
- **Keep It Simple, Stupid** - Avoid over-engineering
- Choose simple solutions over complex ones
- Refactor when necessary

## HTML Conventions

### Document Structure
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page Title - Mindful-AI</title>
    <link rel="stylesheet" href="assets/styles/style.css">
</head>
<body>
    <!-- Content -->
    <script src="assets/scripts/main.js"></script>
</body>
</html>
```

### Naming Conventions
- **Files:** Use lowercase with hyphens: `login.html`, `user-profile.html`
- **IDs:** Use lowercase with hyphens: `id="main-header"`
- **Classes:** Use lowercase with hyphens: `class="nav-item"`

### Best Practices
- Use semantic HTML5 elements (`<header>`, `<nav>`, `<main>`, `<footer>`, `<article>`, `<section>`)
- Include `alt` attributes for all images
- Use proper heading hierarchy (h1 → h2 → h3)
- Validate HTML using W3C validator
- Keep HTML structure clean and indented
- Close all tags properly
- Use lowercase for all HTML tags and attributes

### Indentation
- Use **4 spaces** for indentation
- Indent nested elements consistently
- Align closing tags properly

### Comments
```html
<!-- Main navigation section -->
<nav class="main-nav">
    <!-- Navigation items -->
</nav>
```

## CSS Conventions

### File Organization
```css
/* ==========================================================================
   Base Styles
   ========================================================================== */

/* Reset and normalization */
* { margin: 0; padding: 0; box-sizing: border-box; }

/* ==========================================================================
   Typography
   ========================================================================== */

/* Font definitions */

/* ==========================================================================
   Layout
   ========================================================================== */

/* Grid and flexbox layouts */

/* ==========================================================================
   Components
   ========================================================================== */

/* Reusable components */

/* ==========================================================================
   Utilities
   ========================================================================== */

/* Helper classes */
```

### Naming Conventions
- **Classes:** Use BEM methodology or lowercase with hyphens
  ```css
  .block {}
  .block__element {}
  .block--modifier {}
  
  /* OR */
  
  .nav-bar {}
  .nav-item {}
  .nav-item-active {}
  ```

### Property Order
1. Positioning (`position`, `top`, `right`, `bottom`, `left`, `z-index`)
2. Display & Box Model (`display`, `width`, `height`, `margin`, `padding`, `border`)
3. Typography (`font-family`, `font-size`, `line-height`, `color`, `text-align`)
4. Visual (`background`, `border`, `box-shadow`, `opacity`)
5. Misc (`cursor`, `transition`, `transform`, `animation`)

```css
.element {
    /* Positioning */
    position: absolute;
    top: 0;
    left: 0;
    z-index: 100;
    
    /* Display & Box Model */
    display: flex;
    width: 100%;
    height: 50px;
    margin: 10px 0;
    padding: 15px;
    border: 1px solid #ccc;
    
    /* Typography */
    font-family: Arial, sans-serif;
    font-size: 16px;
    color: #333;
    
    /* Visual */
    background: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    
    /* Misc */
    transition: all 0.3s ease;
}
```

### Best Practices
- Use external stylesheets (avoid inline styles)
- Use CSS variables for colors and common values
  ```css
  :root {
      --primary-color: #007bff;
      --secondary-color: #6c757d;
      --font-family: 'Arial', sans-serif;
  }
  ```
- Mobile-first responsive design
- Use relative units (`rem`, `em`, `%`, `vh`, `vw`)
- Minimize use of `!important`
- Group related styles together
- Keep selectors specific but not overly specific
- Avoid inline styles

### Responsive Design
```css
/* Mobile first */
.container {
    width: 100%;
    padding: 15px;
}

/* Tablet */
@media (min-width: 768px) {
    .container {
        width: 750px;
        margin: 0 auto;
    }
}

/* Desktop */
@media (min-width: 1024px) {
    .container {
        width: 970px;
    }
}

/* Large desktop */
@media (min-width: 1200px) {
    .container {
        width: 1170px;
    }
}
```

### Comments
```css
/* ==========================================================================
   Section Title
   ========================================================================== */

/* Subsection comment */
.component {
    /* Specific property comment */
    property: value;
}
```

## JavaScript Conventions

### File Structure
```javascript
// =============================================================================
// Imports (if using modules)
// =============================================================================

// =============================================================================
// Constants
// =============================================================================
const API_URL = 'https://api.example.com';
const MAX_RETRIES = 3;

// =============================================================================
// Utility Functions
// =============================================================================

// =============================================================================
// Main Logic
// =============================================================================

// =============================================================================
// Event Listeners
// =============================================================================

// =============================================================================
// Initialization
// =============================================================================
```

### Naming Conventions

#### Variables and Functions
- **camelCase** for variables and functions
  ```javascript
  let userName = 'John';
  const userId = 123;
  
  function getUserData() {}
  function calculateTotalPrice() {}
  ```

#### Constants
- **UPPER_SNAKE_CASE** for constants
  ```javascript
  const API_ENDPOINT = 'https://api.example.com';
  const MAX_LOGIN_ATTEMPTS = 3;
  const DEFAULT_TIMEOUT = 5000;
  ```

#### Classes
- **PascalCase** for classes
  ```javascript
  class UserProfile {}
  class ShoppingCart {}
  class DataValidator {}
  ```

#### Private Properties
- **Prefix with underscore** for private properties (convention)
  ```javascript
  class User {
      constructor() {
          this._privateProperty = 'private';
          this.publicProperty = 'public';
      }
      
      _privateMethod() {}
      publicMethod() {}
  }
  ```

### Variable Declaration
- Use `const` by default
- Use `let` when reassignment is needed
- Never use `var`

```javascript
// Good
const userName = 'John';
let counter = 0;

// Bad
var oldStyleVariable = 'avoid this';
```

### Functions

#### Function Declaration vs Expression
```javascript
// Function declaration (preferred for top-level functions)
function calculateTotal(items) {
    return items.reduce((sum, item) => sum + item.price, 0);
}

// Arrow function (preferred for callbacks and short functions)
const double = (x) => x * 2;

// Array methods
const numbers = [1, 2, 3, 4, 5];
const doubled = numbers.map(n => n * 2);
const evens = numbers.filter(n => n % 2 === 0);
```

#### Function Documentation
```javascript
/**
 * Calculates the total price including tax
 * @param {number} price - Base price
 * @param {number} taxRate - Tax rate as decimal (e.g., 0.08 for 8%)
 * @returns {number} Total price with tax
 */
function calculateTotalWithTax(price, taxRate) {
    return price * (1 + taxRate);
}
```

### Code Style

#### Spacing and Indentation
- Use **4 spaces** for indentation (configured in Prettier)
- Add space after keywords: `if (condition)`
- Add space around operators: `x + y`, `a === b`
- No space before function parentheses in declarations: `function name()`
- Add space before opening brace: `if (condition) {`

```javascript
// Good
if (condition) {
    doSomething();
} else {
    doSomethingElse();
}

for (let i = 0; i < 10; i++) {
    console.log(i);
}

// Bad
if(condition){
    doSomething();
}else{
    doSomethingElse();
}
```

#### Line Length
- Maximum line length: **100 characters**
- Break long lines logically
- Indent continued lines

```javascript
// Good
const result = calculateComplexValue(
    parameter1,
    parameter2,
    parameter3
);

// Good
const message = 'This is a very long string that needs to be ' +
                'broken into multiple lines for readability';
```

#### Semicolons
- Use semicolons at the end of statements
- Prettier will automatically add them

```javascript
// Good
const x = 5;
const y = 10;
console.log(x + y);

// Avoid
const x = 5
const y = 10
console.log(x + y)
```

### Best Practices

#### Use Strict Mode
```javascript
'use strict';
```

#### Avoid Global Variables
```javascript
// Good - IIFE to avoid global scope pollution
(function() {
    const privateVar = 'not global';
    // code here
})();

// Good - ES6 modules
export function myFunction() {}
```

#### Error Handling
```javascript
// Always handle errors
try {
    const data = JSON.parse(jsonString);
    processData(data);
} catch (error) {
    console.error('Error parsing JSON:', error);
    handleError(error);
}

// Async/await error handling
async function fetchData() {
    try {
        const response = await fetch(API_URL);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Fetch error:', error);
        throw error;
    }
}
```

#### Comparison
```javascript
// Use strict equality
if (x === 5) {} // Good
if (x == 5) {}  // Avoid

// Check for null/undefined
if (value != null) {} // Checks for both null and undefined
if (value !== null && value !== undefined) {} // Explicit
```

#### Object and Array Methods
```javascript
// Use modern array methods
const numbers = [1, 2, 3, 4, 5];

// Map
const doubled = numbers.map(n => n * 2);

// Filter
const evens = numbers.filter(n => n % 2 === 0);

// Reduce
const sum = numbers.reduce((acc, n) => acc + n, 0);

// Find
const firstEven = numbers.find(n => n % 2 === 0);

// Some/Every
const hasEven = numbers.some(n => n % 2 === 0);
const allPositive = numbers.every(n => n > 0);
```

#### Destructuring
```javascript
// Object destructuring
const user = { name: 'John', age: 30, email: 'john@example.com' };
const { name, age } = user;

// Array destructuring
const [first, second, ...rest] = [1, 2, 3, 4, 5];

// Function parameters
function greet({ name, age }) {
    console.log(`Hello ${name}, you are ${age} years old`);
}
```

#### Template Literals
```javascript
// Use template literals for string interpolation
const name = 'John';
const age = 30;

// Good
const message = `Hello ${name}, you are ${age} years old`;

// Avoid
const message = 'Hello ' + name + ', you are ' + age + ' years old';
```

### Comments

#### Single Line
```javascript
// This is a single line comment
const x = 5; // Comment at end of line
```

#### Multi-line
```javascript
/**
 * This is a multi-line comment
 * Used for longer explanations
 */
```

#### JSDoc Comments
```javascript
/**
 * Represents a user profile
 * @class
 */
class UserProfile {
    /**
     * Creates a user profile
     * @param {string} name - User's name
     * @param {number} age - User's age
     * @param {string} email - User's email
     */
    constructor(name, age, email) {
        this.name = name;
        this.age = age;
        this.email = email;
    }
    
    /**
     * Get user's full details
     * @returns {Object} User details object
     */
    getDetails() {
        return {
            name: this.name,
            age: this.age,
            email: this.email
        };
    }
}
```

## File Naming Conventions

### General Rules
- Use lowercase
- Use hyphens for word separation
- Be descriptive but concise
- Use appropriate file extensions

### Examples
```
# HTML files
index.html
login.html
user-profile.html
about-us.html

# CSS files
style.css
main.css
components.css
responsive.css

# JavaScript files
main.js
utils.js
api-client.js
user-service.js

# Images
logo.png
hero-image.jpg
user-avatar.png
icon-home.svg

# Documentation
README.md
CONTRIBUTING.md
CODE_OF_CONDUCT.md
```

## Directory Structure Conventions

```
project-root/
├── public/              # Static files (served directly)
│   ├── index.html
│   ├── *.html
│   └── assets/
│       ├── images/      # Image files
│       ├── styles/      # CSS files
│       │   └── fonts/   # Font files
│       └── scripts/     # JavaScript files
├── src/                 # Source code
│   └── *.js
├── tests/               # Test files
│   └── features/        # Gherkin feature files
├── docs/                # Documentation
│   ├── git-workflow/
│   ├── conventions/
│   ├── tools/
│   └── agile/
├── .gitignore           # Git ignore rules
├── package.json         # Dependencies and scripts
└── README.md            # Project overview
```

## Code Review Checklist

### Before Submitting PR
- [ ] Code follows naming conventions
- [ ] Code is properly formatted (run Prettier)
- [ ] No console.log statements in production code
- [ ] Comments are clear and helpful
- [ ] Functions are small and focused
- [ ] No duplicate code (DRY principle)
- [ ] Error handling is implemented
- [ ] Code is tested manually
- [ ] HTML is valid (W3C validator)
- [ ] CSS is organized and clean
- [ ] JavaScript follows ES6+ best practices

### Reviewer Checklist
- [ ] Code is readable and maintainable
- [ ] Naming is clear and consistent
- [ ] Logic is sound and efficient
- [ ] No security vulnerabilities
- [ ] Follows project conventions
- [ ] Documentation is adequate
- [ ] Changes are minimal and focused

## Automated Formatting

### Prettier Configuration
The project uses Prettier for automatic code formatting.

```bash
# Format all files
npx prettier --write .

# Check formatting
npx prettier --check .
```

### Editor Integration
Configure your editor to format on save:

**VS Code** (`.vscode/settings.json`):
```json
{
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "esbenp.prettier-vscode"
}
```

## Version Control Conventions

### Commit Messages
See [GitFlow Documentation](../git-workflow/gitflow.md#commit-message-convention)

### Branch Naming
See [GitFlow Documentation](../git-workflow/gitflow.md#branch-naming-convention)

## Related Documentation
- [GitFlow Workflow](../git-workflow/gitflow.md)
- [Technologies and Tools](../tools/technologies.md)
- [Testing Guidelines](../conventions/testing.md)
