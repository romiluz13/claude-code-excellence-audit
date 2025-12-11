---
paths: src/**/*
---

# Security Rules

## Secrets

- NEVER hardcode API keys, tokens, or credentials
- Use environment variables for all secrets
- Add sensitive files to .gitignore

## Input Validation

- Validate ALL user input with Zod schemas
- Sanitize data before rendering (prevent XSS)
- Use parameterized queries (prevent SQL injection)

## Authentication

- Store tokens in httpOnly cookies (not localStorage)
- Implement token refresh mechanism
- Clear tokens on logout

## API Security

- Always use HTTPS
- Validate response data structure
- Handle errors without exposing internals
- Implement rate limiting awareness
