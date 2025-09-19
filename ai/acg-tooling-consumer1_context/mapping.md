# Context Detection and Mapping Rules

## Context Loading Rules

### Always Load Core Context
- `ai/context/by-topic/backend-api-patterns.md` - Always loaded
- `ai/context/by-topic/external-api-integration.md` - Always loaded
- `ai/context/by-topic/testing-backend-apis.md` - Always loaded

### Route-Based Service Detection
Determine service context based on file paths and routes being worked on. Skip the detection if markdown files are not found or present for the routes specified.
```
/routes/workflow.php → ai/context/by-service/workflow-api.md
/routes/templateEngine.php → ai/context/by-service/template-api.md
/routes/campaign.php → ai/context/by-service/campaign-api.md
/routes/external.php → ai/context/by-service/integration-api.md
/routes/gam.php → ai/context/by-service/gam-api.md
/routes/matchCraft.php → ai/context/by-service/matchcraft-api.md
/routes/inventory.php → ai/context/by-service/inventory-api.md
/routes/templates.php → ai/context/by-service/templates-api.md
/routes/webproposal.php → ai/context/by-service/webproposal-api.md
/routes/widgets.php → ai/context/by-service/widgets-api.md
/routes/workorder.php → ai/context/by-service/workorder-api.md
```

## Topic Detection

### File Type Detection
```
*Controller.php → backend-api-patterns
*Service.php → backend-api-patterns + external-api-integration
*Repository.php → backend-api-patterns
*Request.php → backend-api-patterns
*Test.php → testing-backend-apis
*Helper.php → backend-api-patterns + external-api-integration
```

### Task Type Detection
```
"API endpoint" → backend-api-patterns
"external API" → external-api-integration
"testing" → testing-backend-apis
"Laravel" → backend-api-patterns
```

## Context Loading Logic

### Standard Loading
1. Load all topic context (general patterns)
2. Detect and load relevant route based and service context
3. Apply Laravel/PHP conventions as baseline

### Priority Resolution
1. **Topic context** provides foundational patterns (always loaded)
2. **Service context** supplements with specific patterns (when route matches)
3. **Laravel/PHP conventions** as fallback

## Default Loading
If no specific context is found:
1. Load backend-api-patterns
2. Load external-api-integration
3. Laravel/PHP conventions as fallback