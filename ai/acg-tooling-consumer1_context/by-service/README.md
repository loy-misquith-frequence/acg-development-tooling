# Service-Specific Context

## When to Add Service Context

Add a new service context file when you encounter patterns that:

1. **Don't fit general backend patterns** in `by-topic/`
2. **Are repeated across multiple implementations** in the same service
3. **Have unique external API integration requirements**
4. **Require service-specific testing approaches**

## How to Add Service Context

### During Development
When Claude helps you implement something new:

1. **Ask yourself**: "Is this pattern general or service-specific?"
2. **If service-specific**: Note it in your commit message
3. **If repeated 2+ times**: Create service context file

### File Naming
- `workflow-api.md` - For workflow-related endpoints
- `template-api.md` - For template-related endpoints  
- `campaign-api.md` - For campaign-related endpoints
- `[service]-api.md` - For other services

### Template for New Service Context
```markdown
# [Service] API Context

## Focus
[What this service handles specifically]

## Unique Patterns
- [Pattern 1]: [Why it's different from general patterns]
- [Pattern 2]: [Specific requirements]

## External APIs
- [Specific external API patterns unique to this service]

## Testing
- [Service-specific testing approaches]
```

## Current Services
None yet - add as patterns emerge during development.