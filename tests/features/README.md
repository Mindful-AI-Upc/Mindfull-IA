# Feature Files for Testing Suite

## Overview
This directory contains Gherkin feature files for Behavior-Driven Development (BDD) testing of the Mindful-AI application.

## Gherkin Syntax

Feature files use Gherkin syntax with the following keywords:
- **Feature:** High-level description of a software feature
- **Scenario:** Concrete example of feature behavior
- **Given:** Initial context
- **When:** Action or event
- **Then:** Expected outcome
- **And:** Additional steps
- **But:** Negative assertions

## Running Tests

### Prerequisites
```bash
npm install --save-dev @cucumber/cucumber
```

### Test Execution
```bash
# Run all feature tests
npm test

# Run specific feature
npx cucumber-js tests/features/landing-page.feature
```

## Writing Guidelines

1. **Use business language** - Write in terms users understand
2. **Be specific** - Include concrete examples
3. **Keep scenarios focused** - One behavior per scenario
4. **Use Background** - For common setup steps
5. **Use Examples** - For scenario outlines with multiple inputs

## Feature Files

See individual `.feature` files in this directory for specific test scenarios.
