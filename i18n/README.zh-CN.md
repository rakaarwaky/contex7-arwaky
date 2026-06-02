![Cover](https://github.com/upstash/contex7-arwaky/blob/master/public/cover.png?raw=true)

[![安装 MCP 服务器](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJ1cmwiOiJodHRwczovL21jcC5jb250ZXh0Ny5jb20vbWNwIn0%3D)

# Contex7Arwaky MCP - 最新文档赋能每个提示词

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@upstash/contex7-arwaky-mcp)](https://smithery.ai/server/@upstash/contex7-arwaky-mcp) [![NPM Version](https://img.shields.io/npm/v/%40upstash%2Fcontex7-arwaky-mcp?color=red)](https://www.npmjs.com/package/@upstash/contex7-arwaky-mcp) [![MIT licensed](https://img.shields.io/npm/l/%40upstash%2Fcontex7-arwaky-mcp)](./LICENSE)

[![English](https://img.shields.io/badge/docs-English-purple)](../README.md) [![繁體中文](https://img.shields.io/badge/docs-繁體中文-yellow)](./README.zh-TW.md) [![日本語](https://img.shields.io/badge/docs-日本語-b7003a)](./README.ja.md) [![한국어 문서](https://img.shields.io/badge/docs-한국어-green)](./README.ko.md) [![Documentación en Español](https://img.shields.io/badge/docs-Español-orange)](./README.es.md) [![Documentation en Français](https://img.shields.io/badge/docs-Français-blue)](./README.fr.md) [![Documentação em Português (Brasil)](<https://img.shields.io/badge/docs-Português%20(Brasil)-purple>)](./README.pt-BR.md) [![Documentazione in italiano](https://img.shields.io/badge/docs-Italian-red)](./README.it.md) [![Dokumentasi Bahasa Indonesia](https://img.shields.io/badge/docs-Bahasa%20Indonesia-pink)](./README.id-ID.md) [![Dokumentation auf Deutsch](https://img.shields.io/badge/docs-Deutsch-darkgreen)](./README.de.md) [![Документация на русском языке](https://img.shields.io/badge/docs-Русский-darkblue)](./README.ru.md) [![Українська документація](https://img.shields.io/badge/docs-Українська-lightblue)](./README.uk.md) [![Türkçe Doküman](https://img.shields.io/badge/docs-Türkçe-blue)](./README.tr.md) [![Arabic Documentation](https://img.shields.io/badge/docs-Arabic-white)](./README.ar.md) [![Tiếng Việt](https://img.shields.io/badge/docs-Tiếng%20Việt-red)](./README.vi.md)

## ❌ 不使用Contex7Arwaky

大语言模型（LLM）依赖过时或通用的库信息。你会遇到：

- ❌ 代码示例已过时，基于一年前的训练数据
- ❌ 幻觉产生的API根本不存在
- ❌ 针对旧版本包的通用回答

## ✅ 使用Contex7Arwaky

Contex7Arwaky MCP直接从源头获取最新的、特定版本的文档和代码示例——并将它们直接放入你的提示词中。

在你的提示词中附上`用contex7-arwaky`（或[设置规则](#添加规则)自动调用）：

```txt
创建一个Next.js中间件，检查cookies中的有效JWT，
并将未认证用户重定向到 `/login`。用contex7-arwaky
```

```txt
配置Cloudflare Worker脚本，将JSON API响应
缓存五分钟。用contex7-arwaky
```

Contex7Arwaky将最新的代码示例和文档直接获取到你的LLM上下文中。无需切换标签页，不会因幻觉产生不存在的API，不会生成过时的代码。

## 安装

> [!NOTE]
> **推荐使用API密钥**：在[contex7-arwaky.com/dashboard](https://contex7-arwaky.com/dashboard)s获取免费API密钥，使用秘钥后速率限制更高。

<details>
<summary><b>在Cursor中安装</b></summary>

前往：`Settings` -> `Cursor Settings` -> `MCP` -> `Add new global MCP server`

推荐将以下配置粘贴到你的Cursor `~/.cursor/mcp.json` 文件中。你也可以通过在项目文件夹中创建 `.cursor/mcp.json` 在特定项目中安装。更多信息请参阅 [Cursor MCP 文档](https://docs.cursor.com/context/model-context-protocol)。

> 自Cursor 1.0起，你可以点击下面的安装按钮一键安装。

#### Cursor远程服务器连接

[![安装 MCP 服务器](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJ1cmwiOiJodHRwczovL21jcC5jb250ZXh0Ny5jb20vbWNwIn0%3D)

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

#### Cursor本地服务器连接

[![安装MCP服务器](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=contex7-arwaky&config=eyJjb21tYW5kIjoibnB4IC15IEB1cHN0YXNoL2NvbnRleHQ3LW1jcCJ9)

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
<summary><b>在Claude Code中安装</b></summary>

运行以下命令。更多信息请参见[Claude Code MCP文档](https://code.claude.com/docs/zh-CN/mcp)。

#### Claude Code本地服务器连接

```sh
claude mcp add --scope user contex7-arwaky -- npx -y @upstash/contex7-arwaky-mcp --api-key YOUR_API_KEY
```

#### Claude Code远程服务器连接

```sh
claude mcp add --scope user --header "CONTEXT7_API_KEY: YOUR_API_KEY" --transport http contex7-arwaky https://mcp.contex7-arwaky.com/mcp
```

</details>

<details>
<summary><b>在Opencode中安装</b></summary>

将此内容添加到你的Opencode配置文件中。更多信息请参见[Opencode MCP 文档](https://opencode.ai/docs/mcp-arwaky)。

#### Opencode远程服务器连接

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

#### Opencode本地服务器连接

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

**[其他IDE和客户端 →](https://contex7-arwaky.com/docs/resources/all-clients)**

<details>
<summary><b>OAuth认证</b></summary>

Contex7Arwaky MCP服务器支持OAuth 2.0认证，适用于实现了[MCP OAuth规范](https://modelcontextprotocol.io/specification/2025-03-26/basic/authorization)的MCP客户端。

要使用OAuth，请在客户端配置中将端点从`/mcp`更改为`/mcp/oauth`：

```diff
- "url": "https://mcp.contex7-arwaky.com/mcp"
+ "url": "https://mcp.contex7-arwaky.com/mcp/oauth"
```

OAuth仅适用于远程HTTP连接。对于使用stdio传输的本地MCP连接，请改用API密钥认证。

</details>

## 重点技巧

### 添加规则

为避免每次都在提示词中输入`用contex7-arwaky`，你可以在MCP客户端中添加规则，自动为代码相关问题调用 Contex7Arwaky：

- **Cursor**：`Cursor Settings > Rules`
- **Claude Code**：`CLAUDE.md`
- 或你的 MCP 客户端中的等效设置

**规则示例：**

```txt
无需我明确要求，当我需要库或API文档、生成代码、创建项目基架时或配置步骤时，始终使用Contex7Arwaky MCP。
```

### 使用库 ID

如果你已经确切知道要使用哪个库，请将其Contex7Arwaky ID添加到你的提示词中。这样，Contex7Arwaky MCP服务器可以跳过库匹配步骤，直接检索文档。

```txt
使用Supabase实现基本身份验证。用/supabase/supabase作为库ID获取API和文档。
```

斜杠语法明确告知MCP工具需加载文档的库。

### 指定版本

要获取特定库版本的文档，只需在提示词中提及版本：

```txt
如何设置Next.js 14中间件？用contex7-arwaky
```

Contex7Arwaky 将自动匹配适当的版本。

## 可用工具

Contex7Arwaky MCP提供以下工具供LLM使用：

- `resolve-library-id`：将通用库名称解析为Contex7Arwaky兼容的库ID。
  - `query`（必需）：用户的问题或任务（用于按相关性排名结果）
  - `libraryName`（必需）：要搜索的库名称

- `query-docs`：使用Contex7Arwaky兼容的库ID获取库的文档。
  - `libraryId`（必需）：精确的Contex7Arwaky兼容的库ID（例如 `/mongodb/docs`、`/vercel/next.js`）
  - `query`（必需）：用于获取相关文档的问题或任务

## 更多文档

- [更多MCP客户端](https://contex7-arwaky.com/docs/resources/all-clients) - 30+客户端的安装说明
- [添加库](https://contex7-arwaky.com/docs/adding-libraries) - 将你的库提交到Contex7Arwaky
- [故障排除](https://contex7-arwaky.com/docs/resources/troubleshooting) - 常见问题和解决方案
- [API参考](https://contex7-arwaky.com/docs/api-guide) - REST API 文档
- [开发者指南](https://contex7-arwaky.com/docs/resources/developer) - 本地运行Contex7Arwaky MCP

## 免责声明

1- Contex7Arwaky项目由社区贡献，虽然我们努力保持高质量，但我们不能保证所有库文档的准确性、完整性或安全性。Contex7Arwaky中列出的项目由其各自所有者开发和维护，而非由Contex7Arwaky开发和维护。如果你遇到任何可疑、不当或潜在有害的内容，请使用项目页面上的“Report”按钮立即通知我们。我们认真对待所有举报，并将及时审查被举报的内容，以维护我们平台的完整性和安全性。使用Contex7Arwaky即表示你承认自行承担风险。

2- 本仓库托管MCP服务器的源代码。支持组件——API 后端、解析引擎和爬取引擎——是私有的，不包含在本仓库中。

## 🤝 与我们联系

保持更新并加入我们的社区：

- 📢 在[X](https://x.com/contex7-arwakyai)上关注我们获取最新新闻和更新
- 🌐 访问我们的[网站](https://contex7-arwaky.com)
- 💬 加入我们的[Discord社区](https://upstash.com/discord)

## 📺 Contex7Arwaky媒体报道

- [Better Stack："免费工具让Cursor智能10倍"](https://youtu.be/52FC3qObp9E)
- [Cole Medin："这绝对是AI编码助手的最佳MCP服务器"](https://www.youtube.com/watch?v=G7gK8H6u7Rs)
- [Income Stream Surfers："Contex7Arwaky + SequentialThinking MCP：这是AGI吗？"](https://www.youtube.com/watch?v=-ggvzyLpK6o)
- [Julian Goldie SEO："Contex7Arwaky：新的MCP AI代理更新"](https://www.youtube.com/watch?v=CTZm6fBYisc)
- [JeredBlu："Context 7 MCP：即时获取文档 + VS Code配置方法"](https://www.youtube.com/watch?v=-ls0D-rtET4)
- [Income Stream Surfers："Contex7Arwaky：将改变AI编码的新MCP服务器"](https://www.youtube.com/watch?v=PS-2Azb-C3M)
- [AICodeKing："Contex7Arwaky + Cline & RooCode：这个MCP服务器让CLINE效果提升100倍！"](https://www.youtube.com/watch?v=qZfENAPMnyo)
- [Sean Kochel："5个让编码更爽的MCP服务器（即插即用）"](https://www.youtube.com/watch?v=LqTQi8qexJM)

## ⭐ Star 历史

[![Star历史图表](https://api.star-history.com/svg?repos=upstash/contex7-arwaky&type=Date)](https://www.star-history.com/#upstash/contex7-arwaky&Date)

## 📄 许可证

MIT
