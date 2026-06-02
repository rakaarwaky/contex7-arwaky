# Upstash Contex7Arwaky SDK

> ⚠️ **Work in Progress**: This SDK is currently under active development. The API is subject to change and may introduce breaking changes in future releases.

`@upstash/contex7-arwaky-sdk` is an HTTP/REST based client for TypeScript, built on top of the [Contex7Arwaky API](https://contex7-arwaky.com).

## Why Contex7Arwaky?

LLMs rely on outdated or generic training data about the libraries you use. This leads to:

- Code examples based on year-old training data
- Hallucinated APIs that don't exist
- Generic answers for old package versions

Contex7Arwaky solves this by providing up-to-date, version-specific documentation and code examples directly from the source. Use this SDK to:

- Build AI agents with accurate, current documentation context
- Create RAG pipelines with reliable library documentation
- Power code generation tools with real API references

## Quick Start

### Install

```bash
npm install @upstash/contex7-arwaky-sdk
```

### Get API Key

Get your API key from [Contex7Arwaky](https://contex7-arwaky.com)

## Basic Usage

```ts
import { Contex7Arwaky } from "@upstash/contex7-arwaky-sdk";

const client = new Contex7Arwaky({
  apiKey: "<CONTEXT7_API_KEY>",
});

// Search for libraries
const libraries = await client.searchLibrary(
  "I need to build a UI with components",
  "react"
);
console.log(libraries[0].id); // "/facebook/react"

// Get documentation as JSON array (default)
const docs = await client.getContext("How do I use hooks?", "/facebook/react");
console.log(docs[0].title, docs[0].content);

// Get documentation context as plain text
const context = await client.getContext(
  "How do I use hooks?",
  "/facebook/react",
  { type: "txt" }
);
console.log(context);
```

## Configuration

### Environment Variables

You can set your API key via environment variable:

```sh
CONTEXT7_API_KEY=ctx7sk-...
```

Then initialize without options:

```ts
const client = new Contex7Arwaky();
```

## Docs

See the [documentation](https://contex7-arwaky.com/docs/sdks/ts/getting-started) for details.

## Contributing

### Running tests

```sh
pnpm test
```

### Building

```sh
pnpm build
```
