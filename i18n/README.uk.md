# Contex7Arwaky MCP — Актуальна документація з прикладами коду для будь-якого запиту

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@rakaarwaky/contex7-arwaky-mcp)](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp) [<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
[![繁體中文](https://img.shields.io/badge/docs-繁體中文-yellow)](./README.zh-TW.md) [![简体中文](https://img.shields.io/badge/docs-简体中文-yellow)](./README.zh-CN.md) [![日本語](https://img.shields.io/badge/docs-日本語-b7003a)](./README.ja.md) [![한국어 문서](https://img.shields.io/badge/docs-한국어-green)](./README.ko.md) [![Documentación en Español](https://img.shields.io/badge/docs-Español-orange)](./README.es.md) [![Documentation en Français](https://img.shields.io/badge/docs-Français-blue)](./README.fr.md) [![Documentação em Português (Brasil)](<https://img.shields.io/badge/docs-Português%20(Brasil)-purple>)](./README.pt-BR.md) [![Documentazione in italiano](https://img.shields.io/badge/docs-Italian-red)](./README.it.md) [![Dokumentasi Bahasa Indonesia](https://img.shields.io/badge/docs-Bahasa%20Indonesia-pink)](./README.id-ID.md) [![Dokumentation auf Deutsch](https://img.shields.io/badge/docs-Deutsch-darkgreen)](./README.de.md) [![Документация на русском языке](https://img.shields.io/badge/docs-Русский-darkblue)](./README.ru.md) [![Türkçe Doküman](https://img.shields.io/badge/docs-Türkçe-blue)](./README.tr.md) [![Arabic Documentation](https://img.shields.io/badge/docs-Arabic-white)](./README.ar.md) [![Українська документація](https://img.shields.io/badge/docs-Українська-lightblue)](./README.uk.md)

## ❌ Без Contex7Arwaky

Великі мовні моделі покладаються на застарілу або узагальнену інформацію про бібліотеки, які ви використовуєте. Внаслідок цього ви отримуєте:

- ❌ Застарілі приклади коду, що базуються на даних навчання кількарічної давності
- ❌ «Галюцинації» — API, які взагалі не існують
- ❌ Узагальнені відповіді для старих версій пакунків

## ✅ З Contex7Arwaky

Contex7Arwaky MCP отримує актуальну, специфічну для версії документацію та приклади коду безпосередньо з джерела — і вбудовує їх прямо у ваш промпт.
Додайте `use contex7-arwaky` до вашого запиту в Cursor:

```txt
Create a Next.js middleware that checks for a valid JWT in cookies and redirects unauthenticated users to `/login`. use contex7-arwaky
```

```txt
Configure a Cloudflare Worker script to cache JSON API responses for five minutes. use contex7-arwaky
```

Contex7Arwaky завантажує свіжі приклади коду й документацію безпосередньо в контекст вашої великої мовної моделі.

- 1️⃣ Написуйте ваш промпт природно
- 2️⃣ Скажіть ШІ використати `use contex7-arwaky`
- 3️⃣ Отримайте робочі відповіді з кодом
  Без перемикання між вкладками, без неіснуючих API та без застарілого коду.

## 📚 Додавання проєктів

Ознайомтеся з нашим [посібником з додавання проєктів](https://contex7-arwaky.com/docs/adding-libraries), щоб дізнатися, як додати (або оновити) ваші улюблені бібліотеки в Contex7Arwaky.

## 🛠️ Встановлення

### Системні вимоги

- Node.js ≥ v18.0.0
- Cursor, Windsurf, Claude Desktop або інший MCP-клієнт
<details>
<summary><b>Встановлення через Smithery</b></summary>

Для автоматичного встановлення Contex7Arwaky MCP Server для будь-якого клієнта через [Smithery](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp):

```bash
npx -y @smithery/cli@latest install @rakaarwaky/contex7-arwaky-mcp --client <CLIENT_NAME> --key <YOUR_SMITHERY_KEY>
```

Ваш ключ Smithery можна знайти на [сторінці Smithery.ai](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp).

</details>

<details>
<summary><b>Встановлення в Cursor</b></summary>

Перейдіть до: `Settings` → `Cursor Settings` → `MCP` → `Add new global MCP server`
Рекомендується вставити наступну конфігурацію у файл `~/.cursor/mcp.json`. Також можна встановити для конкретного проєкту, створивши `.cursor/mcp.json` у теці проєкту. Детальніше див. у [документації Cursor MCP](https://docs.cursor.com/context/model-context-protocol).
> Починаючи з Cursor 1.0, ви можете просто натиснути кнопку встановлення нижче для миттєвої інсталяції.

#### Підключення до віддаленого сервера Cursor
[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/install-mcp?name=contex7-arwaky&config=eyJ1cmwiOiJodHRwczovL21jcC5jb250ZXh0Ny5jb20vbWNwIn0%3D)
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Підключення до локального сервера Cursor
[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/install-mcp?name=contex7-arwaky&config=eyJjb21tYW5kIjoibnB4IC15IEB1cHN0YXNoL2NvbnRleHQ3LW1jcCJ9)
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
<details>
<summary>Альтернатива: використання Bun</summary>

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/install-mcp?name=contex7-arwaky&config=eyJjb21tYW5kIjoiYnVueCAteSBAdXBzdGFzaC9jb250ZXh0Ny1tY3AifQ%3D%3D)
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "bunx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary>Альтернатива: використання Deno</summary>

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/install-mcp?name=contex7-arwaky&config=eyJjb21tYW5kIjoiZGVubyBydW4gLS1hbGxvdy1lbnYgLS1hbGxvdy1uZXQgbnBtOkB1cHN0YXNoL2NvbnRleHQ3LW1jcCJ9)
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "deno",
      "args": [
        "run",
        "--allow-env=NO_DEPRECATION,TRACE_DEPRECATION",
        "--allow-net",
        "npm:@rakaarwaky/contex7-arwaky-mcp"
      ]
    }
  }
}
```
</details>

</details>

<details>
<summary><b>Встановлення в Windsurf</b></summary>

Додайте це до вашого конфігураційного файлу Windsurf MCP. Детальніше див. у [документації Windsurf MCP](https://docs.windsurf.com/windsurf/mcp).

#### Підключення до віддаленого сервера Windsurf

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "serverUrl": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Підключення до локального сервера Windsurf

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Trae</b></summary>

Використовуйте функцію "Add manually" і заповніть конфігурацію JSON для цього MCP-сервера.
Детальніше див. у [документації Trae](https://docs.trae.ai/ide/model-context-protocol?_lang=en).

#### Підключення до віддаленого сервера Trae

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Підключення до локального сервера Trae

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в VS Code</b></summary>

[<img alt="Встановити в VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Встановити%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
[<img alt="Встановити в VS Code Insiders (npx)" src="https://img.shields.io/badge/VS_Code_Insiders-VS_Code_Insiders?style=flat-square&label=Встановити%20Contex7Arwaky%20MCP&color=24bfa5">](https://insiders.vscode.dev/redirect?url=vscode-insiders%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
Додайте це до вашого конфігураційного файлу VS Code MCP. Детальніше див. у [документації VS Code MCP](https://code.visualstudio.com/docs/copilot/chat/mcp-arwaky).

#### Підключення до віддаленого сервера VS Code

```json
"mcp": {
  "servers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Підключення до локального сервера VS Code

```json
"mcp": {
  "servers": {
    "contex7-arwaky": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Visual Studio 2022</b></summary>

Ви можете налаштувати Contex7Arwaky MCP у Visual Studio 2022, дотримуючись [документації Visual Studio MCP Arwaky](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022).
Додайте це до вашого конфігураційного файлу Visual Studio MCP (детальніше в [документації Visual Studio](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022)):
```json
{
  "mcp": {
    "servers": {
      "contex7-arwaky": {
        "type": "http",
        "url": "https://mcp.contex7-arwaky.com/mcp"
      }
    }
  }
}
```
Або для локального сервера:
```json
{
  "mcp": {
    "servers": {
      "contex7-arwaky": {
        "type": "stdio",
        "command": "npx",
        "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
      }
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Zed</b></summary>

Можна встановити через [розширення Zed](https://zed.dev/extensions?query=Contex7Arwaky) або додати це до вашого `settings.json`. Детальніше див. у [документації Zed Context Server](https://zed.dev/docs/assistant/context-servers).
```json
{
  "context_servers": {
    "Contex7Arwaky": {
      "source": "custom",
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Copilot Coding Agent</b></summary>

## Використання Contex7Arwaky з Copilot Coding Agent
Додайте наступну конфігурацію до розділу `mcp` вашого файла настроек Copilot Coding Agent Repository->Settings->Copilot->Coding agent->MCP configuration:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      },
      "tools": ["query-docs", "resolve-library-id"]
    }
  }
}
```
Детальніше див. в [офіційній документації GitHub](https://docs.github.com/en/enterprise-cloud@latest/copilot/how-tos/agents/copilot-coding-agent/extending-copilot-coding-agent-with-mcp).
</details>

<details>
<summary><b>Встановлення в Copilot CLI</b></summary>

1.  Відкрийте файл конфігурації MCP Copilot CLI. Розташування: `~/.copilot/mcp-config.json` (де `~` — ваша домашня папка).
2.  Додайте наступне до об'єкта `mcpServers` у вашому файлі `mcp-config.json`:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "headers": {
        "CONTEXT7_API_KEY": "YOUR_API_KEY"
      },
      "tools": ["query-docs", "resolve-library-id"]
    }
  }
}
```
Або для локального сервера:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "local",
      "command": "npx",
      "tools": ["query-docs", "resolve-library-id"],
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp", "--api-key", "YOUR_API_KEY"]
    }
  }
}
```
Якщо файл `mcp-config.json` не існує, створіть його.
</details>

<details>
<summary><b>Встановлення в Gemini CLI</b></summary>

Детальніше див. у [конфігурації Gemini CLI](https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/configuration.md).
1. Відкрийте файл налаштувань Gemini CLI. Розташування: `~/.gemini/settings.json` (де `~` — ваша домашня тека).
2. Додайте наступне до об'єкта `mcpServers` у вашому `settings.json`:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
Якщо об'єкт `mcpServers` не існує, створіть його.
</details>

<details>
<summary><b>Встановлення в Claude Code</b></summary>

Виконайте цю команду. Детальніше див. у [документації Claude Code MCP](https://docs.anthropic.com/en/docs/claude-code/mcp).

#### Підключення до локального сервера Claude Code

```sh
claude mcp add --scope user contex7-arwaky -- npx -y @rakaarwaky/contex7-arwaky-mcp
```

#### Підключення до віддаленого сервера Claude Code

```sh
claude mcp add --scope user --transport http contex7-arwaky https://mcp.contex7-arwaky.com/mcp
```
</details>

<details>
<summary><b>Встановлення в Claude Desktop</b></summary>

Додайте це до вашого файлу `claude_desktop_config.json` у Claude Desktop. Детальніше див. у [документації Claude Desktop MCP](https://modelcontextprotocol.io/quickstart/user).
```json
{
  "mcpServers": {
    "Contex7Arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Cline</b></summary>

Ви можете легко встановити Contex7Arwaky через [торговий майданчик MCP-серверів Cline](https://cline.bot/mcp-marketplace), дотримуючись цих інструкцій:
1. Відкрийте **Cline**.
2. Натисніть значок меню гамбургер (☰), щоб увійти до розділу **MCP Arwaky**.
3. Використовуйте панель пошуку у вкладці **Marketplace**, щоб знайти _Contex7Arwaky_.
4. Натисніть кнопку **Install**.
</details>

<details>
<summary><b>Встановлення в BoltAI</b></summary>

Відкрийте сторінку "Settings" застосунку, перейдіть до "Plugins" і введіть наступний JSON:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
Після збереження введіть у чаті `query-docs`, а потім ваш ідентифікатор документації Contex7Arwaky (наприклад, `query-docs /nuxt/ui`). Додаткова інформація доступна на [сайті документації BoltAI](https://docs.boltai.com/docs/plugins/mcp-arwaky). Для BoltAI на iOS [див. цей посібник](https://docs.boltai.com/docs/boltai-mobile/mcp-arwaky).
</details>

<details>
<summary><b>Використання Docker</b></summary>

Якщо ви віддаєте перевагу запуску MCP-сервера в Docker-контейнері:
1. **Створіть Docker-образ:**
   Спочатку створіть `Dockerfile` у корені проєкту (або де завгодно):
   <details>
   <summary>Натисніть, щоб побачити вміст Dockerfile</summary>

   ```Dockerfile
   FROM node:18-alpine
   WORKDIR /app
   # Встановіть найновішу версію глобально
   RUN npm install -g @rakaarwaky/contex7-arwaky-mcp
   # Відкрийте стандартний порт, якщо потрібно (необов'язково, залежить від взаємодії з MCP-клієнтом)
   # EXPOSE 3000
   # Стандартна команда для запуску сервера
   CMD ["contex7-arwaky-mcp"]
   ```
   </details>

   Потім створіть образ, використовуючи тег (наприклад, `contex7-arwaky-mcp`). **Переконайтеся, що Docker Desktop (або демон Docker) запущений.** Виконайте наступну команду в тій же теці, де ви зберегли `Dockerfile`:
   ```bash
   docker build -t contex7-arwaky-mcp .
   ```
2. **Налаштуйте ваш MCP-клієнт:**
   Оновіть конфігурацію вашого MCP-клієнта для використання Docker-команди.
   _Приклад для cline_mcp_settings.json:_
   ```json
   {
     "mcpServers": {
       "Contex7Arwaky": {
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
   _Примітка: Це приклад конфігурації. Будь ласка, зверніться до конкретних прикладів для вашого MCP-клієнта (наприклад, Cursor, VS Code тощо) раніше в цьому README, щоб адаптувати структуру (наприклад, `mcpServers` проти `servers`). Також переконайтеся, що назва образу в `args` збігається з тегом, використаним під час команди `docker build`._
</details>

<details>
<summary><b>Встановлення в Windows</b></summary>

Конфігурація в Windows дещо відрізняється від Linux або macOS (_у прикладі використовується `Cline`_). Той же принцип застосовується до інших редакторів; зверніться до конфігурації `command` та `args`.
```json
{
  "mcpServers": {
    "github.com/rakaarwaky/contex7-arwaky-mcp": {
      "command": "cmd",
      "args": ["/c", "npx", "-y", "@rakaarwaky/contex7-arwaky-mcp@latest"],
      "disabled": false,
      "autoApprove": []
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Augment Code</b></summary>

Для налаштування Contex7Arwaky MCP в Augment Code ви можете використовувати або графічний інтерфейс, або ручну конфігурацію.

### **A. Використання інтерфейсу Augment Code**
1. Натисніть меню гамбургер.
2. Виберіть **Settings**.
3. Перейдіть до розділу **Tools**.
4. Натисніть кнопку **+ Add MCP**.
5. Введіть наступну команду:
   ```
   npx -y @rakaarwaky/contex7-arwaky-mcp@latest
   ```
6. Назва MCP: **Contex7Arwaky**.
7. Натисніть кнопку **Add**.

### **B. Ручна конфігурація**
1. Натисніть Cmd/Ctrl Shift P або перейдіть до меню гамбургер у панелі Augment
2. Виберіть Edit Settings
3. У розділі Advanced натисніть Edit in settings.json
4. Додайте конфігурацію сервера до масиву `mcpServers` в об'єкті `augment.advanced`
```json
"augment.advanced": {
  "mcpServers": [
    {
      "name": "contex7-arwaky",
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  ]
}
```
</details>

<details>
<summary><b>Встановлення в Roo Code</b></summary>

Додайте це до вашого конфігураційного файлу Roo Code MCP. Детальніше див. у [документації Roo Code MCP](https://docs.roocode.com/features/mcp/using-mcp-in-roo).

#### Підключення до віддаленого сервера Roo Code

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "streamable-http",
      "url": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Підключення до локального сервера Roo Code

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Zencoder</b></summary>

Для налаштування Contex7Arwaky MCP в Zencoder виконайте наступні кроки:
1. Перейдіть до меню Zencoder (...)
2. З випадного меню виберіть Agent tools
3. Натисніть на Add custom MCP
4. Додайте назву та конфігурацію сервера знизу і обов'язково натисніть кнопку Install
```json
{
  "command": "npx",
  "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
}
```
</details>

<details>
<summary><b>Встановлення в Amazon Q Developer CLI</b></summary>

Додайте це до вашого конфігураційного файлу Amazon Q Developer CLI. Детальніше див. у [документації Amazon Q Developer CLI](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-mcp-configuration.html).
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
    }
  }
}
```
</details>

<details>
<summary><b>Встановлення в Qodo Gen</b></summary>

Детальніше див. у [документації Qodo Gen](https://docs.qodo.ai/qodo-documentation/qodo-gen/qodo-gen-chat/agentic-mode/agentic-tools-mcps).
1. Відкрийте панель чату Qodo Gen у VSCode або IntelliJ.
2. Натисніть Connect more tools.
3. Натисніть + Add new MCP.
4. Додайте наступну конфігурацію:
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
<summary><b>Встановлення в JetBrains AI Assistant</b></summary>

Детальніше див. у [документації JetBrains AI Assistant](https://www.jetbrains.com/help/ai-assistant/configure-an-mcp-server.html).
1. У JetBrains IDE перейдіть до `Settings` → `Tools` → `AI Assistant` → `Model Context Protocol (MCP)`
2. Натисніть `+ Add`.
3. Натисніть на `Command` у верхньому лівому куті діалогу та виберіть опцію As JSON зі списку
4. Додайте цю конфігурацію та натисніть `OK`
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
5. Натисніть `Apply`, щоб зберегти зміни.
</details>

<details>
<summary><b>Встановлення в Warp</b></summary>

Детальніше див. у [документації Warp Model Context Protocol](https://docs.warp.dev/knowledge-and-collaboration/mcp#adding-an-mcp-server).
1. Перейдіть до `Settings` > `AI` > `Manage MCP servers`.
2. Додайте новий MCP-сервер, натиснувши кнопку `+ Add`.
3. Вставте конфігурацію, наведену нижче:
```json
{
  "Contex7Arwaky": {
    "command": "npx",
    "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"],
    "env": {},
    "working_directory": null,
    "start_on_launch": true
  }
}
```
4. Натисніть `Save`, щоб застосувати зміни.
</details>

<details>
<summary><b>Встановлення в Opencode</b></summary>

Додайте це до вашого конфігураційного файлу Opencode. Детальніше див. у [документації Opencode MCP](https://opencode.ai/docs/mcp-arwaky).

#### Підключення до віддаленого сервера Opencode

```json
"mcp": {
  "contex7-arwaky": {
    "type": "remote",
    "url": "https://mcp.contex7-arwaky.com/mcp",
    "enabled": true
  }
}
```

#### Підключення до локального сервера Opencode

```json
{
  "mcp": {
    "contex7-arwaky": {
      "type": "local",
      "command": ["npx", "-y", "@rakaarwaky/contex7-arwaky-mcp"],
      "enabled": true
    }
  }
}
```
</details>

## 🔨 Доступні інструменти
Contex7Arwaky MCP надає наступні інструменти, які можуть використовувати великі мовні моделі:
- `resolve-library-id`: Перетворює загальну назву бібліотеки на сумісний з Contex7Arwaky ідентифікатор бібліотеки.
  - `query` (обов'язково): Питання або завдання користувача (для ранжування за релевантністю)
  - `libraryName` (обов'язково): Назва бібліотеки для пошуку
- `query-docs`: Отримує документацію для бібліотеки, використовуючи сумісний з Contex7Arwaky ідентифікатор бібліотеки.
  - `libraryId` (обов'язково): Точний сумісний з Contex7Arwaky ідентифікатор бібліотеки (наприклад, `/mongodb/docs`, `/vercel/next.js`)
  - `query` (обов'язково): Питання або завдання для отримання релевантної документації

## 🛟 Поради

### Додайте правило
> Якщо ви не хочете додавати `use contex7-arwaky` до кожного промпту, ви можете визначити просте правило у вашому файлі `.windsurfrules` в Windsurf або в розділі `Cursor Settings > Rules` в Cursor (або еквівалентному у вашому MCP-клієнті), щоб автоматично викликати Contex7Arwaky для будь-яких запитань про код:
>
> ```toml
> [[calls]]
> match = "when the user requests code examples, setup or configuration steps, or library/API documentation"
> tool  = "contex7-arwaky"
> ```
>
> Відтоді ви отримуватимете документацію Contex7Arwaky у будь-якій пов'язаній розмові без введення будь-чого додаткового. Ви можете додати свої випадки використання до частини match.

### Використовуйте ідентифікатор бібліотеки
> Якщо ви вже точно знаєте, яку бібліотеку хочете використовувати, додайте її ідентифікатор Contex7Arwaky до вашого промпту. Таким чином Contex7Arwaky MCP-сервер може пропустити крок пошуку бібліотеки та одразу перейти до отримання документації.
>
> ```txt
> implement basic authentication with supabase. use library /supabase/supabase for api and docs
> ```
>
> Синтаксис із слешем повідомляє MCP-інструменту точно, для якої бібліотеки завантажувати документацію.

## 💻 Розробка
Склонуйте проєкт і встановіть залежності:
```bash
pnpm i
```
Збирання:
```bash
pnpm run build
```
Запуск сервера:
```bash
node packages/mcp/dist/index.js
```

### Аргументи командного рядка
`contex7-arwaky-mcp` приймає наступні прапори CLI:
- `--transport <stdio|http>` — Транспорт для використання (`stdio` за замовчуванням).
- `--port <number>` — Порт для прослуховування при використанні транспорту `http` (за замовчуванням `3000`).
Приклад з http-транспортом і портом 8080:
```bash
node packages/mcp/dist/index.js --transport http --port 8080
```
<details>
<summary><b>Приклад локальної конфігурації</b></summary>

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["tsx", "/path/to/folder/contex7-arwaky-mcp/src/index.ts"]
    }
  }
}
```
</details>

<details>
<summary><b>Тестування з MCP Inspector</b></summary>

```bash
npx -y @modelcontextprotocol/inspector npx @rakaarwaky/contex7-arwaky-mcp
```
</details>

## 🚨 Усунення несправностей
<details>
<summary><b>Помилки "Module Not Found"</b></summary>

Якщо ви стикаєтеся з `ERR_MODULE_NOT_FOUND`, спробуйте використовувати `bunx` замість `npx`:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "bunx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
Це часто вирішує проблеми розв'язання модулів у середовищах, де `npx` не встановлює або не розв'язує пакунки належним чином.
</details>

<details>
<summary><b>Проблеми розв'язання ESM</b></summary>

Для помилок типу `Error: Cannot find module 'uriTemplate.js'` спробуйте прапор `--experimental-vm-modules`:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "--node-options=--experimental-vm-modules", "@rakaarwaky/contex7-arwaky-mcp@1.0.6"]
    }
  }
}
```
</details>

<details>
<summary><b>Проблеми TLS/сертифікатів</b></summary>

Використовуйте прапор `--experimental-fetch`, щоб обійти проблеми, пов'язані з TLS:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "--node-options=--experimental-fetch", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

<details>
<summary><b>Загальні помилки MCP-клієнта</b></summary>

1. Спробуйте додати `@latest` до назви пакунка
2. Використовуйте `bunx` як альтернативу до `npx`
3. Розгляньте використання `deno` як іншу альтернативу
4. Переконайтеся, що ви використовуєте Node.js v18 або вище для підтримки нативного fetch
</details>

## ⚠️ Застереження
Проєкти Contex7Arwaky створюються спільнотою, і хоча ми прагнемо підтримувати високу якість, ми не можемо гарантувати точність, повноту або безпеку всієї документації бібліотек. Проєкти, перелічені в Contex7Arwaky, розробляються та підтримуються їхніми відповідними власниками, а не Contex7Arwaky. Якщо ви зіткнетеся з будь-яким підозрілим, неприйнятним або потенційно шкідливим контентом, будь ласка, використовуйте кнопку "Report" на сторінці проєкту, щоб негайно повідомити нас. Ми серйозно ставимося до всіх звітів і оперативно переглядаємо позначений контент для підтримання цілісності та безпеки нашої платформи. Використовуючи Contex7Arwaky, ви визнаєте, що робите це на власний розсуд і ризик.

## 🤝 Зв'яжіться з нами
Залишайтеся в курсі подій та приєднуйтеся до нашої спільноти:
- 📢 Слідкуйте за нами в [X](https://x.com/contextai) для отримання останніх новин та оновлень
- 🌐 Відвідайте наш [веб-сайт](https://contex7-arwaky.com)
- 💬 Приєднуйтеся до нашої [спільноти Discord](https://upstash.com/discord)

## 📺 Contex7Arwaky у медіа
- [Better Stack: "Free Tool Makes Cursor 10x Smarter"](https://youtu.be/52FC3qObp9E)
- [Cole Medin: "This is Hands Down the BEST MCP Server for AI Coding Assistants"](https://www.youtube.com/watch?v=G7gK8H6u7Rs)
- [Income Stream Surfers: "Contex7Arwaky + SequentialThinking MCPs: Is This AGI?"](https://www.youtube.com/watch?v=-ggvzyLpK6o)
- [Julian Goldie SEO: "Contex7Arwaky: New MCP AI Agent Update"](https://www.youtube.com/watch?v=CTZm6fBYisc)
- [JeredBlu: "Contex7 Arwaky MCP: Get Documentation Instantly + VS Code Setup"](https://www.youtube.com/watch?v=-ls0D-rtET4)
- [Income Stream Surfers: "Contex7Arwaky: The New MCP Server That Will CHANGE AI Coding"](https://www.youtube.com/watch?v=PS-2Azb-C3M)
- [AICodeKing: "Contex7Arwaky + Cline & RooCode: This MCP Server Makes CLINE 100X MORE EFFECTIVE!"](https://www.youtube.com/watch?v=qZfENAPMnyo)
- [Sean Kochel: "5 MCP Arwaky For Vibe Coding Glory (Just Plug-In & Go)"](https://www.youtube.com/watch?v=LqTQi8qexJM)

## ⭐ Історія зірок
[![Діаграма історії зірок](https://api.star-history.com/svg?repos=rakaarwaky/contex7-arwaky&type=Date)](https://www.star-history.com/#rakaarwaky/contex7-arwaky&Date)

## 📄 Ліцензія
MIT
