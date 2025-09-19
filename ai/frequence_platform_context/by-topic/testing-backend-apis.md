# Testing Backend APIs

## Feature Tests
- Test API endpoints end-to-end
- Use existing login traits for authentication
- Assert response structure and status codes
- Test both success and error scenarios
- Verify database state changes

## Unit Tests
- Mock repository and helper dependencies
- Test service layer business logic in isolation
- Use `shouldReceive()` for method expectations
- Assert return values and method calls
- Test edge cases and error conditions

## External API Mocking
- Use `Http::fake()` to mock external services completely
- Mock both Frequence Platform and Integrations APIs
- Test failure scenarios and retry logic
- Verify external API calls are made with correct parameters
- Test timeout and connection error scenarios

## Validation Testing
- Use data providers for testing validation rules
- Test field requirements, formats, and business rules
- Verify error messages are meaningful
- Test edge cases and boundary conditions

## Test Organization
- Feature tests in `tests/Feature/Apis/`
- Unit tests in `tests/Unit/Services/`
- Repository tests in `tests/Unit/Repositories/`
- Helper tests in `tests/Unit/Helpers/`
- Follow existing test patterns and naming conventions

## Test Data
- Use factories for consistent test data
- Clean up test data after each test
- Use database transactions for isolation
- Create realistic test scenarios