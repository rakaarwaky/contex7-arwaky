# Contex7Arwaky MCP - توثيق أكواد محدث لأي أمر برمجي

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@rakaarwaky/contex7-arwaky-mcp)](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp) [<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)

## ❌ بدون Contex7Arwaky

تعتمد النماذج اللغوية الكبيرة على معلومات قديمة أو عامة حول المكتبات التي تستخدمها. مما يؤدي إلى:

- ❌ أمثلة أكواد قديمة مبنية على بيانات تدريب مضى عليها وقت طويل
- ❌ واجهات برمجة تطبيقات وهمية غير موجودة
- ❌ إجابات عامة لنسخ قديمة من الحزم

## ✅ مع Contex7Arwaky

يستخرج Contex7Arwaky MCP التوثيق والأمثلة البرمجية المحدثة مباشرة من المصدر — ويضعها في طلبك للنموذج.
أضف `use contex7-arwaky` إلى طلبك في Cursor:

```txt
أنشئ مشروع Next.js بسيط باستخدام app router. use contex7-arwaky
```

```txt
أنشئ سكربت لحذف الصفوف التي تكون فيها المدينة فارغة "" باستخدام بيانات اعتماد PostgreSQL. use contex7-arwaky
```

يقوم Contex7Arwaky بجلب الأمثلة المحدثة والتوثيق المناسب مباشرة إلى السياق.

- 1️⃣ اكتب طلبك بشكل طبيعي
- 2️⃣ أخبر النموذج بـ `use contex7-arwaky`
- 3️⃣ احصل على أكواد تعمل مباشرة
  لا حاجة للتنقل بين التبويبات، لا واجهات برمجة تطبيقات وهمية، لا أكواد قديمة.

## 🛠️ البدء

### المتطلبات

- Node.js إصدار 18.0.0 أو أعلى
- Cursor، Windsurf، Claude Desktop أو أي عميل MCP آخر

### التثبيت عبر Smithery

لتثبيت Contex7Arwaky MCP Server تلقائيًا لـ Claude Desktop:

```bash
npx -y @smithery/cli install @rakaarwaky/contex7-arwaky-mcp --client claude
```

### التثبيت في Cursor

اذهب إلى: `Settings` -> `Cursor Settings` -> `MCP` -> `Add new global MCP server`
أو أضف هذا إلى ملف `~/.cursor/mcp.json`:

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

### التثبيت باستخدام Bun

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "bunx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
    }
  }
}
```

### التثبيت باستخدام Deno

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

### التثبيت في Windsurf

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

### التثبيت في VS Code

```json
{
  "servers": {
    "Contex7Arwaky": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
    }
  }
}
```

### التثبيت في Zed

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

### التثبيت في Claude Code

```sh
claude mcp add --scope user contex7-arwaky -- npx -y @rakaarwaky/contex7-arwaky-mcp@latest
```

### التثبيت في Claude Desktop

```json
{
  "mcpServers": {
    "Contex7Arwaky": {
      "command": "npx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
    }
  }
}
```

### التثبيت في BoltAI

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

### التثبيت في Copilot Coding Agent

أضف التكوين التالي إلى قسم `mcp` في ملف إعدادات Copilot Coding Agent الخاص بك Repository->Settings->Copilot->Coding agent->MCP configuration:

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

لمزيد من المعلومات، راجع [التوثيق الرسمي على GitHub](https://docs.github.com/en/enterprise-cloud@latest/copilot/how-tos/agents/copilot-coding-agent/extending-copilot-coding-agent-with-mcp).

### باستخدام Docker

**Dockerfile:**

```Dockerfile
FROM node:18-alpine
WORKDIR /app
RUN npm install -g @rakaarwaky/contex7-arwaky-mcp@latest
CMD ["contex7-arwaky-mcp"]
```

**بناء الصورة:**

```bash
docker build -t contex7-arwaky-mcp .
```

**التهيئة داخل العميل:**

```json
{
  "mcpServers": {
    "Contex7Arwaky": {
      "command": "docker",
      "args": ["run", "-i", "--rm", "contex7-arwaky-mcp"],
      "transportType": "stdio"
    }
  }
}
```

### التثبيت في Windows

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

### الأدوات المتوفرة

- `resolve-library-id`: يحول اسم مكتبة عام إلى معرف متوافق مع Contex7Arwaky.
  - `query` (مطلوب): سؤال أو مهمة المستخدم (لترتيب الصلة)
  - `libraryName` (مطلوب): اسم المكتبة للبحث عنها
- `query-docs`: يستخرج التوثيق حسب المعرف.
  - `libraryId` (مطلوب): معرف Contex7Arwaky المتوافق الدقيق (مثل `/mongodb/docs`, `/vercel/next.js`)
  - `query` (مطلوب): السؤال أو المهمة للحصول على توثيق ذي صلة

## التطوير

```bash
pnpm i
pnpm run build
```

**التهيئة المحلية:**

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

**الاختبار باستخدام MCP Inspector:**

```bash
npx -y @modelcontextprotocol/inspector npx @rakaarwaky/contex7-arwaky-mcp@latest
```

## استكشاف الأخطاء

### ERR_MODULE_NOT_FOUND

استخدم `bunx` بدلاً من `npx`.

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "command": "bunx",
      "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
    }
  }
}
```

### مشاكل في ESM

جرّب إضافة:

```json
{
  "command": "npx",
  "args": ["-y", "--node-options=--experimental-vm-modules", "@rakaarwaky/contex7-arwaky-mcp@1.0.6"]
}
```

### أخطاء عميل MCP

1. أزل `@latest`
2. جرّب `bunx`
3. جرّب `deno`
4. تأكد أنك تستخدم Node v18 أو أحدث

## إخلاء مسؤولية

المشاريع المدرجة في Contex7Arwaky مساهم بها من المجتمع، ولا يمكن ضمان دقتها أو أمانها بشكل كامل. الرجاء الإبلاغ عن أي محتوى مريب باستخدام زر "الإبلاغ".

## Contex7Arwaky في الإعلام

- [Better Stack: "أداة مجانية تجعل Cursor أذكى 10x"](https://youtu.be/52FC3qObp9E)
- [Cole Medin: "أفضل MCP Server لمساعدين الذكاء الاصطناعي البرمجيين"](https://www.youtube.com/watch?v=G7gK8H6u7Rs)
- [Contex7Arwaky + SequentialThinking: هل هذا AGI؟](https://www.youtube.com/watch?v=-ggvzyLpK6o)
- [تحديث جديد من Contex7Arwaky MCP](https://www.youtube.com/watch?v=CTZm6fBYisc)
- [إعداد Contex7Arwaky في VS Code](https://www.youtube.com/watch?v=-ls0D-rtET4)
- [Contex7Arwaky: MCP جديد سيغير البرمجة](https://www.youtube.com/watch?v=PS-2Azb-C3M)
- [Cline & RooCode + Contex7Arwaky: قوة مضاعفة](https://www.youtube.com/watch?v=qZfENAPMnyo)
- [أفضل 5 MCP Arwaky لتجربة برمجة ساحرة](https://www.youtube.com/watch?v=LqTQi8qexJM)

## سجل النجوم

[![Star History Chart](https://api.star-history.com/svg?repos=rakaarwaky/contex7-arwaky&type=Date)](https://www.star-history.com/#rakaarwaky/contex7-arwaky&Date)

## الترخيص

MIT
