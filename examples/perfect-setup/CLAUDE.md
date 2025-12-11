# My Project

> A 100/100 Claude Code Excellence Setup Example

## Build & Test Commands

```bash
# Development
npm run dev          # Start development server
npm run build        # Production build
npm run test         # Run all tests
npm run test:watch   # Tests in watch mode
npm run lint         # Lint code
npm run lint:fix     # Fix lint issues
npm run typecheck    # TypeScript check
```

## Code Style

- **Language**: TypeScript (strict mode)
- **Formatting**: Prettier with 2-space indentation
- **Naming**:
  - Variables/functions: `camelCase`
  - Components/Classes: `PascalCase`
  - Constants: `SCREAMING_SNAKE_CASE`
  - Files: `kebab-case.ts` (utils), `PascalCase.tsx` (components)
- **Imports**: Absolute paths via `@/` alias
- **Max line length**: 100 characters

## Architecture

### Directory Structure

```
src/
├── components/     # Reusable UI components
├── pages/          # Page components (routes)
├── hooks/          # Custom React hooks
├── utils/          # Utility functions
├── services/       # API clients, external services
├── types/          # TypeScript type definitions
├── constants/      # App constants
└── styles/         # Global styles
```

### Key Files

- `src/app.tsx` - Main application entry
- `src/services/api.ts` - API client configuration
- `src/types/index.ts` - Shared type definitions
- `src/utils/helpers.ts` - Common utility functions

### Patterns

- **State Management**: React Context + useReducer for global state
- **Data Fetching**: TanStack Query with custom hooks
- **Error Handling**: Error boundaries + toast notifications
- **Testing**: Vitest + React Testing Library

## Project-Specific Rules

- All API calls go through `src/services/api.ts`
- Components must have unit tests
- Use `zod` for runtime validation
- Environment variables in `.env.local` (never commit)

## Dependencies

- **React 18** - UI framework
- **TypeScript 5** - Type safety
- **TanStack Query** - Data fetching
- **Zod** - Schema validation
- **Tailwind CSS** - Styling

## Git Workflow

- Branch naming: `feature/`, `fix/`, `chore/`
- Commit messages: Conventional Commits
- PRs require 1 approval
- Squash merge to main
