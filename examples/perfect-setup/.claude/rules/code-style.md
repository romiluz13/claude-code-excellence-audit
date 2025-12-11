---
paths: src/**/*.{ts,tsx}
---

# Code Style Rules

## TypeScript

- Use explicit return types for functions
- Prefer `interface` over `type` for object shapes
- Use `unknown` instead of `any` when type is truly unknown
- Enable strict mode in tsconfig

## React

- Functional components only (no class components)
- Use named exports for components
- Props interface named `[Component]Props`
- Destructure props in function signature

## Imports

```typescript
// Order: external, internal, relative, styles
import { useState } from 'react';
import { useQuery } from '@tanstack/react-query';

import { api } from '@/services/api';
import { Button } from '@/components/Button';

import { helper } from './helper';
import styles from './styles.module.css';
```

## Naming

- Boolean variables: `is`, `has`, `should` prefix
- Event handlers: `handle` prefix (`handleClick`, `handleSubmit`)
- Custom hooks: `use` prefix (`useAuth`, `useForm`)
