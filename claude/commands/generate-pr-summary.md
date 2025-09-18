Document implementation for ticket **$1**.

**Usage**: Run after completing development work to create comprehensive context documentation.

**Steps**:
1. Get ticket details: `jira issue view $1`
2. Create documentation file: `ai/tickets/$1.md`
3. Analyze the PR and document the implementation details including code examples, architectural decisions and patterns used.

**Ticket Summary**: Brief descriptive title of what was implemented 
**Date**: Today's date 
**Type**: feature|bug-fix|enhancement|refactor  
**Complexity**: Rate it 1-5 (low to high)

## Requirements

## Implementation Summary
**What Was Implemented**: High-level overview of specific features/fixes delivered 
1. **Service Area**: workflow|campaign|template|gam|external|inventory|etc., 
2. **Patterns Used**: controller, service, repository, external-api, database, caching  
3. **Files & APIs**:
```
    APIs:
    ├── POST /api/v3/[endpoint] - functionality description
    │   ├── app/Http/Controllers/[Name]Controller.php - controller implementation
    │   ├── app/Http/Services/[Name]Service.php - service method()
    │   └── tests/[Test]Test.php - test coverage
```
4. **External Dependencies and Integrations**:
    - brief details on any external service integrations and API calls, including Frequency platform calls, integration calls, and third-party APIs, etc., and mention only if modified as part of this ticket. If no changes, mention "NONE".
```
    External APIs:
        └── Third-party API - integration description
```
5. **Architecture Pattern**:
    - Controller→Service→Repository | Direct DB | External API integration
    - Specific design decisions made and reasoning
6. **Code Patterns**:
``` php
    - Key implementation pattern in 3-5 lines
    - Include the core reusable pattern here
```
7. **Database Changes**:
    - Tables/columns added/modified and migrations created. If no changes, mention "NONE".
8. **Error Handling & Testing**:
    - Validation strategy and external API failure handling 
    - Unit tests created/modified: Specify tests or mention "NONE"
    - Integration test approach: Describe approach or mention "NONE"
    - Manual testing performed 
9. **Pull Request**:
    - Attach only the PR number. No other info needed 

## Reusable Patterns & Context
1. **Implementation Patterns for Future Use**:
    - Pattern name: When to use this approach 
    - Integration pattern: How external APIs were handled 
    - Error handling pattern: Reusable error management approach 

2. **Performance & Future Context**:
    - Database query optimization and API response time impact 
    - What similar tickets can learn from this implementation 
    - Dependencies other developers should know about 