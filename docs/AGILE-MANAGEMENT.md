# Agile Development and Project Management

## Overview
This document evidences the use of agile development tools and methodologies for managing the Mindful-AI project, including product backlog, sprint backlog, and team collaboration processes.

## Agile Framework

### Methodology
We follow **Scrum** framework with 2-week sprints:
- Sprint Planning
- Daily Standups
- Sprint Review
- Sprint Retrospective

### Roles
- **Product Owner**: Defines features and prioritizes backlog
- **Scrum Master**: Facilitates agile processes and removes blockers
- **Development Team**: Cross-functional team delivering increments

## Primary Tool: GitHub Projects

### Why GitHub Projects?
We use **GitHub Projects** as our primary agile development tool because:
- ✅ Seamless integration with GitHub repositories
- ✅ Direct linking between issues, PRs, and tasks
- ✅ Automated workflows and status updates
- ✅ Customizable views (Board, Table, Roadmap)
- ✅ No context switching - code and project management in one place
- ✅ Free for public and private repositories
- ✅ Built-in automation with GitHub Actions

### Project Setup
- **Organization**: Mindful-AI-Upc
- **Project Name**: Mindful-AI Development
- **Access**: All team members
- **URL**: https://github.com/orgs/Mindful-AI-Upc/projects

## Product Backlog Management

### Backlog Structure
The product backlog is maintained in GitHub Projects with the following views:

#### 1. Backlog View (Table)
Columns:
- **Title**: User story or task name
- **Status**: Todo, In Progress, In Review, Done, Archived
- **Priority**: P0 (Critical), P1 (High), P2 (Medium), P3 (Low)
- **Story Points**: Fibonacci sequence (1, 2, 3, 5, 8, 13)
- **Assignee**: Team member responsible
- **Labels**: Feature, Bug, Enhancement, Documentation, Tech Debt
- **Sprint**: Sprint number or backlog
- **Epic**: Related epic/theme

#### 2. Board View (Kanban)
Columns:
- 📋 **Backlog**: Prioritized items not yet started
- 🚀 **Ready**: Items ready for development
- 👨‍💻 **In Progress**: Currently being worked on
- 👀 **In Review**: Pull request under review
- ✅ **Done**: Completed in current sprint
- 📦 **Released**: Deployed to production

### User Story Format
We use the standard user story format:
```
As a [type of user]
I want [goal/desire]
So that [benefit/value]

Acceptance Criteria:
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

Technical Notes:
- Implementation details
- Dependencies
- Edge cases to consider
```

### Example User Stories

#### User Story #1: User Registration
```
As a new user
I want to register for a Mindful-AI account
So that I can access personalized AI recommendations

Acceptance Criteria:
- [ ] User can enter email, password, and name
- [ ] Password must be at least 8 characters
- [ ] Email validation is performed
- [ ] Confirmation email is sent
- [ ] User is redirected to dashboard after registration
- [ ] Error messages are shown for invalid inputs

Technical Notes:
- Use bcrypt for password hashing
- Implement email verification with JWT tokens
- Add reCAPTCHA to prevent bots
- Store user data in PostgreSQL
```

#### User Story #2: AI Chat Integration
```
As a registered user
I want to chat with the AI assistant
So that I can receive mental health guidance

Acceptance Criteria:
- [ ] Chat interface is accessible from dashboard
- [ ] Messages are sent in real-time
- [ ] AI responses appear within 3 seconds
- [ ] Chat history is saved and retrievable
- [ ] User can rate AI responses
- [ ] Privacy disclaimer is shown before first chat

Technical Notes:
- Integrate OpenAI GPT API
- Implement WebSocket for real-time messaging
- Store chat history with encryption
- Add rate limiting (10 messages per minute)
```

## Sprint Backlog Management

### Sprint Planning Process
1. **Sprint Goal Definition**: Team agrees on sprint objective
2. **Story Selection**: Pull items from product backlog based on priority
3. **Capacity Planning**: Consider team velocity and availability
4. **Task Breakdown**: Break stories into technical tasks
5. **Estimation**: Team estimates effort using planning poker
6. **Commitment**: Team commits to sprint backlog

### Sprint Tracking

#### Daily Updates
Each task/issue includes:
- Current status
- Progress comments
- Blockers or dependencies
- Time estimates remaining

#### Sprint Burndown
We track:
- **Planned Story Points**: Total points committed
- **Completed Story Points**: Points completed per day
- **Remaining Work**: Updated daily
- **Velocity**: Average points completed per sprint

### Sprint Artifacts

#### Sprint Board
Our sprint board shows:
```
┌─────────────┬──────────────┬─────────────┬──────────────┐
│   To Do     │ In Progress  │  In Review  │     Done     │
├─────────────┼──────────────┼─────────────┼──────────────┤
│ Story #12   │ Story #8     │ Story #5    │ Story #3     │
│ Story #15   │ Story #10    │ Story #7    │ Story #4     │
│ Bug #45     │ Task #23     │             │ Story #6     │
│             │              │             │ Bug #34      │
└─────────────┴──────────────┴─────────────┴──────────────┘
```

#### Definition of Done (DoD)
A user story is "Done" when:
- [ ] Code is written and follows conventions
- [ ] Unit tests are written and passing
- [ ] Integration tests are passing
- [ ] Code is reviewed and approved
- [ ] Documentation is updated
- [ ] Feature is deployed to staging
- [ ] Product owner has accepted the story
- [ ] No known bugs or issues

## Issue Tracking with GitHub Issues

### Issue Types and Labels

#### Issue Labels
- 🐛 **bug**: Something isn't working
- ✨ **enhancement**: New feature or request
- 📝 **documentation**: Documentation improvements
- 🔧 **tech-debt**: Technical debt that needs addressing
- 🚀 **feature**: New feature implementation
- 🔥 **hotfix**: Critical issue requiring immediate attention
- 🎨 **design**: Design-related tasks
- 🧪 **testing**: Testing-related tasks
- ⚡ **performance**: Performance improvements
- 🔒 **security**: Security-related issues

#### Priority Labels
- 🔴 **P0 - Critical**: Must be fixed immediately
- 🟠 **P1 - High**: Should be fixed soon
- 🟡 **P2 - Medium**: Fix when possible
- 🟢 **P3 - Low**: Nice to have

#### Status Labels
- 📋 **status: backlog**: Not started
- 🚀 **status: ready**: Ready for development
- 👨‍💻 **status: in-progress**: Being worked on
- 👀 **status: in-review**: Under review
- ✅ **status: done**: Completed
- ❌ **status: blocked**: Blocked by dependency

### Issue Templates

#### Bug Report Template
```markdown
**Describe the bug**
A clear and concise description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Expected behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Environment:**
 - OS: [e.g. Windows 10, macOS 12]
 - Browser [e.g. Chrome 98, Firefox 97]
 - Version [e.g. 1.0.0]

**Additional context**
Add any other context about the problem here.
```

#### Feature Request Template
```markdown
**Is your feature request related to a problem?**
A clear and concise description of what the problem is.

**Describe the solution you'd like**
A clear and concise description of what you want to happen.

**Describe alternatives you've considered**
A clear and concise description of any alternative solutions.

**Additional context**
Add any other context or screenshots about the feature request.

**Acceptance Criteria**
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3
```

## Workflow Automation

### GitHub Actions Integrations

#### Automatic Label Assignment
```yaml
# Auto-label PRs based on files changed
- name: Label PRs
  if: github.event_name == 'pull_request'
  run: |
    if [[ "${{ github.event.pull_request.title }}" == feat:* ]]; then
      gh pr edit ${{ github.event.pull_request.number }} --add-label "feature"
    fi
```

#### Project Card Automation
```yaml
# Move cards automatically based on PR status
- name: Update Project
  run: |
    gh project item-edit --project-id $PROJECT_ID \
      --id $ITEM_ID --field-id $STATUS_FIELD_ID \
      --text "In Progress"
```

#### Sprint Automation
- New issues automatically added to backlog
- PR creation moves item to "In Review"
- PR merge moves item to "Done"
- Closing issues removes from sprint board

## Metrics and Reporting

### Key Metrics Tracked

#### Velocity
- **Definition**: Story points completed per sprint
- **Calculation**: Sum of completed story points
- **Target**: Maintain consistent velocity ±10%
- **Review**: Analyzed in sprint retrospective

#### Burndown Chart
- **X-axis**: Days in sprint
- **Y-axis**: Remaining story points
- **Ideal line**: Linear decrease to zero
- **Actual line**: Real progress tracking

#### Cycle Time
- **Definition**: Time from "In Progress" to "Done"
- **Target**: < 3 days for stories < 5 points
- **Tracking**: Automated via GitHub Project timestamps

#### Lead Time
- **Definition**: Time from "Backlog" to "Done"
- **Target**: < 2 weeks for most stories
- **Tracking**: Issue creation to closure time

### Sprint Reports

#### Sprint Summary (End of Sprint)
```
Sprint 12 Summary (Nov 1 - Nov 14)

📊 Metrics:
- Committed: 34 story points
- Completed: 31 story points
- Velocity: 31 points (target: 30)
- Completion rate: 91%

✅ Completed Stories:
- [Story #45] User registration with email verification
- [Story #48] Chat interface UI implementation
- [Story #51] AI response integration
- [Bug #89] Fix mobile navigation menu
- [Bug #92] Resolve login timeout issue

⚠️ Rolled Over:
- [Story #52] Analytics dashboard (8 points) - 60% complete

🚫 Blockers:
- API rate limiting caused delays
- Design assets delivered late

🎯 Next Sprint Goals:
- Complete analytics dashboard
- Implement notification system
- Performance optimization
```

## Ceremonies

### Sprint Planning (First Day of Sprint)
- **Duration**: 2 hours
- **Participants**: Entire team
- **Agenda**:
  1. Review product backlog (15 min)
  2. Select sprint goal (15 min)
  3. Choose user stories (30 min)
  4. Break down into tasks (45 min)
  5. Commitment (15 min)

### Daily Standup (Every Day)
- **Duration**: 15 minutes
- **Format**: Each team member answers:
  1. What did I complete yesterday?
  2. What will I work on today?
  3. Are there any blockers?
- **Updates**: Posted in GitHub Issues as comments

### Sprint Review (Last Day of Sprint)
- **Duration**: 1 hour
- **Participants**: Team + stakeholders
- **Agenda**:
  1. Demo completed work (40 min)
  2. Gather feedback (15 min)
  3. Update product backlog (5 min)

### Sprint Retrospective (After Sprint Review)
- **Duration**: 45 minutes
- **Participants**: Development team
- **Format**:
  1. What went well? 🎉
  2. What could be improved? 🔧
  3. Action items for next sprint 📝

## Backlog Refinement

### Grooming Sessions (Mid-Sprint)
- **Frequency**: Once per sprint
- **Duration**: 1 hour
- **Activities**:
  - Review upcoming stories
  - Add missing details
  - Estimate story points
  - Reorder priorities
  - Remove obsolete items

### Story Point Estimation

#### Planning Poker
- Team members vote simultaneously
- Use Fibonacci sequence: 1, 2, 3, 5, 8, 13, 21
- Discuss discrepancies
- Re-vote until consensus

#### Reference Stories
- 1 point: Simple text change
- 3 points: Small feature with tests
- 5 points: Medium feature, multiple files
- 8 points: Large feature, API integration
- 13 points: Very large, consider splitting

## Collaboration Tools

### Primary: GitHub
- Issues for task tracking
- Projects for sprint/backlog management
- Pull requests for code review
- Discussions for async communication
- Wiki for documentation

### Communication: Slack/Teams
- Daily updates channel
- Sprint planning channel
- General discussion
- Integration with GitHub (notifications)

### Video: Zoom/Meet
- Sprint ceremonies
- Pair programming sessions
- Ad-hoc discussions

## Best Practices

### Team Practices
1. **Update issues daily**: Keep status current
2. **Link commits to issues**: Use "Fixes #123" in commits
3. **Small increments**: Break large stories into smaller ones
4. **Test early**: Write tests alongside code
5. **Review promptly**: Review PRs within 24 hours
6. **Communicate proactively**: Raise blockers immediately

### Product Owner Practices
1. **Prioritize regularly**: Review backlog weekly
2. **Write clear stories**: Include acceptance criteria
3. **Be available**: Answer team questions quickly
4. **Accept/reject promptly**: Review completed work ASAP
5. **Stakeholder communication**: Keep stakeholders informed

### Scrum Master Practices
1. **Remove impediments**: Help team stay productive
2. **Facilitate ceremonies**: Keep meetings on track
3. **Protect the team**: Shield from external interruptions
4. **Coach the team**: Help improve agile practices
5. **Track metrics**: Monitor team health and velocity

## Evidence of Tool Usage

### GitHub Project Board
Our active project board demonstrates:
- ✅ Product backlog with prioritized user stories
- ✅ Sprint backlog with current sprint items
- ✅ Task breakdown and assignments
- ✅ Progress tracking with status updates
- ✅ Completed items archived by sprint

### Sample Evidence (Artifacts)
1. **Project Board Screenshot**: Shows current sprint status
2. **Burndown Chart**: Demonstrates sprint progress
3. **Velocity Chart**: Shows team velocity over 6 sprints
4. **Issue Examples**: Properly formatted user stories
5. **Sprint Retrospective Notes**: Documented improvements

### GitHub Insights Usage
We leverage GitHub's built-in analytics:
- **Contributors**: Track individual contributions
- **Pulse**: Weekly activity summary
- **Code frequency**: Commit activity over time
- **Network**: Branch and fork visualization

## Continuous Improvement

### Metrics Review (Monthly)
- Analyze velocity trends
- Review cycle time improvements
- Assess estimation accuracy
- Identify process bottlenecks

### Process Adjustments
Based on retrospectives, we continuously adapt:
- Sprint length (currently 2 weeks)
- Story point scale (currently Fibonacci)
- Definition of Done criteria
- Automation opportunities

## Training and Onboarding

### New Team Members
- Agile fundamentals training
- GitHub Projects walkthrough
- Shadow experienced members
- Participate in ceremonies
- Pair programming sessions

### Resources
- [Scrum Guide](https://scrumguides.org/)
- [GitHub Projects Documentation](https://docs.github.com/en/issues/planning-and-tracking-with-projects)
- [Agile Manifesto](https://agilemanifesto.org/)
- Internal team wiki with examples

## Conclusion

Our agile development process, centered around GitHub Projects, provides:
- ✅ Clear visibility into product and sprint backlogs
- ✅ Efficient tracking of progress and blockers
- ✅ Seamless integration with code repositories
- ✅ Data-driven insights for continuous improvement
- ✅ Collaborative environment for the team

This systematic approach ensures we deliver value iteratively while maintaining high code quality and team productivity.
