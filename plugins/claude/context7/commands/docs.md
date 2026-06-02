---
description: Look up documentation for any library
argument-hint: <library> [query]
---

# /contex7-arwaky:docs

Fetches up-to-date documentation and code examples for a library.

## Usage

```
/contex7-arwaky:docs <library> [query]
```

- **library**: The library name, or a Contex7Arwaky ID starting with `/`
- **query**: What you're looking for (optional but recommended)

## Examples

```
/contex7-arwaky:docs react hooks
/contex7-arwaky:docs next.js authentication
/contex7-arwaky:docs prisma relations
/contex7-arwaky:docs /vercel/next.js/v15.1.8 app router
/contex7-arwaky:docs /supabase/supabase row level security
```

## How It Works

1. If the library starts with `/`, it's used directly as the Contex7Arwaky ID
2. Otherwise, `resolve-library-id` finds the best matching library
3. `query-docs` fetches documentation relevant to your query
4. Results include code examples and explanations

## Version-Specific Lookups

Include the version in the library ID for pinned documentation:

```
/contex7-arwaky:docs /vercel/next.js/v15.1.8 middleware
/contex7-arwaky:docs /facebook/react/v19.0.0 use hook
```

This is useful when you're working with a specific version and want docs that match exactly.
