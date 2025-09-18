# Usage Guide

## Shell Functions

Source the ticket functions in your shell:
```bash
source ticket-functions.sh
```

### Available Commands

- `ticket_analyze TICKET-ID` - Analyze git changes for a ticket
- `ticket_doc TICKET-ID` - Generate comprehensive ticket documentation
- `ticket_git_data TICKET-ID` - Show git history for ticket
- `ticket_endpoints` - Check for modified API endpoints
- `ticket_tests` - Find modified test files

## Claude Commands

- `/generate-pr-summary` - AI-powered PR documentation
- `/ticket-analyze` - Analyze current branch changes

## Examples

```bash
# After working on ticket ACG-123
ticket_analyze ACG-123
ticket_doc ACG-123

# Generate PR summary in Claude
/generate-pr-summary
```
