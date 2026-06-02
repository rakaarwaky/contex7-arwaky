# Contex7Arwaky MCP - Актуальная документация для любого промпта

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@rakaarwaky/contex7-arwaky-mcp)](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp) [<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)

## ❌ Без Contex7Arwaky

LLMs полагаются на устаревшую или обобщённую информацию о библиотеках, с которыми вы работаете. В результате этого вы получаете:

- ❌ Устаревшие примеры кода многолетней давности
- ❌ Выдуманные API, которые даже не существуют
- ❌ Обобщённые ответы для старых библиотек

## ✅ С Contex7Arwaky

Contex7Arwaky MCP получает актуальную документацию и примеры кода, строго соответствующие нужной версии, прямо из исходных источников и вставляет их прямо в ваш промпт.
Добавьте строку `use contex7-arwaky` в промпт для Cursor:

```txt
Создай базовый Next.js проект с маршрутизатором приложений. Use contex7-arwaky
```

```txt
Создай скрипт, удаляющий строки, где город равен "", используя учётные данные PostgreSQL. Use contex7-arwaky
```

Contex7Arwaky MCP подгружает свежие примеры кода и документацию из источников прямо в контекст вашей LLM.

- 1️⃣ Напишите свой промпт так, как писали его всегда
- 2️⃣ Добавьте к промпту `use contex7-arwaky`
- 3️⃣ Получите работающий результат
  Никакого переключения между вкладками, выдуманного API или устаревшего кода.

## 🛠️ Начало работы

### Требования

- Node.js >= v18.0.0
- Cursor, Windsurf, Claude Desktop или другой MCP клиент

### Установка через Smithery

Воспользуйтесь [Smithery](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp), чтобы автоматически установить MCP сервер Contex7Arwaky для Claude Desktop:

```bash
npx -y @smithery/cli install @rakaarwaky/contex7-arwaky-mcp --client claude
```

### Установка в Cursor

Перейдите в вкладку: `Settings` -> `Cursor Settings` -> `MCP` -> `Add new global MCP server`
Рекомендуется вставить конфигурацию в файл `~/.cursor/mcp.json`. Также можно установить конфигурацию для конкретного проекта, создав файл `.cursor/mcp.json` в его директории. Смотрите [документацию Cursor MCP](https://docs.cursor.com/context/model-context-protocol) для получения дополнительной информации.

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
<summary>Альтернативный вариант - Bun</summary>

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
<summary>Альтернативный вариант - Deno</summary>

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "deno",
      "args": ["run", "--allow-env", "--allow-net", "npm:@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```
</details>

### Установка в Windsurf
Добавьте следующие строки в ваш конфигурационный файл Windsurf MCP. Смотрите [документацию Windsurf MCP](https://docs.windsurf.com/windsurf/mcp) для получения дополнительной информации.
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

### Установка в VS Code
[<img alt="Установка в VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Установить%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
[<img alt="Установка в VS Code Insiders (npx)" src="https://img.shields.io/badge/VS_Code_Insiders-VS_Code_Insiders?style=flat-square&label=Установить%20Contex7Arwaky%20MCP&color=24bfa5">](https://insiders.vscode.dev/redirect?url=vscode-insiders%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
Добавьте следующие строки в ваш конфигурационный файл VS Code MCP. Смотрите [документацию VS Code MCP](https://code.visualstudio.com/docs/copilot/chat/mcp-arwaky) для получения дополнительной информации.
```json
{
  "servers": {
    "Contex7Arwaky": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```

### Установка in Zed
Можно установить через [Zed расширение](https://zed.dev/extensions?query=Contex7Arwaky) или добавить следующие строки в `settings.json`. Смотрите [документацию Zed Context Server](https://zed.dev/docs/assistant/context-servers) для получения дополнительной информации.
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

### Установка в Claude Code
Запустите следующую команду для установки. Смотрите [документацию Claude Code MCP](https://docs.anthropic.com/ru/docs/claude-code/mcp) для получения дополнительной информации.
```sh
claude mcp add --scope user contex7-arwaky -- npx -y @rakaarwaky/contex7-arwaky-mcp
```

### Установка в Claude Desktop
Добавьте следующие следующие строки в ваш конфигурационный файл `claude_desktop_config.json`. Смотрите [документацию Claude Desktop MCP](https://modelcontextprotocol.io/quickstart/user) для получения дополнительной информации.
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

### Установка в BoltAI
Откройте страницу "Settings", перейдите в "Plugins" и добавьте следующие JSON-строки:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"],
      "command": "npx"
    }
  }
}
```

### Установка в Copilot Coding Agent
Добавьте следующую конфигурацию в секцию `mcp` вашего файла настроек Copilot Coding Agent (Repository->Settings->Copilot->Coding agent->MCP configuration):
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "type": "http",
      "url": "https://mcp.contex7-arwaky.com/mcp",
      "tools": ["query-docs", "resolve-library-id"]
    }
  }
}
```
Подробнее см. в [официальной документации GitHub](https://docs.github.com/en/enterprise-cloud@latest/copilot/how-tos/agents/copilot-coding-agent/extending-copilot-coding-agent-with-mcp).

### Установка в Copilot CLI
1.  Откройте файл конфигурации MCP Copilot CLI. Расположение: `~/.copilot/mcp-config.json` (где `~` — ваша домашняя папка).
2.  Добавьте следующее к объекту `mcpServers` в вашем файле `mcp-config.json`:
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
Или для локального сервера:
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
Если файл `mcp-config.json` не существует, создайте его.

### Используя Docker
Если вы предпочитаете запускать MCP сервер в Docker контейнере:
1. **Создайте образ Docker:**
   Во-первых, создайте `Dockerfile` в корне вашего проекта (или в любом другом месте):
   <details>
   <summary>Нажмите, чтобы просмотреть содержимое файла Dockerfile</summary>

   ```Dockerfile
   FROM node:18-alpine
   WORKDIR /app
   # Установите последнюю версию пакета глобально
   RUN npm install -g @rakaarwaky/contex7-arwaky-mcp
   # Откройте стандартный порт, если это необходимо (необязательно, это зависит от взаимодействия с MCP клиентом)
   # EXPOSE 3000
   # Стандартная команда для запуска сервера
   CMD ["contex7-arwaky-mcp"]
   ```
   </details>

   Затем, соберите образ, используя тег (например, `contex7-arwaky-mcp`). **Убедитесь, что Docker Desktop (или демон Docker) работает.** Запустите следующую команду в этой же директории, где сохранён `Dockerfile`:
   ```bash
   docker build -t contex7-arwaky-mcp .
   ```
2. **Настройте ваш MCP клиент:**
   Обновите вашу конфигурацию MCP клиента, чтобы использовать Docker команду.
   _Пример для cline_mcp_settings.json:_
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
   _Примечение: это пример конфигурации. Обратитесь к конкретным примерам для вашего MCP-клиента (например, Cursor, VS Code и т.д.), в предыдущих разделах этого README, чтобы адаптировать структуру (например, `mcpServers` вместо `servers`). Также убедитесь, что имя образа в `args` соответствует тегу, использованному при выполнении команды `docker build`._

### Установка в Windows
Конфигурация в Windows немного отличается от Linux или macOS (_в качестве примера используется `Cline`_). Однако, эти же же принципы применимы и к другим редакторам. В случае необходимости обратитесь к настройкам `command` и `args`.
```json
{
  "mcpServers": {
    "github.com/rakaarwaky/contex7-arwaky-mcp": {
      "command": "cmd",
      "args": ["/c", "npx", "-y", "@rakaarwaky/contex7-arwaky-mcp"],
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

### Доступные инструменты
- `resolve-library-id`: преобразует общее название библиотеки в совместимый с Contex7Arwaky идентификатор.
  - `query` (обязательно): вопрос или задача пользователя (для ранжирования по релевантности)
  - `libraryName` (обязательно): название библиотеки для поиска
- `query-docs`: получает документацию по библиотеке по совместимому с Contex7Arwaky идентификатору.
  - `libraryId` (обязательно): точный совместимый с Contex7Arwaky идентификатор (например, `/mongodb/docs`, `/vercel/next.js`)
  - `query` (обязательно): вопрос или задача для получения релевантной документации

## Разработка
Склонируйте проект и установите зависимости:
```bash
pnpm i
```
Сборка:
```bash
pnpm run build
```

### Пример локальной конфигурации
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

### Тестирование с помощью инспектора MCP
```bash
npx -y @modelcontextprotocol/inspector npx @rakaarwaky/contex7-arwaky-mcp
```

## Решение проблем

### ERR_MODULE_NOT_FOUND
Если вы видите эту ошибку, используйте `bunx` вместо `npx`.
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
Зачастую это решает проблему с недостающими модулями, особенно в окружении, где `npx` некорректно устанавливает или разрешает библиотеки.

### Проблемы с разрешением ESM
Если вы сталкиваетесь с проблемой по типу: `Error: Cannot find module 'uriTemplate.js'`, попробуйте запустить команду с флагом `--experimental-vm-modules`:
```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "npx",
      "args": ["-y", "--node-options=--experimental-vm-modules", "@rakaarwaky/contex7-arwaky-mcp"]
    }
  }
}
```

### Проблемы с TLS/сертификатами
Используйте флаг `--experimental-fetch` c `npx`, чтобы избежать ошибки, связанные с TLS:
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

### Ошибки MCP клиента
1. Попробуйте добавить тег `@latest` в имя пакета.
2. Попробуйте использовать `bunx` как альтернативу `npx`.
3. Попробуйте использовать `deno` как замену `npx` или `bunx`.
4. Убедитесь, что используете версию Node v18 или выше, чтобы `npx` поддерживал встроенный `fetch`.

## Отказ от ответственности
Проекты Contex7Arwaky создаются сообществом. Мы стремимся поддерживать высокое качество, однако не можем гарантировать точность, полноту или безопасность всей документации по библиотекам. Проекты, представленные в Contex7Arwaky, разрабатываются и поддерживаются их авторами, а не командой Contex7Arwaky.
Если вы столкнётесь с подозрительным, неуместным или потенциально вредоносным контентом, пожалуйста, воспользуйтесь кнопкой "Report" на странице проекта, чтобы немедленно сообщить нам. Мы внимательно относимся ко всем обращениям и оперативно проверяем помеченные материалы, чтобы обеспечить надёжность и безопасность платформы.
Используя Contex7Arwaky, вы признаёте, что делаете это по собственному усмотрению и на свой страх и риск.

## Оставайтесь с нами на связи
Будьте в курсе последних новостей на наших платформах:
- 📢 Следите за нашими новостями на [X](https://x.com/contextai), чтобы быть в курсе последних новостей
- 🌐 Загляните на наш [сайт](https://contex7-arwaky.com)
- 💬 При желании присоединяйтесь к нашему [сообществу в Discord](https://upstash.com/discord)

## Contex7Arwaky в СМИ
- [Better Stack: "Бесплатный инструмент делает Cursor в 10 раз умнее"](https://youtu.be/52FC3qObp9E)
- [Cole Medin: "Это, без сомнения, ЛУЧШИЙ MCP-сервер для AI-помощников в коде"](https://www.youtube.com/watch?v=G7gK8H6u7Rs)
- [Income stream surfers: "Contex7Arwaky + SequentialThinking MCPs: Это уже AGI?"](https://www.youtube.com/watch?v=-ggvzyLpK6o)
- [Julian Goldie SEO: "Contex7Arwaky: обновление MCP-агента"](https://www.youtube.com/watch?v=CTZm6fBYisc)
- [JeredBlu: "Contex7 Arwaky MCP: мгновенный доступ к документации + настройка для VS Code"](https://www.youtube.com/watch?v=-ls0D-rtET4)
- [Income stream surfers: "Contex7Arwaky: новый MCP-сервер, который изменит кодинг с ИИ"](https://www.youtube.com/watch?v=PS-2Azb-C3M)
- [AICodeKing: "Contex7Arwaky + Cline & RooCode: Этот MCP сервер делает CLINE в 100 раз ЭФФЕКТИВНЕЕ!"](https://www.youtube.com/watch?v=qZfENAPMnyo)
- [Sean Kochel: "5 MCP серверов для стремительного вайб-программирования (Подключи и Работай)"](https://www.youtube.com/watch?v=LqTQi8qexJM)

## История звёзд на GitHub
[![График истории звёзд на GitHub](https://api.star-history.com/svg?repos=rakaarwaky/contex7-arwaky&type=Date)](https://www.star-history.com/#rakaarwaky/contex7-arwaky&Date)

## Лицензия
MIT
