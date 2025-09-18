# Attributes Platform JIRA Analysis & Implementation Prompt

**IMPORTANT!** Before assisting with any code changes, ALWAYS load the AI rules that are relevant to the task at hand.

Load and follow the instructions listed inside of `@ai/context/instructions.md` to help you determine what rules to load, and in what order. Also reference `@ai/context/mapping.md` for  guidance.

You are working on JIRA **{{JIRA_ID}}** for the **Attributes Platform**. Go through the following workflow step by step and implement the changes requested in the JIRA.

## Repository Context
- Framework: Laravel and PHP
- Database: MySQL (brandcdn)
- Documentation: Swagger/L5-Swagger
- Testing: PHPUnit (Feature + Unit tests)
- Key Integrations: AWS, Google Ads, Salesforce, MatchCraft

## WORKFLOW STEPS

1. **Load Context & Understand Requirements**
   - Use Bash command `jira issue view {{JIRA_ID}}` to gather full ticket details
   - Summarize: ticket type, description, acceptance criteria, and estimated complexity
   - Files analytics: Identify the necessary files for modification.
   - Load appropriate rules: Load rules as needed from ai/rules/ folder. If no rules are present, skip this step.

2. **Prepare Development Branch**
   - Check if branch exists: Use Bash command `git branch -a | grep -i {{JIRA_ID}}`
   - If exists: Use Bash command `git checkout <branch-name> && git pull`
   - If not: Use Bash command `git checkout develop && git pull && git checkout -b ai-{{JIRA_ID}}-<short-descriptive-title>`

3. **Analyze Codebase Patterns**
   - Controllers: Check `app/Http/Controllers/` for similar functionality
   - Routes: Review affected route files in `routes/`
   - Services: Examine `app/Http/Services/` for business logic patterns
   - Models: Check `app/Http/Models/` for data relationships
   - Constants: Check `app/Constants` for constants
   - Tests: Review `tests/Feature/` and `tests/Unit/` for testing patterns

4. **Create and Document Implementation Plan**
   - Create or update: `ai/tickets/{{JIRA_ID}}--details.md`
   - Document the implementation plan, highlighting the primary areas requiring modification, files changes

5. **Implement Code Changes**
   - Follow Laravel/Project Conventions.
   - Controllers: Keep thin, delegate to Services
   - Services: Implement business logic, use Repositories for data access
   - Models: Define relationships, use proper fillable/guarded
   - Error Handling: Use try-catch blocks, return proper HTTP status codes
   - Logging: Adhere to the established logging practices within the codebase. Ensure logs are concise, relevant, and utilize appropriate logging levels.
   - Performance: SQL queries should be optimal and should not cause any performance issues.
   - Depth: Limit changes to those necessary for the JIRA ticket's objective.

6. **Testing Implementation**
   - Instructions on this will be added in future. Skip it for now.

7. **API Documentation**
   - Instructions on this will be added in future. Skip it for now.

8. **Final Documentation & Commit**
   - Update `ai/tickets/{{JIRA_ID}}-details.md` documentation with implementation details.
   - Add commit following project conventions
   - Use Bash command `git add .` then `git commit -m "[{{JIRA_ID}}] <short-descriptive-title>"`
   - Use Bash command `git push origin <branch-name>`

8. **Create Pull Request**
   - Use Bash command `gh pr create --draft --title "[{{JIRA_ID}}] <title>" --body "Addresses {{JIRA_ID}}\n\n[short-descriptive-title]"`
   - Add a comment in the Jira issue with the PR link after creation with `jira issue comment add {{JIRA_ID}} "Pull Request created: [PR Link](<link>) --no-input"`

9. **Add JIRA Labels to PR**
   - After PR creation, attempt to add the 'WORKFLOW_ACG_CODE' label to the jira ticket (`jira issue edit {{JIRA_ID}} --label <label_name> --no-input` command)

**IMPORTANT GUIDELINES:**
- Stop and report if you lack necessary information or tools
- Don't make assumptions about schemas, APIs, or business logic
- Ask for clarification rather than guessing implementation details
- Document any missing access or tools that would help
- Always follow existing patterns rather than introducing new approaches
- Prioritize correctness over speed

**FAILURE REPORTING:**
If you cannot complete any step, provide a formatted output (breaking lines).
- Exact step where you stopped
- Specific error message or missing information
- What additional access/tools/context would help
- Suggested next steps for a human to take