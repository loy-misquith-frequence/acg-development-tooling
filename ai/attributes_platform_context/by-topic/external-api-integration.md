# External API Integration

## FrequencePlatform Helper
- Use `FrequencePlatformApiHelper` for all FP calls
- Check response success before proceeding
- Handle FP-specific error formats and codes
- Pass through authentication tokens properly

## Integrations Helper
- Use `IntegrationsApiHelper` for third-party services
- Process different response formats from various services
- Implement fallback strategies for service failures
- Handle rate limiting from external services

## Retry Pattern
- Implement exponential backoff for failed calls
- Set maximum retry attempts (typically 3)
- Classify errors as retryable vs permanent failures
- Log retry attempts for monitoring and debugging

## Error Handling
- Log all external API errors with full context
- Return structured error responses to frontend
- Implement graceful degradation when possible
- Distinguish between client errors vs external API failures

## Authentication & Security
- Store API keys securely in environment variables
- Implement proper token refresh mechanisms
- Validate external API responses for security
- Handle expired tokens gracefully

## Caching
- Cache external API responses appropriately (5-15 minutes typical)
- Use meaningful cache keys with proper namespacing
- Implement cache invalidation strategies
- Consider cache warming for critical data