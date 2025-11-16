# Testing Suite Feature Files

This directory contains Behavior-Driven Development (BDD) test scenarios written in Gherkin syntax for the Mindful-AI project.

## Directory Structure

```
features/
├── authentication/          # Authentication-related tests
│   ├── login.feature       # User login scenarios
│   └── registration.feature # User registration scenarios
├── landing-page/           # Landing page tests
│   ├── navigation.feature  # Navigation and routing tests
│   └── responsiveness.feature # Responsive design tests
└── support/                # Support files for test execution
    └── README.md          # This file
```

## About Feature Files

Feature files are written in **Gherkin**, a human-readable language that describes software behavior without detailing how that functionality is implemented.

### Gherkin Syntax

Each feature file follows this structure:

```gherkin
Feature: [Feature Name]
  [Feature Description]

  Background:
    Given [precondition]
    And [another precondition]

  Scenario: [Scenario Name]
    Given [initial context]
    When [action taken]
    Then [expected outcome]
    And [another expected outcome]
```

### Keywords

- **Feature**: A description of a software feature
- **Background**: Steps that run before each scenario
- **Scenario**: A specific example of feature behavior
- **Given**: Sets up the initial state
- **When**: Describes the action
- **Then**: Defines the expected outcome
- **And/But**: Continues the previous step type

## Test Categories

### Authentication Tests
- User registration with validation
- User login and session management
- Password reset and recovery
- Account lockout and security

### Landing Page Tests
- Navigation between pages
- Responsive design across devices
- Form submissions
- Visual elements and layout

### Future Test Categories
- Dashboard functionality
- AI chat interactions
- User profile management
- Settings and preferences
- Mobile app features
- API integration

## Running Tests

### Prerequisites
```bash
# Install Cucumber for JavaScript
npm install --save-dev @cucumber/cucumber

# Install Selenium WebDriver
npm install --save-dev selenium-webdriver

# Install browser drivers (ChromeDriver, GeckoDriver, etc.)
```

### Execute Tests
```bash
# Run all features
npx cucumber-js

# Run specific feature
npx cucumber-js features/authentication/login.feature

# Run with tags
npx cucumber-js --tags "@smoke"

# Generate HTML report
npx cucumber-js --format html:reports/cucumber-report.html
```

## Step Definitions

Step definitions (implementation of Gherkin steps) should be placed in a separate directory:

```
tests/
└── step-definitions/
    ├── authentication-steps.js
    ├── navigation-steps.js
    └── common-steps.js
```

Example step definition:
```javascript
const { Given, When, Then } = require('@cucumber/cucumber');

Given('I am on the Mindful-AI landing page', async function() {
  await this.driver.get('http://localhost:3000');
});

When('I click the {string} button', async function(buttonText) {
  const button = await this.driver.findElement(By.linkText(buttonText));
  await button.click();
});

Then('I should see {string}', async function(text) {
  const bodyText = await this.driver.findElement(By.tagName('body')).getText();
  assert(bodyText.includes(text));
});
```

## Test Data Management

Test data should be managed separately:

```
tests/
└── fixtures/
    ├── users.json          # Test user data
    ├── test-data.json      # General test data
    └── mock-responses.json # Mock API responses
```

## Best Practices

### Writing Feature Files
1. **Be Declarative**: Focus on what, not how
2. **Use Business Language**: Avoid technical jargon
3. **Keep Scenarios Independent**: Each scenario should run standalone
4. **Use Background Wisely**: For common setup across scenarios
5. **Be Specific**: Clear and unambiguous steps
6. **One Scenario = One Behavior**: Test one thing at a time

### Organizing Tests
1. **Group by Feature**: Related scenarios in the same file
2. **Use Tags**: For categorization and selective execution
3. **Meaningful Names**: Descriptive feature and scenario names
4. **Consistent Structure**: Follow the same pattern across files

### Example Tags
```gherkin
@smoke @authentication
Feature: User Login
  
  @critical @happy-path
  Scenario: Successful login with valid credentials
    # ...
  
  @error-handling
  Scenario: Login fails with incorrect password
    # ...
```

## Continuous Integration

Feature files are automatically executed in CI/CD pipeline:

```yaml
# .github/workflows/test.yml
name: Run BDD Tests
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Install dependencies
        run: npm install
      - name: Run Cucumber tests
        run: npm run test:cucumber
      - name: Upload test reports
        uses: actions/upload-artifact@v2
        with:
          name: cucumber-reports
          path: reports/
```

## Test Coverage

Our feature files cover:
- ✅ User authentication flows
- ✅ Landing page navigation
- ✅ Responsive design verification
- ⏳ Dashboard functionality (planned)
- ⏳ AI chat features (planned)
- ⏳ API integration (planned)

## Reporting

Test results are available in multiple formats:
- **Console Output**: Real-time feedback during execution
- **HTML Report**: Detailed visual report with screenshots
- **JSON Report**: Machine-readable format for analysis
- **JUnit XML**: For CI/CD integration

## Related Documentation

- [Testing Suite Repository](../docs/REPOSITORY-STRUCTURE.md)
- [Coding Conventions](../docs/CODING-CONVENTIONS.md)
- [Tech Stack](../docs/TECH-STACK.md)
- [Cucumber Documentation](https://cucumber.io/docs/cucumber/)
- [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/)

## Contributing

When adding new features:
1. Write the feature file first (BDD approach)
2. Implement step definitions
3. Run tests to verify they fail (red)
4. Implement the feature
5. Run tests to verify they pass (green)
6. Refactor if needed

## Support

For questions about testing:
- Review existing feature files as examples
- Consult [Cucumber documentation](https://cucumber.io/docs/)
- Ask in the team Slack channel #testing
- Create an issue in GitHub with label `testing`
