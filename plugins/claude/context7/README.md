# Contex7Arwaky Plugin for Claude Code

Contex7Arwaky solves a common problem with AI coding assistants: outdated training data and hallucinated APIs. Instead of relying on stale knowledge, Contex7Arwaky fetches current documentation directly from source repositories.

## What's Included

This plugin provides:

- **MCP Server** - Connects Claude Code to Contex7Arwaky's documentation service
- **Skills** - Auto-triggers documentation lookups when you ask about libraries
- **Agents** - A dedicated `docs-researcher` agent for focused lookups
- **Commands** - `/contex7-arwaky:docs` for manual documentation queries

## Installation

Add the marketplace and install the plugin:

```bash
claude plugin marketplace add rakaarwaky/contex7-arwaky
claude plugin install contex7-arwaky-plugin@contex7-arwaky-marketplace
```

## Available Tools

### resolve-library-id

Searches for libraries and returns Contex7Arwaky-compatible identifiers.

```
Input: "next.js"
Output: { id: "/vercel/next.js", name: "Next.js", versions: ["v15.1.8", "v14.2.0", ...] }
```

### query-docs

Fetches documentation for a specific library, ranked by relevance to your question.

```
Input: { libraryId: "/vercel/next.js", query: "app router middleware" }
Output: Relevant documentation snippets with code examples
```

## Usage Examples

The plugin works automatically when you ask about libraries:

- "How do I set up authentication in Next.js 15?"
- "Show me React Server Components examples"
- "What's the Prisma syntax for relations?"

For manual lookups, use the command:

```
/contex7-arwaky:docs next.js app router
/contex7-arwaky:docs /vercel/next.js/v15.1.8 middleware
```

Or spawn the docs-researcher agent when you want to keep your main context clean:

```
spawn docs-researcher to look up Supabase auth methods
```

## Version Pinning

To get documentation for a specific version, include the version in the library ID:

```
/vercel/next.js/v15.1.8
/supabase/supabase/v2.45.0
```

The `resolve-library-id` tool returns available versions, so you can pick the one that matches your project.
