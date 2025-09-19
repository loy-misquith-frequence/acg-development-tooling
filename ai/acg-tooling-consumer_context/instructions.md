# AI Context Loading Instructions

## Context Loading Process

**Follow the rules in `ai/context/mapping.md` to load context automatically.**

## Repository Details

- Laravel backend API repository
- Integrates with: Frequence Platform repository and Integrations repository
- Architecture: Controllers → Services → Repositories → External APIs

## When Working on Tickets

### Developer/User Working on Ticket

**Never update context files without user confirmation**

**Ask about documentation**: Ask if they want to document ticket work in `ai/tickets/by-service/[service]/[TICKET-ID].md`

**Ask about context updates**: If new patterns emerge during work:
- Service patterns → ask to add to `ai/context/by-service/[service]-api.md`
- General patterns → ask to add to `ai/context/by-topic/[topic].md`

**Keep it simple, keep changes minimal**

### AI Working Autonomously on Ticket

**Always document ticket work**: Create ticket documentation in `ai/tickets/by-service/[service]/[TICKET-ID].md`

**Update context when patterns emerge**:
- Service patterns → add to `ai/context/by-service/[service]-api.md`
- General patterns → add to `ai/context/by-topic/[topic].md` (only if applies across all services)

**Keep it simple, keep changes minimal**

## Behavior Guidelines

### Working with Users vs Autonomous Work
- **User present**: Ask before updating context files, ask about documentation
- **Autonomous**: Always document tickets, proactively update context when patterns emerge

### Pattern Recognition
- Document patterns that repeat 2+ times within same service
- Keep changes minimal and focused
- Prefer general patterns over service-specific ones