#!/bin/bash

# Source this file: source ticket-functions.sh

# Quick git data collection
ticket_git_data() {
    local ticket_id="$1"
    echo "=== Recent commits for $ticket_id ==="
    git log --grep="$ticket_id" --oneline --since="2 weeks ago"
    echo -e "\n=== Modified files ==="
    git diff --name-only HEAD~5..HEAD
    echo -e "\n=== File statistics ==="
    git diff --stat HEAD~5..HEAD
}

# Analyze endpoints
ticket_endpoints() {
    echo "=== Checking for API endpoints ==="
    git diff --name-only HEAD~5..HEAD | grep -E "(routes|Controllers)" || echo "No route/controller files found"
}

# Check tests
ticket_tests() {
    echo "=== Test files modified ==="
    git diff --name-only HEAD~5..HEAD | grep -i test || echo "No test files found"
}

# Generate quick doc
ticket_doc() {
    local ticket_id="$1"
    if [ -z "$ticket_id" ]; then
        echo "Usage: ticket_doc TICKET-ID"
        return 1
    fi
    
    mkdir -p ai/tickets
    cat > "ai/tickets/$ticket_id.md" << EOF
# $ticket_id - [Add Title]

**Developer**: $(git config user.name)
**Date**: $(date +%Y-%m-%d)
**Type**: [feature/bug-fix/enhancement]
**Complexity**: ⭐⭐⭐ (1-5 stars)

## What Changed
- [Brief bullet points of main changes]

## Files Modified
$(git diff --name-only HEAD~5..HEAD | sed 's/^/- `/' | sed 's/$/` - [what was changed]/')

## Recent Commits
\`\`\`
$(git log --oneline --max-count=5)
\`\`\`

## API Endpoints
- [Add any new or modified endpoints]

## Testing
- [How it was tested]

## Notes
- [Any important notes or gotchas]
EOF
    
    echo "Created ai/tickets/$ticket_id.md"
    echo "Run: code ai/tickets/$ticket_id.md"
}

# All-in-one ticket analysis
ticket_analyze() {
    local ticket_id="$1"
    ticket_git_data "$ticket_id"
    echo -e "\n"
    ticket_endpoints
    echo -e "\n"
    ticket_tests
    echo -e "\n=== Generate doc with: ticket_doc $ticket_id ==="
}