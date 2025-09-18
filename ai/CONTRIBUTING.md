# Contributing to AI Context

## Adding Context Patterns

### Topic Context (General Patterns)
Edit these when patterns change across all services:
- `ai/context/by-topic/backend-api-patterns.md`
- `ai/context/by-topic/external-api-integration.md` 
- `ai/context/by-topic/testing-backend-apis.md`

### Service Context (Specific Patterns)
Create `ai/context/by-service/[service]-api.md` when:
- Same pattern used 2+ times in one service area
- Service has unique external API patterns  
- Service needs specific testing approaches
- Patterns don't fit in general topic files

## Autonomous Development Workflow When Working on a JIRA Ticket

### During Development
1. **Note unique patterns**: Document during development, not after
2. **Update context files**: Add patterns that repeat 2+ times
3. **Include context hints**: Add commit message notes about new patterns

### Commit Message Format
```bash
git commit -m "feat: add campaign validation logic

Context: Unique campaign validation pattern - consider campaign-api.md context file"
```

## Service Context Template

**New Service Context File:**
```markdown
# [Service] API Context

## Focus
[What makes this service unique]

## Unique Patterns
- [Pattern]: [Why it's different from general patterns]

## External APIs
- [Service-specific external API patterns]

## Testing
- [Service-specific testing approaches]
```

## Guidelines

- Only document patterns that actually repeat
- Prefer general patterns over service-specific ones
- Update context during development, not after