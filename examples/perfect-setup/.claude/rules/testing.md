---
paths: src/**/*.test.{ts,tsx}, tests/**/*
---

# Testing Rules

## File Organization

- Test files next to source: `Component.tsx` + `Component.test.tsx`
- Integration tests in `/tests/integration/`
- E2E tests in `/tests/e2e/`

## Test Structure

```typescript
describe('ComponentName', () => {
  describe('when [condition]', () => {
    it('should [expected behavior]', () => {
      // Arrange
      // Act
      // Assert
    });
  });
});
```

## Best Practices

- Test behavior, not implementation
- Use meaningful test descriptions
- One assertion per test (when possible)
- Mock external dependencies
- Test edge cases and error states

## Coverage Requirements

- Minimum 80% coverage for new code
- Critical paths must have 100% coverage
- Test all error handling paths
