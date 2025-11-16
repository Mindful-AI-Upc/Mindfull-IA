# Agile Methodology and Development Practices

## Overview
This document describes the Agile development methodology used by the Mindful-AI team for managing product and sprint backlogs.

## Agile Framework

### Scrum Methodology
The team follows Scrum framework with the following components:

- **Product Backlog** - Prioritized list of all features and requirements
- **Sprint Backlog** - Work items selected for the current sprint
- **Sprint** - Time-boxed iteration (typically 2 weeks)
- **Daily Stand-up** - Brief daily synchronization meeting
- **Sprint Review** - Demo of completed work
- **Sprint Retrospective** - Team improvement discussion

### Team Roles

#### Product Owner
- Defines product vision and goals
- Manages product backlog
- Prioritizes features and requirements
- Accepts or rejects completed work
- Communicates with stakeholders

#### Scrum Master
- Facilitates Scrum ceremonies
- Removes impediments
- Coaches team on Agile practices
- Ensures process is followed
- Protects team from external disruptions

#### Development Team
- Self-organizing and cross-functional
- Estimates work items
- Commits to sprint goals
- Delivers potentially shippable increment
- Collaborates on solutions

## GitHub Projects for Agile Management

### Tool: GitHub Projects (Kanban Board)
The team uses **GitHub Projects** as the primary tool for agile development support.

**Access:** https://github.com/orgs/Mindful-AI-Upc/projects or repository Projects tab

### Board Structure

#### Product Backlog Board
Tracks all product features and requirements:

**Columns:**
1. **Backlog** - All items not yet planned
2. **Ready** - Items ready for sprint planning
3. **In Sprint** - Items in current sprint
4. **Done** - Completed items

#### Sprint Board
Tracks current sprint progress:

**Columns:**
1. **To Do** - Sprint backlog items
2. **In Progress** - Currently being worked on
3. **In Review** - Under code review
4. **Testing** - Being tested
5. **Done** - Completed this sprint

### GitHub Issues for Work Items

#### Issue Types
- **Feature** - New functionality (label: `feature`)
- **Bug** - Defects to fix (label: `bug`)
- **Enhancement** - Improvements (label: `enhancement`)
- **Documentation** - Documentation tasks (label: `documentation`)
- **Technical Debt** - Code quality improvements (label: `tech-debt`)

#### Issue Template
```markdown
## Description
[Clear description of the work item]

## Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Additional Context
[Any additional information, mockups, or references]

## Estimated Effort
[Story points or time estimate]

## Priority
[ ] High
[ ] Medium
[ ] Low
```

#### Issue Labels

**Priority:**
- `priority-high` - Urgent, must be done soon
- `priority-medium` - Important, normal timeline
- `priority-low` - Nice to have, can be deferred

**Type:**
- `feature` - New feature
- `bug` - Bug fix
- `enhancement` - Improvement
- `documentation` - Documentation
- `tech-debt` - Technical debt
- `hotfix` - Critical production fix

**Status:**
- `blocked` - Cannot proceed
- `in-progress` - Currently being worked on
- `needs-review` - Ready for review
- `ready` - Ready to start

**Area:**
- `frontend` - Frontend code
- `backend` - Backend code
- `testing` - Testing related
- `devops` - DevOps/Infrastructure
- `design` - Design related

### Milestones
Milestones represent sprints or releases:

**Naming Convention:**
- Sprint: `Sprint 1`, `Sprint 2`, etc.
- Release: `Release v1.0.0`, `Release v1.1.0`

**Fields:**
- Title: Sprint/Release name
- Due Date: End date
- Description: Sprint goal or release notes

## Product Backlog Management

### Creating Product Backlog Items

1. **Create GitHub Issue**
   - Click "New Issue" in repository
   - Select appropriate template
   - Fill in all required fields
   - Add labels for type and priority
   - Add to Product Backlog project

2. **Define Requirements**
   - Clear description
   - Acceptance criteria
   - User story format (if applicable)
     ```
     As a [user type]
     I want to [action]
     So that [benefit]
     ```

3. **Prioritize**
   - Product Owner sets priority
   - Consider business value, dependencies, risk
   - Order items in backlog

### Backlog Refinement

**Activity:** Regular backlog grooming sessions

**Frequency:** Mid-sprint (weekly)

**Participants:** Product Owner, Scrum Master, Development Team

**Activities:**
- Review and clarify upcoming items
- Break down large items (epics)
- Estimate effort (story points)
- Add technical details
- Remove obsolete items

### Story Point Estimation

**Scale:** Modified Fibonacci (1, 2, 3, 5, 8, 13, 21)

**Reference:**
- **1 point** - Very small, < 2 hours
- **2 points** - Small, 2-4 hours
- **3 points** - Medium-small, 4-8 hours
- **5 points** - Medium, 1-2 days
- **8 points** - Large, 2-3 days
- **13 points** - Very large, 3-5 days (should be split)
- **21 points** - Too large (must be split into smaller items)

**Estimation Process:**
1. Product Owner presents item
2. Team discusses and asks questions
3. Team members vote simultaneously (Planning Poker)
4. Discuss differences
5. Re-vote until consensus

## Sprint Planning

### Sprint Planning Meeting

**Duration:** 2-4 hours (for 2-week sprint)

**Participants:** All team members

**Agenda:**

#### Part 1: What (1-2 hours)
1. Review sprint goal
2. Review product backlog
3. Select items for sprint
4. Ensure items meet Definition of Ready

#### Part 2: How (1-2 hours)
1. Break down selected items into tasks
2. Create task items or checklists
3. Assign initial owners (optional)
4. Verify sprint commitment

### Definition of Ready (DoR)

Before item can be selected for sprint:
- [ ] Clear and concise description
- [ ] Acceptance criteria defined
- [ ] Dependencies identified
- [ ] Estimated (story points)
- [ ] No blockers
- [ ] Testable

### Sprint Goal

Each sprint should have a clear goal:

**Example:**
```
Sprint 1 Goal: Create basic landing page structure with 
responsive navigation and hero section
```

**Characteristics:**
- Clear and concise
- Achievable within sprint
- Provides focus
- Adds business value

## Sprint Execution

### Daily Stand-up

**Duration:** 15 minutes maximum

**Format:** Each team member answers:
1. What did I complete yesterday?
2. What will I work on today?
3. Are there any blockers?

**Platform:**
- Synchronous: Video call or in-person
- Asynchronous: GitHub issue comments or discussion thread

**Blocker Resolution:**
- Note blocker
- Scrum Master follows up
- Address outside of stand-up

### Task Management

**In GitHub:**
1. Move issue to "In Progress" column
2. Assign to yourself
3. Create feature branch following GitFlow
4. Work on implementation
5. Update issue with progress
6. Move to "In Review" when ready
7. Create pull request
8. Link PR to issue (#123)
9. Move to "Done" when merged

### Work In Progress (WIP) Limits

**Recommended limits per person:**
- In Progress: 1-2 items maximum
- In Review: 2-3 items maximum

**Benefits:**
- Focus on completion
- Reduce context switching
- Identify bottlenecks
- Improve flow

## Sprint Review

### Sprint Review Meeting

**Duration:** 1-2 hours

**Participants:** Team, Product Owner, Stakeholders

**Agenda:**
1. Demo completed work
2. Review sprint goal achievement
3. Discuss what was/wasn't completed
4. Get stakeholder feedback
5. Update product backlog based on feedback

**Demonstration:**
- Show working software
- Explain features implemented
- Demonstrate acceptance criteria
- Gather feedback

## Sprint Retrospective

### Retrospective Meeting

**Duration:** 1-1.5 hours

**Participants:** Development Team, Scrum Master, (Optional) Product Owner

**Format:**

#### 1. Set the Stage (5 min)
- Review retrospective purpose
- Set positive tone

#### 2. Gather Data (15 min)
- What went well?
- What didn't go well?
- What questions/puzzles do we have?

#### 3. Generate Insights (20 min)
- Why did things happen?
- Identify patterns
- Root cause analysis

#### 4. Decide What to Do (15 min)
- Select 1-3 improvement actions
- Assign owners
- Define success criteria

#### 5. Close (5 min)
- Summarize actions
- Appreciate contributions

**Action Items:**
- Create GitHub issues for improvements
- Label as `process-improvement`
- Track in sprint backlog

## Velocity Tracking

### Team Velocity
**Definition:** Average story points completed per sprint

**Calculation:**
```
Velocity = Total Story Points Completed / Number of Sprints
```

**Use:**
- Sprint planning capacity
- Release forecasting
- Team performance trend

**Tracking:**
- Record completed points each sprint
- Calculate rolling average (last 3-5 sprints)
- Update sprint planning capacity

### Burndown Charts

**Sprint Burndown:**
- Y-axis: Remaining story points
- X-axis: Sprint days
- Track daily progress
- Identify issues early

**GitHub Projects:**
- Use "Insights" tab for burndown visualization
- Track issues moving to "Done"

## Definition of Done (DoD)

Before marking work as done:

### Code Complete
- [ ] Code written and follows coding standards
- [ ] Code reviewed and approved
- [ ] Unit tests written (if applicable)
- [ ] Integration tests pass
- [ ] No compiler warnings
- [ ] Code formatted with Prettier

### Tested
- [ ] Manually tested in development environment
- [ ] Acceptance criteria verified
- [ ] Cross-browser testing (if applicable)
- [ ] Responsive design verified (if applicable)
- [ ] No known bugs

### Documented
- [ ] Code comments added for complex logic
- [ ] README updated (if needed)
- [ ] User documentation updated (if needed)
- [ ] CHANGELOG updated

### Integrated
- [ ] Merged to develop branch
- [ ] No merge conflicts
- [ ] CI/CD pipeline passes
- [ ] Deployed to staging/test environment

### Accepted
- [ ] Product Owner reviewed
- [ ] Stakeholder feedback incorporated
- [ ] Acceptance criteria met

## Release Planning

### Release Cadence
- **Minor Releases:** Every 2-4 sprints
- **Patch Releases:** As needed for hotfixes
- **Major Releases:** Annually or as needed

### Release Process
1. Create release branch from develop
2. Final testing and bug fixes
3. Update version numbers
4. Update CHANGELOG
5. Merge to main
6. Tag release
7. Deploy to production
8. Merge back to develop

### Version Numbering
Follow Semantic Versioning:
- **MAJOR.MINOR.PATCH**
- Example: v1.2.3

## Metrics and Reporting

### Key Metrics

#### Sprint Metrics
- **Velocity** - Story points completed
- **Commitment Reliability** - % of committed work completed
- **Sprint Goal Success Rate** - % of sprints meeting goal

#### Quality Metrics
- **Bug Count** - Open bugs
- **Bug Resolution Time** - Average time to fix
- **Code Review Time** - Average PR review time

#### Process Metrics
- **Cycle Time** - Time from start to done
- **Lead Time** - Time from backlog to done
- **WIP** - Work in progress count

### Reporting Frequency
- **Daily:** Stand-up notes
- **Sprint End:** Sprint report (review + retrospective)
- **Monthly:** Velocity and quality trends
- **Quarterly:** Roadmap progress

## GitHub Projects Evidence

### Setting Up GitHub Projects

1. **Create Project Board**
   ```
   Repository → Projects → New Project
   ```

2. **Configure Board**
   - Add columns (To Do, In Progress, In Review, Done)
   - Enable automation (move issues based on labels/status)
   - Add filters and views

3. **Link Issues**
   - Add issues to project
   - Move across columns as work progresses
   - Use automation rules

### Evidence of Usage

**Product Backlog:**
- All features and requirements as GitHub issues
- Prioritized order
- Estimated with story points
- Categorized with labels

**Sprint Backlog:**
- Issues in current sprint milestone
- Assigned to team members
- Moving through workflow columns
- Linked to pull requests

**Sprint Board:**
- Active sprint visible
- Daily updates
- Clear status of all items
- Burndown tracking

## Best Practices

### Product Backlog
- Keep it prioritized
- Refine regularly
- Keep items small and manageable
- Remove obsolete items
- Include technical debt

### Sprint Planning
- Don't over-commit
- Include buffer for unexpected work
- Consider team capacity (vacations, holidays)
- Include time for reviews and retrospectives

### Daily Work
- Update issue status daily
- Comment on progress and blockers
- Link commits to issues
- Keep WIP low

### Collaboration
- Communicate openly
- Help teammates
- Share knowledge
- Provide constructive feedback
- Respect team commitments

## Tools Summary

| Tool | Purpose | Access |
|------|---------|--------|
| GitHub Issues | Work item tracking | Repository Issues tab |
| GitHub Projects | Kanban boards | Repository Projects tab |
| GitHub Milestones | Sprint/Release tracking | Issues → Milestones |
| GitHub Labels | Categorization | Issue labels |
| GitHub Pull Requests | Code review | Repository PRs tab |
| GitHub Actions | CI/CD | Repository Actions tab |

## Related Documentation
- [GitFlow Workflow](../git-workflow/gitflow.md)
- [Coding Standards](../conventions/coding-standards.md)
- [Technologies and Tools](../tools/technologies.md)
