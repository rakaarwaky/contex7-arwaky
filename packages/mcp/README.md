![Cover](https://github.com/upstash/contex7-arwaky/blob/master/public/cover.png?raw=true)

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJ1cmwiOiJodHRwczovL21jcC5jb250ZXh0Ny5jb20vbWNwIn0%3D) [<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/Install%20in%20VS%20Code-0098FF?style=for-the-badge&logo=visualstudiocode&logoColor=white">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)

# Contex7Arwaky MCP - Up-to-date Code Docs For Any Prompt

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@upstash/contex7-arwaky-mcp)](https://smithery.ai/server/@upstash/contex7-arwaky-mcp) [![NPM Version](https://img.shields.io/npm/v/%40upstash%2Fcontex7-arwaky-mcp?color=red)](https://www.npmjs.com/package/@upstash/contex7-arwaky-mcp) [![MIT licensed](https://img.shields.io/npm/l/%40upstash%2Fcontex7-arwaky-mcp)](./LICENSE)

[![繁體中文](https://img.shields.io/badge/docs-繁體中文-yellow)](./i18n/README.zh-TW.md) [![简体中文](https://img.shields.io/badge/docs-简体中文-yellow)](./i18n/README.zh-CN.md) [![日本語](https://img.shields.io/badge/docs-日本語-b7003a)](./i18n/README.ja.md) [![한국어 문서](https://img.shields.io/badge/docs-한국어-green)](./i18n/README.ko.md) [![Documentación en Español](https://img.shields.io/badge/docs-Español-orange)](./i18n/README.es.md) [![Documentation en Français](https://img.shields.io/badge/docs-Français-blue)](./i18n/README.fr.md) [![Documentação em Português (Brasil)](<https://img.shields.io/badge/docs-Português%20(Brasil)-purple>)](./i18n/README.pt-BR.md) [![Documentazione in italiano](https://img.shields.io/badge/docs-Italian-red)](./i18n/README.it.md) [![Dokumentasi Bahasa Indonesia](https://img.shields.io/badge/docs-Bahasa%20Indonesia-pink)](./i18n/README.id-ID.md) [![Dokumentation auf Deutsch](https://img.shields.io/badge/docs-Deutsch-darkgreen)](./i18n/README.de.md) [![Документация на русском языке](https://img.shields.io/badge/docs-Русский-darkblue)](./i18n/README.ru.md) [![Українська документація](https://img.shields.io/badge/docs-Українська-lightblue)](./i18n/README.uk.md) [![Türkçe Doküman](https://img.shields.io/badge/docs-Türkçe-blue)](./i18n/README.tr.md) [![Arabic Documentation](https://img.shields.io/badge/docs-Arabic-white)](./i18n/README.ar.md) [![Tiếng Việt](https://img.shields.io/badge/docs-Tiếng%20Việt-red)](./i18n/README.vi.md)

## ❌ Without Contex7Arwaky

LLMs rely on outdated or generic information about the libraries you use. You get:

- ❌ Code examples are outdated and based on year-old training data
- ❌ Hallucinated APIs that don't even exist
- ❌ Generic answers for old package versions

## ✅ With Contex7Arwaky

Contex7Arwaky MCP pulls up-to-date, version-specific documentation and code examples straight from the source — and places them directly into your prompt.

Add `use contex7-arwaky` to your prompt (or [set up a rule](#️-installation) to auto-invoke):

```txt
Create a Next.js middleware that checks for a valid JWT in cookies
and redirects unauthenticated users to `/login`. use contex7-arwaky
```

```txt
Configure a Cloudflare Worker script to cache
JSON API responses for five minutes. use contex7-arwaky
```

Contex7Arwaky fetches up-to-date code examples and documentation right into your LLM's context.

- 1️⃣ Write your prompt naturally
- 2️⃣ Tell the LLM to `use contex7-arwaky` (or [set up a rule](#️-installation) once)
- 3️⃣ Get working code answers

No tab-switching, no hallucinated APIs that don't exist, no outdated code generation.

> [!NOTE]
> This repository hosts the source code of Contex7Arwaky MCP server. The supporting components — API backend, parsing engine, and crawling engine — are private and not part of this release.

## 📚 Adding Projects

Check out our [project addition guide](https://contex7-arwaky.com/docs/adding-libraries) to learn how to add (or update) your favorite libraries to Contex7Arwaky.

## 🛠️ Installation

### Requirements

- Node.js >= v18.0.0
- Cursor, Claude Code, VSCode, Windsurf or another MCP Client
- Contex7Arwaky API Key (Optional) for higher rate limits and private repositories (Get yours by creating an account at [contex7-arwaky.com/dashboard](https://contex7-arwaky.com/dashboard))

> [!TIP]
> **Recommended Post-Setup: Add a Rule to Auto-Invoke Contex7Arwaky**
>
> After installing Contex7Arwaky (see instructions below), enhance your workflow by adding a rule so you don't have to type `use contex7-arwaky` in every prompt. Define a simple rule in your MCP client's rule section to automatically invoke Contex7Arwaky on any code question:
>
> - For Windsurf, in `.windsurfrules` file
> - For Cursor, from `Cursor Settings > Rules` section
> - For Claude Code, in `CLAUDE.md` file
> - Or the equivalent in your MCP client
>
> **Example Rule:**
>
> ```txt
> Always use contex7-arwaky when I need code generation, setup or configuration steps, or
> library/API documentation. This means you should automatically use the Contex7Arwaky MCP
> tools to resolve library id and get library docs without me having to explicitly ask.
> ```
>
> From then on, you'll get Contex7Arwaky's docs in any related conversation without typing anything extra. You can alter the rule to match your use cases.

<details>
<summary><b>Installing via Smithery</b></summary>

To install Contex7Arwaky MCP Server for any client automatically via [Smithery](https://smithery.ai/server/@upstash/contex7-arwaky-mcp):

```bash
npx -y @smithery/cli@latest install @upstash/contex7-arwaky-mcp --client <CLIENT_NAME> --key <YOUR_SMITHERY_KEY>
```

You can find your Smithery key in the [Smithery.ai webpage](https://smithery.ai/server/@upstash/contex7-arwaky-mcp).

</details>

<details>
<summary><b>Install in Cursor</b></summary>

Go to: `Settings` -> `Cursor Settings` -> `MCP` -> `Add new global MCP server`

Pasting the following configuration into your Cursor `~/.cursor/mcp.json` file is the recommended approach. You may also install in a specific project by creating `.cursor/mcp.json` in your project folder. See [Cursor MCP docs](https://docs.cursor.com/context/model-context-protocol) for more info.

> Since Cursor 1.0, you can click the install button below for instant one-click installation.

#### Cursor Remote Server Connection

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJ1cmwiOiJodHRwczovL21jcC5jb250ZXh0Ny5jb20vbWNwIn0%3D)

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

#### Cursor Local Server Connection

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJjb21tYW5kIjoibnB4IC15IEB1cHN0YXNoL2NvbnRleHQ3LW1jcCJ9)

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Claude Code</b></summary>

Run this command. See [Claude Code MCP docs](https://docs.anthropic.com/en/docs/claude-code/mcp) for more info.

#### Claude Code Local Server Connection

```sh
claude mcp add --scope user contex7-arwaky -- npx -y @upstash/contex7-arwaky-mcp --api-key YOUR_API_KEY
```

#### Claude Code Remote Server Connection

```sh
claude mcp add --scope user --header "CONTEXT7_API_KEY: YOUR_API_KEY" --transport http contex7-arwaky https://mcp.contex7-arwaky.com/mcp
```

> Remove `--scope user` to install for the current project only.

</details>

<details>
<summary><b>Install in Amp</b></summary>

Run this command in your terminal. See [Amp MCP docs](https://ampcode.com/manual#mcp) for more info.

#### Without API Key (Basic Usage)

```sh
amp mcp add contex7-arwaky https://mcp.contex7-arwaky.com/mcp
```

#### With API Key (Higher Rate Limits & Private Repos)

```sh
amp mcp add contex7-arwaky --header "CONTEXT7_API_KEY=YOUR_API_KEY" https://mcp.contex7-arwaky.com/mcp
```

</details>

<details>
<summary><b>Install in Windsurf</b></summary>

Add this to your Windsurf MCP config file. See [Windsurf MCP docs](https://docs.windsurf.com/windsurf/cascade/mcp) for more info.

#### Windsurf Remote Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "serverUrl": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

#### Windsurf Local Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in VS Code</b></summary>

[<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
[<img alt="Install in VS Code Insiders (npx)" src="https://img.shields.io/badge/VS_Code_Insiders-VS_Code_Insiders?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=24bfa5">](https://insiders.vscode.dev/redirect?url=vscode-insiders%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)

Add this to your VS Code MCP config file. See [VS Code MCP docs](https://code.visualstudio.com/docs/copilot/chat/mcp-arwaky) for more info.

#### VS Code Remote Server Connection

```json
"mcp": {
  "servers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

#### VS Code Local Server Connection

```json
"mcp": {
  "servers": {
    "contex7-arwaky": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary>
<b>Install in Cline</b>
</summary>

You can easily install Contex7Arwaky through the [Cline MCP Server Marketplace](https://cline.bot/mcp-marketplace) by following these instructions:

1. Open **Cline**.
2. Click the hamburger menu icon (☰) to enter the **MCP Servers** section.
3. Use the search bar within the **Marketplace** tab to find _Contex7Arwaky_.
4. Click the **Install** button.

Or you can directly edit MCP servers configuration:

1. Open **Cline**.
2. Click the hamburger menu icon (☰) to enter the **MCP Servers** section.
3. Choose **Remote Servers** tab.
4. Click the **Edit Configuration** button.
5. Add contex7-arwaky to `mcpServers`:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "type": "streamableHttp",
      "headers": {
        "Authorization": "Bearer YOUR_API_KEY"
      }
    }
  }
}
```

</details>

<details>
<summary><b>Install in Zed</b></summary>

It can be installed via [Zed Extensions](https://zed.dev/extensions?query=Contex7Arwaky) or you can add this to your Zed `settings.json`. See [Zed Context Server docs](https://zed.dev/docs/assistant/context-servers) for more info.

```json
{
  "context_servers": {
    "Contex7Arwaky": {
      "source": "custom",
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Augment Code</b></summary>

To configure Contex7Arwaky MCP in Augment Code, you can use either the graphical interface or manual configuration.

### **A. Using the Augment Code UI**

1. Click the hamburger menu.
2. Select **Settings**.
3. Navigate to the **Tools** section.
4. Click the **+ Add MCP** button.
5. Enter the following command:

   ```
   npx -y @upstash/contex7-arwaky-mcp@latest
   ```

6. Name the MCP: **Contex7Arwaky**.
7. Click the **Add** button.

Once the MCP server is added, you can start using Contex7Arwaky's up-to-date code documentation features directly within Augment Code.

---

### **B. Manual Configuration**

1. Press Cmd/Ctrl Shift P or go to the hamburger menu in the Augment panel
2. Select Edit Settings
3. Under Advanced, click Edit in settings.json
4. Add the server configuration to the `mcpServers` array in the `augment.advanced` object

```json
"augment.advanced": {
  "mcpServers": [
    {
      "name": "contex7-arwaky",
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  ]
}
```

Once the MCP server is added, restart your editor. If you receive any errors, check the syntax to make sure closing brackets or commas are not missing.

</details>

<details>
<summary><b>Install in Kilo Code</b></summary>

You can configure the Contex7Arwaky MCP server in **Kilo Code** using either the UI or by editing your project's MCP configuration file.

Kilo Code supports two configuration levels:

- **Global MCP Configuration** — stored in `mcp_settings.json`
- **Project-level MCP Configuration** — stored in `.kilocode/mcp.json` (recommended)

If a server is defined in both places, the **project-level configuration overrides the global one**.

---

## Configure via Kilo Code UI

1. Open **Kilo Code**.
2. Click the **Settings** icon in the top-right corner.
3. Navigate to **Settings → MCP Servers**.
4. Click **Add Server**.
5. Choose **HTTP Server** (Streamable HTTP Transport).
6. Enter the details:

**URL**
`https://mcp.contex7-arwaky.com/mcp`

**Headers → Add Header**

- **Key:** `Authorization`
- **Value:** `Bearer YOUR_API_KEY`

7. Click **Save**.
8. Ensure the server toggle is **enabled**.
9. If needed, click **Refresh MCP Servers** to reload the configuration.

---

## Manual Configuration (`.kilocode/mcp.json`)

To configure the server at the project level (recommended for team environments), create the following file:

**`.kilocode/mcp.json`:**

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "streamable-http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "Authorization": "Bearer YOUR_API_KEY"
      },
      "alwaysAllow": [],
      "disabled": false
    }
  }
}
```

Replace YOUR_API_KEY with your actual Contex7Arwaky API key.

After saving the file:

- Open Settings → MCP Servers

- Click Refresh MCP Servers

Kilo Code will automatically detect and load the configuration.

</details>

<details>
<summary><b>Install in Google Antigravity</b></summary>

Add this to your Antigravity MCP config file. See [Antigravity MCP docs](https://antigravity.google/docs/mcp) for more info.

#### Google Antigravity Remote Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "serverUrl": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

#### Google Antigravity Local Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Roo Code</b></summary>

Add this to your Roo Code MCP configuration file. See [Roo Code MCP docs](https://docs.roocode.com/features/mcp/using-mcp-in-roo) for more info.

#### Roo Code Remote Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "streamable-http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

#### Roo Code Local Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Gemini CLI</b></summary>

See [Gemini CLI Configuration](https://google-gemini.github.io/gemini-cli/docs/tools/mcp-server.html) for details.

1.  Open the Gemini CLI settings file. The location is `~/.gemini/settings.json` (where `~` is your home directory).
2.  Add the following to the `mcpServers` object in your `settings.json` file:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "httpUrl": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY",
        "Accept": "application/json, text/event-stream"
      }
    }
  }
}
```

Or, for a local server:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

If the `mcpServers` object does not exist, create it.

</details>

<details>
<summary><b>Install in Qwen Coder</b></summary>

See [Qwen Coder MCP Configuration](https://qwenlm.github.io/qwen-code-docs/en/tools/mcp-server/#how-to-set-up-your-mcp-server) for details.

1.  Open the Qwen Coder settings file. The location is `~/.qwen/settings.json` (where `~` is your home directory).
2.  Add the following to the `mcpServers` object in your `settings.json` file:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "httpUrl": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY",
        "Accept": "application/json, text/event-stream"
      }
    }
  }
}
```

Or, for a local server:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

If the `mcpServers` object does not exist, create it.

</details>

<details>
<summary><b>Install in Claude Desktop</b></summary>

#### Remote Server Connection

Open Claude Desktop and navigate to Settings > Connectors > Add Custom Connector. Enter the name as `Contex7Arwaky` and the remote MCP server URL as `https://mcp.contex7-arwaky.com/mcp`.

#### Local Server Connection

Open Claude Desktop developer settings and edit your `claude_desktop_config.json` file to add the following configuration. See [Claude Desktop MCP docs](https://modelcontextprotocol.io/quickstart/user) for more info.

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Opencode</b></summary>

Add this to your Opencode configuration file. See [Opencode MCP docs](https://opencode.ai/docs/mcp-arwaky) for more info.

#### Opencode Remote Server Connection

```json
"mcp": {
  "contex7-arwaky": {
    "type": "remote",
    "url": "https://mcp.contex7-arwaky.com/mcp",
    "headers": {
      "CONTEXT7_API_KEY": "YOUR_API_KEY"
    },
    "enabled": true
  }
}
```

#### Opencode Local Server Connection

```json
{
  "mcp": {
    "contex7-arwaky": {
      "type": "local",
      "command": ["npx", "-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"],
      "enabled": true
    }
  }
}
```

</details>

<details>
<summary><b>Install in OpenAI Codex</b></summary>

See [OpenAI Codex](https://github.com/openai/codex) for more information.

Add the following configuration to your OpenAI Codex MCP server settings:

#### Local Server Connection

```toml
[mcp_servers.contex7-arwaky]
args = ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
command = "npx"
startup_timeout_ms = 20_000
```

#### Remote Server Connection

```toml
[mcp_servers.contex7-arwaky]
url = "https://mcp.contex7-arwaky.com/mcp"
http_headers = { "CONTEXT7_API_KEY" = "YOUR_API_KEY" }
```

> Optional troubleshooting — only if you see startup "request timed out" or "not found program". Most users can ignore this.
>
> - First try: increase `startup_timeout_ms` to `40_000` and retry.
> - Windows quick fix (absolute `npx` path + explicit env):
>
> ```toml
> [mcp_servers.contex7-arwaky]
> command = "C:\\Users\\yourname\\AppData\\Roaming\\npm\\npx.cmd"
> args = [
>   "-y",
>   "@upstash/contex7-arwaky-mcp",
>   "--api-key",
>   "YOUR_API_KEY"
> ]
> env = { SystemRoot="C:\\Windows", APPDATA="C:\\Users\\yourname\\AppData\\Roaming" }
> startup_timeout_ms = 40_000
> ```
>
> - macOS quick fix (use Node + installed package entry point):
>
> ```toml
> [mcp_servers.contex7-arwaky]
> command = "/Users/yourname/.nvm/versions/node/v22.14.0/bin/node"
> args = ["/Users/yourname/.nvm/versions/node/v22.14.0/lib/node_modules/@upstash/contex7-arwaky-mcp/dist/index.js",
>   "--transport",
>   "stdio",
>   "--api-key",
>   "YOUR_API_KEY"
> ]
> ```
>
> Notes: Replace `yourname` with your OS username. Explicitly setting `APPDATA` and `SystemRoot` is essential because these are required by `npx` on Windows but not set by certain versions of OpenAI Codex mcp clients by default.

</details>

<details>

<summary><b>Install in JetBrains AI Assistant</b></summary>

See [JetBrains AI Assistant Documentation](https://www.jetbrains.com/help/ai-assistant/configure-an-mcp-server.html) for more details.

1. In JetBrains IDEs, go to `Settings` -> `Tools` -> `AI Assistant` -> `Model Context Protocol (MCP)`
2. Click `+ Add`.
3. Click on `Command` in the top-left corner of the dialog and select the As JSON option from the list
4. Add this configuration and click `OK`

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

5. Click `Apply` to save changes.
6. The same way contex7-arwaky could be added for JetBrains Junie in `Settings` -> `Tools` -> `Junie` -> `MCP Settings`

</details>

<details>
  
<summary><b>Install in Kiro</b></summary>

See [Kiro Model Context Protocol Documentation](https://kiro.dev/docs/mcp/configuration/) for details.

1. Navigate `Kiro` > `MCP Servers`
2. Add a new MCP server by clicking the `+ Add` button.
3. Paste the configuration given below:

```json
{
  "mcpServers": {
    "Contex7Arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"],
      "env": {},
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

4. Click `Save` to apply the changes.

</details>

<details>
<summary><b>Install in Trae</b></summary>

Use the Add manually feature and fill in the JSON configuration information for that MCP server.
For more details, visit the [Trae documentation](https://docs.trae.ai/ide/model-context-protocol?_lang=en).

#### Trae Remote Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Trae Local Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Using Bun or Deno</b></summary>

Use these alternatives to run the local Contex7Arwaky MCP server with other runtimes. These examples work for any client that supports launching a local MCP server via command + args.

#### Bun

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "bunx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

#### Deno

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "deno",
      "args": [
        "run",
        "--allow-env=NO_DEPRECATION,TRACE_DEPRECATION",
        "--allow-net",
        "npm:@upstash/contex7-arwaky-mcp"
      ]
    }
  }
}
```

</details>

<details>
<summary><b>Using Docker</b></summary>

If you prefer to run the MCP server in a Docker container:

1. **Build the Docker Image:**

   First, create a `Dockerfile` in the project root (or anywhere you prefer):

   <details>
   <summary>Click to see Dockerfile content</summary>

   ```Dockerfile
   FROM node:18-alpine

   WORKDIR /app

   # Install the latest version globally
   RUN npm install -g @upstash/contex7-arwaky-mcp

   # Expose default port if needed (optional, depends on MCP client interaction)
   # EXPOSE 3000

   # Default command to run the server
   CMD ["contex7-arwaky-mcp"]
   ```

   </details>

   Then, build the image using a tag (e.g., `contex7-arwaky-mcp`). **Make sure Docker Desktop (or the Docker daemon) is running.** Run the following command in the same directory where you saved the `Dockerfile`:

   ```bash
   docker build -t contex7-arwaky-mcp .
   ```

2. **Configure Your MCP Client:**

   Update your MCP client's configuration to use the Docker command.

   _Example for a cline_mcp_settings.json:_

   ```json
   {
     "mcpServers": {
       "Сontext7": {
         "autoApprove": [],
         "disabled": false,
         "timeout": 60,
         "command": "docker",
         "args": ["run", "-i", "--rm", "contex7-arwaky-mcp"],
         "transportType": "stdio"
       }
     }
   }
   ```

   _Note: This is an example configuration. Please refer to the specific examples for your MCP client (like Cursor, VS Code, etc.) earlier in this README to adapt the structure (e.g., `mcpServers` vs `servers`). Also, ensure the image name in `args` matches the tag used during the `docker build` command._

</details>

<details>
<summary><b>Install Using the Desktop Extension</b></summary>

Install the [contex7-arwaky.mcpb](mcpb/contex7-arwaky.mcpb) file under the mcpb folder and add it to your client. For more information, please check out [MCP bundles docs](https://github.com/anthropics/mcpb#mcp-bundles-mcpb).

</details>

<details>
<summary><b>Install in Windows</b></summary>

The configuration on Windows is slightly different compared to Linux or macOS (_`Cline` is used in the example_). The same principle applies to other editors; refer to the configuration of `command` and `args`.

```json
{
  "mcpServers": {
    "github.com/upstash/contex7-arwaky-mcp": {
      "command": "cmd",
      "args": ["/c", "npx", "-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"],
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

</details>

<details>
<summary><b>Install in Amazon Q Developer CLI</b></summary>

Add this to your Amazon Q Developer CLI configuration file. See [Amazon Q Developer CLI docs](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-mcp-configuration.html) for more details.

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Warp</b></summary>

See [Warp Model Context Protocol Documentation](https://docs.warp.dev/knowledge-and-collaboration/mcp#adding-an-mcp-server) for details.

1. Navigate `Settings` > `AI` > `Manage MCP servers`.
2. Add a new MCP server by clicking the `+ Add` button.
3. Paste the configuration given below:

```json
{
  "Contex7Arwaky": {
    "command": "npx",
    "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"],
    "env": {},
    "working_directory": null,
    "start_on_launch": true
  }
}
```

4. Click `Save` to apply the changes.

</details>

<details>

<summary><b>Install in Copilot Coding Agent</b></summary>

## Using Contex7Arwaky with Copilot Coding Agent

Add the following configuration to the `mcp` section of your Copilot Coding Agent configuration file Repository->Settings->Copilot->Coding agent->MCP configuration:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      },
      "tools": ["get-library-docs", "resolve-library-id"]
    }
  }
}
```

For more information, see the [official GitHub documentation](https://docs.github.com/en/enterprise-cloud@latest/copilot/how-tos/agents/copilot-coding-agent/extending-copilot-coding-agent-with-mcp).

</details>

<details>
<summary><b>Install in Copilot CLI</b></summary>

1.  Open the Copilot CLI MCP config file. The location is `~/.copilot/mcp-config.json` (where `~` is your home directory).
2.  Add the following to the `mcpServers` object in your `mcp-config.json` file:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      },
      "tools": ["get-library-docs", "resolve-library-id"]
    }
  }
}
```

Or, for a local server:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "local",
      "command": "npx",
      "tools": ["get-library-docs", "resolve-library-id"],
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

If the `mcp-config.json` file does not exist, create it.

</details>

<details>
<summary><b>Install in LM Studio</b></summary>

See [LM Studio MCP Support](https://lmstudio.ai/blog/lmstudio-v0.3.17) for more information.

#### One-click install:

[![Add MCP Server contex7-arwaky to LM Studio](https://files.lmstudio.ai/deeplink/mcp-install-light.svg)](https://lmstudio.ai/install-mcp?name=contex7-arwaky&config=eyJjb21tYW5kIjoibnB4IiwiYXJncyI6WyIteSIsIkB1cHN0YXNoL2NvbnRleHQ3LW1jcCJdfQ%3D%3D)

#### Manual set-up:

1. Navigate to `Program` (right side) > `Install` > `Edit mcp.json`.
2. Paste the configuration given below:

```json
{
  "mcpServers": {
    "Contex7Arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

3. Click `Save` to apply the changes.
4. Toggle the MCP server on/off from the right hand side, under `Program`, or by clicking the plug icon at the bottom of the chat box.

</details>

<details>
<summary><b>Install in Visual Studio 2022</b></summary>

You can configure Contex7Arwaky MCP in Visual Studio 2022 by following the [Visual Studio MCP Servers documentation](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022).

Add this to your Visual Studio MCP config file (see the [Visual Studio docs](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022) for details):

```json
{
  "inputs": [],
  "servers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

Or, for a local server:

```json
{
  "mcp": {
    "servers": {
      "contex7-arwaky": {
        "type": "stdio",
        "command": "npx",
        "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
      }
    }
  }
}
```

For more information and troubleshooting, refer to the [Visual Studio MCP Servers documentation](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022).

</details>

<details>
<summary><b>Install in Crush</b></summary>

Add this to your Crush configuration file. See [Crush MCP docs](https://github.com/charmbracelet/crush#mcps) for more info.

#### Crush Remote Server Connection (HTTP)

```json
{
  "$schema": "https://charm.land/crush.json",
  "mcp": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

#### Crush Local Server Connection

```json
{
  "$schema": "https://charm.land/crush.json",
  "mcp": {
    "contex7-arwaky": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in BoltAI</b></summary>

Open the "Settings" page of the app, navigate to "Plugins," and enter the following JSON:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

Once saved, enter in the chat `get-library-docs` followed by your Contex7Arwaky documentation ID (e.g., `get-library-docs /nuxt/ui`). More information is available on [BoltAI's Documentation site](https://docs.boltai.com/docs/plugins/mcp-arwaky). For BoltAI on iOS, [see this guide](https://docs.boltai.com/docs/boltai-mobile/mcp-arwaky).

</details>

<details>
<summary><b>Install in Rovo Dev CLI</b></summary>

Edit your Rovo Dev CLI MCP config by running the command below -

```bash
acli rovodev mcp
```

Example config -

#### Remote Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Local Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

<details>
<summary><b>Install in Zencoder</b></summary>

To configure Contex7Arwaky MCP in Zencoder, follow these steps:

1. Go to the Zencoder menu (...)
2. From the dropdown menu, select Agent tools
3. Click on the Add custom MCP
4. Add the name and server configuration from below, and make sure to hit the Install button

```json
{
  "command": "npx",
  "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
}
```

Once the MCP server is added, you can easily continue using it.

</details>

<details>
<summary><b>Install in Qodo Gen</b></summary>

See [Qodo Gen docs](https://docs.qodo.ai/qodo-documentation/qodo-gen/qodo-gen-chat/agentic-mode/agentic-tools-mcps) for more details.

1. Open Qodo Gen chat panel in VSCode or IntelliJ.
2. Click Connect more tools.
3. Click + Add new MCP.
4. Add the following configuration:

#### Qodo Gen Local Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

#### Qodo Gen Remote Server Connection

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

</details>

<details>
<summary><b>Install in Perplexity Desktop</b></summary>

See [Local and Remote MCPs for Perplexity](https://www.perplexity.ai/help-center/en/articles/11502712-local-and-remote-mcps-for-perplexity) for more information.

1. Navigate `Perplexity` > `Settings`
2. Select `Connectors`.
3. Click `Add Connector`.
4. Select `Advanced`.
5. Enter Server Name: `Contex7Arwaky`
6. Paste the following JSON in the text area:

```json
{
  "args": ["-y", "@upstash/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"],
  "command": "npx",
  "env": {}
}
```

7. Click `Save`.
</details>

<details>
<summary><b>Install in Factory</b></summary>

Factory's droid supports MCP servers through its CLI. See [Factory MCP docs](https://docs.factory.ai/cli/configuration/mcp) for more info.

#### Factory Remote Server Connection (HTTP)

Run this command in your terminal:

```sh
droid mcp add contex7-arwaky https://mcp.contex7-arwaky.com/mcp --type http --header "CONTEXT7_API_KEY: YOUR_API_KEY"
```

Or without an API key (basic usage with rate limits):

```sh
droid mcp add contex7-arwaky https://mcp.contex7-arwaky.com/mcp --type http
```

#### Factory Local Server Connection (Stdio)

Run this command in your terminal:

```sh
droid mcp add contex7-arwaky "npx -y @upstash/contex7-arwaky-mcp" --env CONTEXT7_API_KEY=YOUR_API_KEY
```

Once configured, Contex7Arwaky tools will be available in your droid sessions. Type `/mcp` within droid to manage servers, authenticate, and view available tools.

</details>

<details>
<summary><b>Install in Emdash</b></summary>

[Emdash](https://github.com/generalaction/emdash) is an orchestration layer for running multiple coding agents in parallel. Provider-agnostic, worktree-isolated, and local-first. Emdash supports Contex7Arwaky MCP to enable Contex7Arwaky for your agents.

**What Emdash provides:**

- Global toggle: Settings → MCP → "Enable Contex7Arwaky MCP"
- Per-workspace enable: The Contex7Arwaky button in the ProviderBar (off by default). First click enables it for that workspace. Clicking again disables it.
- ProviderBar: The Contex7Arwaky button shows status, a short explanation, and a link to docs

**What you still need to do:**
Configure your coding agent (Codex, Claude Code, Cursor, etc.) to connect to Contex7Arwaky MCP. Emdash does not modify your agent's config. See the respective MCP configuration sections above for your agent (e.g., OpenAI Codex, Claude Code, Cursor).

See the [Emdash repository](https://github.com/generalaction/emdash) for more information.

</details>

## 🔨 Available Tools

Contex7Arwaky MCP provides the following tools that LLMs can use:

- `resolve-library-id`: Resolves a general library name into a Contex7Arwaky-compatible library ID.
  - `libraryName` (required): The name of the library to search for

- `get-library-docs`: Fetches documentation for a library using a Contex7Arwaky-compatible library ID.
  - `contex7-arwakyCompatibleLibraryID` (required): Exact Contex7Arwaky-compatible library ID (e.g., `/mongodb/docs`, `/vercel/next.js`)
  - `topic` (optional): Focus the docs on a specific topic (e.g., "routing", "hooks")
  - `page` (optional, default 1): Page number for pagination (1-10). If the context is not sufficient, try page=2, page=3, etc. with the same topic.

## 🛟 Tips

### Add a Rule

To avoid typing `use contex7-arwaky` in every prompt, you can add a rule to your MCP client that automatically invokes Contex7Arwaky for code-related questions. See the [recommended setup in the Installation section](#️-installation) for detailed instructions and example rules.

### Use Library Id

If you already know exactly which library you want to use, add its Contex7Arwaky ID to your prompt. That way, Contex7Arwaky MCP server can skip the library-matching step and directly continue with retrieving docs.

```txt
Implement basic authentication with Supabase. use library /supabase/supabase for API and docs.
```

The slash syntax tells the MCP tool exactly which library to load docs for.

### HTTPS Proxy

If you are behind an HTTP proxy, Contex7Arwaky uses the standard `https_proxy` / `HTTPS_PROXY` environment variables.

## 💻 Development

Clone the project and install dependencies:

```bash
bun i
```

Build:

```bash
bun run build
```

Run the server:

```bash
bun run dist/index.js
```

### CLI Arguments

`contex7-arwaky-mcp` accepts the following CLI flags:

- `--transport <stdio|http>` – Transport to use (`stdio` by default). Use `http` for remote HTTP server or `stdio` for local integration.
- `--port <number>` – Port to listen on when using `http` transport (default `3000`).
- `--api-key <key>` – API key for authentication (or set `CONTEXT7_API_KEY` env var). You can get your API key by creating an account at [contex7-arwaky.com/dashboard](https://contex7-arwaky.com/dashboard).

Example with HTTP transport and port 8080:

```bash
bun run dist/index.js --transport http --port 8080
```

Another example with stdio transport:

```bash
bun run dist/index.js --transport stdio --api-key YOUR_API_KEY
```

### Environment Variables

You can use the `CONTEXT7_API_KEY` environment variable instead of passing the `--api-key` flag. This is useful for:

- Storing API keys securely in `.env` files
- Integration with MCP server setups that use dotenv
- Tools that prefer environment variable configuration

**Note:** The `--api-key` CLI flag takes precedence over the environment variable when both are provided.

**Example with .env file:**

```bash
# .env
CONTEXT7_API_KEY=your_api_key_here
```

**Example MCP configuration using environment variable:**

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp"],
      "env": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      }
    }
  }
}
```

<details>
<summary><b>Local Configuration Example</b></summary>

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["tsx", "/path/to/folder/contex7-arwaky/src/index.ts", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```

</details>

### OAuth Authentication

Contex7Arwaky MCP server supports OAuth 2.0 authentication for MCP clients that implement the [MCP OAuth specification](https://modelcontextprotocol.io/specification/2025-03-26/basic/authorization).

To use OAuth, change the endpoint from `/mcp` to `/mcp/oauth` in your client configuration:

```diff
- "url": "https://mcp.contex7-arwaky.com/mcp"
+ "url": "https://mcp.contex7-arwaky.com/mcp/oauth"
```

> **Note:** OAuth is not supported with stdio transport. For local MCP connections, use API key authentication instead.

<details>
<summary><b>Testing with MCP Inspector</b></summary>

```bash
npx -y @modelcontextprotocol/inspector npx @upstash/contex7-arwaky-mcp
```

</details>

## 🚨 Troubleshooting

<details>
<summary><b>Module Not Found Errors</b></summary>

If you encounter `ERR_MODULE_NOT_FOUND`, try using `bunx` instead of `npx`:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "bunx",
      "args": ["-y", "@upstash/contex7-arwaky-mcp"]
    }
  }
}
```

This often resolves module resolution issues in environments where `npx` doesn't properly install or resolve packages.

</details>

<details>
<summary><b>ESM Resolution Issues</b></summary>

For errors like `Error: Cannot find module 'uriTemplate.js'`, try the `--experimental-vm-modules` flag:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "--node-options=--experimental-vm-modules", "@upstash/contex7-arwaky-mcp@1.0.6"]
    }
  }
}
```

</details>

<details>
<summary><b>TLS/Certificate Issues</b></summary>

Use the `--experimental-fetch` flag to bypass TLS-related problems:

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "--node-options=--experimental-fetch", "@upstash/contex7-arwaky-mcp"]
    }
  }
}
```

</details>

<details>
<summary><b>General MCP Client Errors</b></summary>

1. Try adding `@latest` to the package name
2. Use `bunx` as an alternative to `npx`
3. Consider using `deno` as another alternative
4. Ensure you're using Node.js v18 or higher for native fetch support

</details>

## ⚠️ Disclaimer

1- Contex7Arwaky projects are community-contributed and while we strive to maintain high quality, we cannot guarantee the accuracy, completeness, or security of all library documentation. Projects listed in Contex7Arwaky are developed and maintained by their respective owners, not by Contex7Arwaky. If you encounter any suspicious, inappropriate, or potentially harmful content, please use the "Report" button on the project page to notify us immediately. We take all reports seriously and will review flagged content promptly to maintain the integrity and safety of our platform. By using Contex7Arwaky, you acknowledge that you do so at your own discretion and risk.

2- This repository hosts the MCP server’s source code. The supporting components — API backend, parsing engine, and crawling engine — are private and not part of this release.

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
