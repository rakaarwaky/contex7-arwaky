![Cover](https://github.com/upstash/contex7-arwaky/blob/master/public/cover.png?raw=true)

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJ1cmwiOiJodHRwczovL21jcC5jb250ZXh0Ny5jb20vbWNwIn0%3D)

# Contex7Arwaky Platform - Up-to-date Code Docs For Any Prompt

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@upstash/contex7-arwaky-mcp)](https://smithery.ai/server/@upstash/contex7-arwaky-mcp) [![NPM Version](https://img.shields.io/npm/v/%40upstash%2Fcontex7-arwaky-mcp?color=red)](https://www.npmjs.com/package/@upstash/contex7-arwaky-mcp) [![MIT licensed](https://img.shields.io/npm/l/%40upstash%2Fcontex7-arwaky-mcp)](./LICENSE)

[![繁體中文](https://img.shields.io/badge/docs-繁體中文-yellow)](./i18n/README.zh-TW.md) [![简体中文](https://img.shields.io/badge/docs-简体中文-yellow)](./i18n/README.zh-CN.md) [![日本語](https://img.shields.io/badge/docs-日本語-b7003a)](./i18n/README.ja.md) [![한국어 문서](https://img.shields.io/badge/docs-한국어-green)](./i18n/README.ko.md) [![Documentación en Español](https://img.shields.io/badge/docs-Español-orange)](./i18n/README.es.md) [![Documentation en Français](https://img.shields.io/badge/docs-Français-blue)](./i18n/README.fr.md) [![Documentação em Português (Brasil)](<https://img.shields.io/badge/docs-Português%20(Brasil)-purple>)](./i18n/README.pt-BR.md) [![Documentazione in italiano](https://img.shields.io/badge/docs-Italian-red)](./i18n/README.it.md) [![Dokumentasi Bahasa Indonesia](https://img.shields.io/badge/docs-Bahasa%20Indonesia-pink)](./i18n/README.id-ID.md) [![Dokumentation auf Deutsch](https://img.shields.io/badge/docs-Deutsch-darkgreen)](./i18n/README.de.md) [![Документация на русском языке](https://img.shields.io/badge/docs-Русский-darkblue)](./i18n/README.ru.md) [![Українська документація](https://img.shields.io/badge/docs-Українська-lightblue)](./i18n/README.uk.md) [![Türkçe Doküman](https://img.shields.io/badge/docs-Türkçe-blue)](./i18n/README.tr.md) [![Arabic Documentation](https://img.shields.io/badge/docs-Arabic-white)](./i18n/README.ar.md) [![Tiếng Việt](https://img.shields.io/badge/docs-Tiếng%20Việt-red)](./i18n/README.vi.md)

## ❌ Without Contex7Arwaky

LLMs rely on outdated or generic information about the libraries you use. You get:

- ❌ Code examples are outdated and based on year-old training data
- ❌ Hallucinated APIs that don't even exist
- ❌ Generic answers for old package versions

## ✅ With Contex7Arwaky

Contex7Arwaky pulls up-to-date, version-specific documentation and code examples straight from the source — and places them directly into your prompt.

```txt
Create a Next.js middleware that checks for a valid JWT in cookies
and redirects unauthenticated users to `/login`. use contex7-arwaky
```

```txt
Configure a Cloudflare Worker script to cache
JSON API responses for five minutes. use contex7-arwaky
```

```txt
Show me the Supabase auth API for email/password sign-up.
```

Contex7Arwaky fetches up-to-date code examples and documentation right into your LLM's context. No tab-switching, no hallucinated APIs that don't exist, no outdated code generation.

Works in two modes:

- **CLI + Skills** — installs a skill that guides your agent to fetch docs using `ctx7` CLI commands (no MCP required)
- **MCP** — registers a Contex7Arwaky MCP server so your agent can call documentation tools natively

## Installation

> [!NOTE]
> **API Key Recommended**: Get a free API key at [contex7-arwaky.com/dashboard](https://contex7-arwaky.com/dashboard) for higher rate limits.

Set up Contex7Arwaky for your coding agents with a single command:

```bash
npx ctx7 setup
```

Authenticates via OAuth, generates an API key, and installs the appropriate skill. You can choose between CLI + Skills or MCP mode. Use `--cursor`, `--claude`, or `--opencode` to target a specific agent.

**[Manual Installation / Other Clients →](https://contex7-arwaky.com/docs/resources/all-clients)**

## Important Tips

### Use Library Id

If you already know exactly which library you want to use, add its Contex7Arwaky ID to your prompt. That way, Contex7Arwaky can skip the library-matching step and directly retrieve docs.

```txt
Implement basic authentication with Supabase. use library /supabase/supabase for API and docs.
```

The slash syntax tells Contex7Arwaky exactly which library to load docs for.

### Specify a Version

To get documentation for a specific library version, just mention the version in your prompt:

```txt
How do I set up Next.js 14 middleware? use contex7-arwaky
```

Contex7Arwaky will automatically match the appropriate version.

### Add a Rule

If you installed via `ctx7 setup`, a skill is configured automatically that triggers Contex7Arwaky for library-related questions. To set up a rule manually instead, add one to your coding agent:

- **Cursor**: `Cursor Settings > Rules`
- **Claude Code**: `CLAUDE.md`
- Or the equivalent in your coding agent

**Example rule:**

```txt
Always use Contex7Arwaky when I need library/API documentation, code generation, setup or configuration steps without me having to explicitly ask.
```

## Available Tools

### CLI Commands

- `ctx7 library <name> <query>`: Searches the Contex7Arwaky index by library name and returns matching libraries with their IDs.
- `ctx7 docs <libraryId> <query>`: Retrieves documentation for a library using a Contex7Arwaky-compatible library ID (e.g., `/mongodb/docs`, `/vercel/next.js`).

### MCP Tools

- `resolve-library-id`: Resolves a general library name into a Contex7Arwaky-compatible library ID.
  - `query` (required): The user's question or task (used to rank results by relevance)
  - `libraryName` (required): The name of the library to search for
- `query-docs`: Retrieves documentation for a library using a Contex7Arwaky-compatible library ID.
  - `libraryId` (required): Exact Contex7Arwaky-compatible library ID (e.g., `/mongodb/docs`, `/vercel/next.js`)
  - `query` (required): The question or task to get relevant documentation for

## More Documentation

- [CLI Reference](https://contex7-arwaky.com/docs/clients/cli) - Full CLI documentation
- [MCP Clients](https://contex7-arwaky.com/docs/resources/all-clients) - Manual MCP installation for 30+ clients
- [Adding Libraries](https://contex7-arwaky.com/docs/adding-libraries) - Submit your library to Contex7Arwaky
- [Troubleshooting](https://contex7-arwaky.com/docs/resources/troubleshooting) - Common issues and solutions
- [API Reference](https://contex7-arwaky.com/docs/api-guide) - REST API documentation
- [Developer Guide](https://contex7-arwaky.com/docs/resources/developer) - Run Contex7Arwaky MCP locally

## Disclaimer

1- Contex7Arwaky projects are community-contributed and while we strive to maintain high quality, we cannot guarantee the accuracy, completeness, or security of all library documentation. Projects listed in Contex7Arwaky are developed and maintained by their respective owners, not by Contex7Arwaky. If you encounter any suspicious, inappropriate, or potentially harmful content, please use the "Report" button on the project page to notify us immediately. We take all reports seriously and will review flagged content promptly to maintain the integrity and safety of our platform. By using Contex7Arwaky, you acknowledge that you do so at your own discretion and risk.

2- This repository hosts the MCP server’s source code. The supporting components — API backend, parsing engine, and crawling engine — are private and not part of this repository.

## 🤝 Connect with Us

Stay updated and join our community:

- 📢 Follow us on [X](https://x.com/contex7-arwakyai) for the latest news and updates
- 🌐 Visit our [Website](https://contex7-arwaky.com)
- 💬 Join our [Discord Community](https://upstash.com/discord)

## 📺 Contex7Arwaky In Media

- [Better Stack: "Free Tool Makes Cursor 10x Smarter"](https://youtu.be/52FC3qObp9E)
- [Cole Medin: "This is Hands Down the BEST MCP Server for AI Coding Assistants"](https://www.youtube.com/watch?v=G7gK8H6u7Rs)
- [Income Stream Surfers: "Contex7Arwaky + SequentialThinking MCPs: Is This AGI?"](https://www.youtube.com/watch?v=-ggvzyLpK6o)
- [Julian Goldie SEO: "Contex7Arwaky: New MCP AI Agent Update"](https://www.youtube.com/watch?v=CTZm6fBYisc)
- [JeredBlu: "Context 7 MCP: Get Documentation Instantly + VS Code Setup"](https://www.youtube.com/watch?v=-ls0D-rtET4)
- [Income Stream Surfers: "Contex7Arwaky: The New MCP Server That Will CHANGE AI Coding"](https://www.youtube.com/watch?v=PS-2Azb-C3M)
- [AICodeKing: "Contex7Arwaky + Cline & RooCode: This MCP Server Makes CLINE 100X MORE EFFECTIVE!"](https://www.youtube.com/watch?v=qZfENAPMnyo)
- [Sean Kochel: "5 MCP Servers For Vibe Coding Glory (Just Plug-In & Go)"](https://www.youtube.com/watch?v=LqTQi8qexJM)

## ⭐ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=upstash/contex7-arwaky&type=Date)](https://www.star-history.com/#upstash/contex7-arwaky&Date)

## 📄 License

MIT
