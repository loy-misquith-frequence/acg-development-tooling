# Backend API Patterns

## Controller Pattern
- Keep controllers thin, delegate to services
- Use dependency injection for services
- Handle validation through Form Requests
- Return consistent JSON responses

## Service Pattern  
- Handle business logic and external API orchestration
- Validate data locally before external calls
- Store local references with external IDs
- Implement rollback mechanisms for failures
- Use repositories for data access

## Repository Pattern
- Data access layer abstraction
- Implement caching strategies
- Handle database transactions
- Return models or collections

## Response Format
- Success: `success`, `data`, `message` fields
- Error: `success`, `error`, `code` fields
- Use appropriate HTTP status codes
- Consistent error message structure

## Validation
- Use Form Requests for complex validation
- Return validation errors in consistent format
- Validate before external API calls
- Handle business rule validation in services