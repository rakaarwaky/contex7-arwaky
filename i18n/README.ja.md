# Contex7Arwaky MCP - どんなプロンプトにも最新のコードドキュメントで応える

[![Website](https://img.shields.io/badge/Website-contex7-arwaky.com-blue)](https://contex7-arwaky.com) [![smithery badge](https://smithery.ai/badge/@rakaarwaky/contex7-arwaky-mcp)](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp) [<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
[![繁體中文](https://img.shields.io/badge/docs-繁體中文-yellow)](./README.zh-TW.md) [![簡體中文](https://img.shields.io/badge/docs-簡體中文-yellow)](./README.zh-CN.md) [![日本語](https://img.shields.io/badge/docs-日本語-b7003a)](./README.ja.md) [![한국어 문서](https://img.shields.io/badge/docs-한국어-green)](./README.ko.md) [![Documentación en Español](https://img.shields.io/badge/docs-Español-orange)](./README.es.md) [![Documentation en Français](https://img.shields.io/badge/docs-Français-blue)](./README.fr.md) [![Documentação em Português (Brasil)](<https://img.shields.io/badge/docs-Português%20(Brasil)-purple>)](./README.pt-BR.md) [![Documentazione in italiano](https://img.shields.io/badge/docs-Italian-red)](./README.it.md) [![Dokumentasi Bahasa Indonesia](https://img.shields.io/badge/docs-Bahasa%20Indonesia-pink)](./README.id-ID.md) [![Dokumentation auf Deutsch](https://img.shields.io/badge/docs-Deutsch-darkgreen)](./README.de.md) [![Документация на русском языке](https://img.shields.io/badge/docs-Русский-darkblue)](./README.ru.md) [![Türkçe Doküman](https://img.shields.io/badge/docs-Türkçe-blue)](./README.tr.md) [![Arabic Documentation](https://img.shields.io/badge/docs-Arabic-white)](./README.ar.md)

## ❌ Contex7Arwaky を使わないと

LLM は使用しているライブラリに関する古い情報や一般的な情報に依存しています。その結果：

- ❌ コード例が古く、1 年前のトレーニングデータに基づいている
- ❌ 存在しない API をハルシネーションして生成する
- ❌ 古いパッケージバージョンに対する一般的な回答しか得られない

## ✅ Contex7Arwaky を使うと

Contex7Arwaky MCP は最新のバージョン固有のドキュメントとコード例をソースから直接取得し、プロンプトに直接配置します。
Cursor のプロンプトに `use contex7-arwaky` を追加するだけ：

```txt
Create a basic Next.js project with app router. use contex7-arwaky
```

```txt
Create a script to delete the rows where the city is "" given PostgreSQL credentials. use contex7-arwaky
```

Contex7Arwaky は最新のコード例とドキュメントを直接 LLM のコンテキストに取得します。

- 1️⃣ 普段通りにプロンプトを書く
- 2️⃣ LLM に `use contex7-arwaky` と指示する
- 3️⃣ 動作するコードの回答を得る
  タブの切り替えも、存在しない API のハルシネーションも、古いコード生成もありません。

## 📚 プロジェクトの追加

[プロジェクト追加ガイド](https://contex7-arwaky.com/docs/adding-libraries) をチェックして、お気に入りのライブラリを Contex7Arwaky に追加（または更新）する方法を学びましょう。

## 🛠️ インストール

### 必須要件

- Node.js >= v18.0.0
- Cursor、Windsurf、Claude Desktop またはその他の MCP クライアント
<details>
<summary><b>Smithery 経由でのインストール</b></summary>

[Smithery](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp) 経由で任意のクライアントに Contex7Arwaky MCP サーバーを自動的にインストールするには：

```bash
npx -y @smithery/cli@latest install @rakaarwaky/contex7-arwaky-mcp --client <CLIENT_NAME> --key <YOUR_SMITHERY_KEY>
```

Smithery キーは [Smithery.ai Web ページ](https://smithery.ai/server/@rakaarwaky/contex7-arwaky-mcp) で確認できます。

</details>

<details>
<summary><b>Cursor へのインストール</b></summary>

`Settings` -> `Cursor Settings` -> `MCP` -> `Add new global MCP server` に移動します
以下の設定を Cursor の `~/.cursor/mcp.json` ファイルに貼り付けることが推奨されます。プロジェクトフォルダに `.cursor/mcp.json` を作成することで、特定のプロジェクトにインストールすることもできます。詳細は [Cursor MCP ドキュメント](https://docs.cursor.com/context/model-context-protocol) を参照してください。
> Cursor 1.0 以降、下のインストールボタンをクリックすることで、ワンクリックで即座にインストールできます。

#### Cursor リモートサーバー接続
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

#### Cursor ローカルサーバー接続
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
<summary>代替方法：Bun を使用</summary>

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
<summary>代替方法：Deno を使用</summary>

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
<summary><b>Windsurf へのインストール</b></summary>

これを Windsurf MCP 設定ファイルに追加します。詳細は [Windsurf MCP ドキュメント](https://docs.windsurf.com/windsurf/mcp) を参照してください。

#### Windsurf リモートサーバー接続

```json
{
  "mcpServers": {
    "contex7-arwaky": {
      "serverUrl": "https://mcp.contex7-arwaky.com/mcp"
    }
  }
}
```

#### Windsurf ローカルサーバー接続

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
<summary><b>VS Code へのインストール</b></summary>

[<img alt="Install in VS Code (npx)" src="https://img.shields.io/badge/VS_Code-VS_Code?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=0098FF">](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
[<img alt="Install in VS Code Insiders (npx)" src="https://img.shields.io/badge/VS_Code_Insiders-VS_Code_Insiders?style=flat-square&label=Install%20Contex7Arwaky%20MCP&color=24bfa5">](https://insiders.vscode.dev/redirect?url=vscode-insiders%3Amcp%2Finstall%3F%7B%22name%22%3A%22contex7-arwaky%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40upstash%2Fcontex7-arwaky-mcp%40latest%22%5D%7D)
これを VS Code MCP 設定ファイルに追加します。詳細は [VS Code MCP ドキュメント](https://code.visualstudio.com/docs/copilot/chat/mcp-arwaky) を参照してください。

#### VS Code リモートサーバー接続

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

#### VS Code ローカルサーバー接続

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
<summary>
<b>Cline でのインストール</b>
</summary>

1. **Cline** を開きます。
2. メニューアイコン (☰) をクリックし、**MCP サーバー**セクションに移動します。
3. **リモートサーバー** タブを選択します。
4. **設定を編集** ボタンをクリックします。
5. contex7-arwaky に関連する設定を `mcpServers` に追加します：
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
<summary><b>Visual Studio 2022 へのインストール</b></summary>

[Visual Studio MCP サーバードキュメント](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022) に従って、Visual Studio 2022 で Contex7Arwaky MCP を設定できます。
これを Visual Studio MCP 設定ファイルに追加します（詳細は [Visual Studio ドキュメント](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022) を参照）：
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
または、ローカルサーバーの場合：
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
詳細情報とトラブルシューティングについては、[Visual Studio MCP サーバードキュメント](https://learn.microsoft.com/visualstudio/ide/mcp-arwaky?view=vs-2022) を参照してください。
</details>

<details>
<summary><b>Zed へのインストール</b></summary>

[Zed Extensions](https://zed.dev/extensions?query=Contex7Arwaky) 経由でインストールできるか、Zed の `settings.json` にこれを追加できます。詳細は [Zed Context Server ドキュメント](https://zed.dev/docs/assistant/context-servers) を参照してください。
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
<summary><b>Claude Code へのインストール</b></summary>

このコマンドを実行します。詳細は [Claude Code MCP ドキュメント](https://docs.anthropic.com/ja/docs/claude-code/mcp) を参照してください。

#### Claude Code ローカルサーバー接続

```sh
claude mcp add --scope user contex7-arwaky -- npx -y @rakaarwaky/contex7-arwaky-mcp
```

#### Claude Code リモートサーバー接続

```sh
claude mcp add --scope user --transport http contex7-arwaky https://mcp.contex7-arwaky.com/mcp
```
</details>

<details>
<summary><b>Claude Desktop へのインストール</b></summary>

これを Claude Desktop の `claude_desktop_config.json` ファイルに追加します。詳細は [Claude Desktop MCP ドキュメント](https://modelcontextprotocol.io/quickstart/user) を参照してください。
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
<summary><b>BoltAI へのインストール</b></summary>

アプリの "Settings" ページを開き、"Plugins" に移動し、以下の JSON を入力します：
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
保存後、チャットで `query-docs` の後に Contex7Arwaky ドキュメント ID を入力します（例：`query-docs /nuxt/ui`）。詳細情報は [BoltAI ドキュメンテーションサイト](https://docs.boltai.com/docs/plugins/mcp-arwaky) で利用可能です。iOS 版 BoltAI については、[このガイドを参照してください](https://docs.boltai.com/docs/boltai-mobile/mcp-arwaky)。
</details>

<details>
<summary><b>Copilot Coding Agent へのインストール</b></summary>

以下の設定を Copilot Coding Agent の `mcp` セクション（Repository->Settings->Copilot->Coding agent->MCP configuration）に追加してください：
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
詳細は [公式 GitHub ドキュメント](https://docs.github.com/en/enterprise-cloud@latest/copilot/how-tos/agents/copilot-coding-agent/extending-copilot-coding-agent-with-mcp) をご覧ください。
</details>

<details>
<summary><b>Copilot CLI へのインストール</b></summary>

1.  Copilot CLI MCP 設定ファイルを開きます。ファイルの場所は `~/.copilot/mcp-config.json`（`~` はホームディレクトリ）です。
2.  `mcp-config.json` ファイルの `mcpServers` オブジェクトに以下を追加します：
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
または、ローカルサーバーの場合：
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
`mcp-config.json` ファイルが存在しない場合は、作成してください。
</details>

<details>
<summary><b>Docker を使用</b></summary>

MCP サーバーを Docker コンテナで実行したい場合：
1. **Docker イメージのビルド：**
   まず、プロジェクトルート（または希望の場所）に `Dockerfile` を作成します：
   <details>
   <summary>Dockerfile の内容を表示</summary>

   ```Dockerfile
   FROM node:18-alpine
   WORKDIR /app
   # 最新バージョンをグローバルにインストール
   RUN npm install -g @rakaarwaky/contex7-arwaky-mcp
   # 必要に応じてデフォルトポートを公開（任意、MCP クライアントの相互作用に依存）
   # EXPOSE 3000
   # サーバーを実行するデフォルトコマンド
   CMD ["contex7-arwaky-mcp"]
   ```
   </details>

   次に、タグ（例：`contex7-arwaky-mcp`）を使用してイメージをビルドします。**Docker Desktop（または Docker デーモン）が実行中であることを確認してください。** `Dockerfile` を保存した同じディレクトリで次のコマンドを実行します：
   ```bash
   docker build -t contex7-arwaky-mcp .
   ```
2. **MCP クライアントの設定：**
   MCP クライアントの設定を更新して Docker コマンドを使用するようにします。
   _cline_mcp_settings.json の例：_
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
   _注：これは設定例です。この README の前半で MCP クライアント（Cursor、VS Code など）の具体的な例を参照して、構造（例：`mcpServers` 対 `servers`）を適応させてください。また、`args` 内のイメージ名が `docker build` コマンドで使用したタグと一致していることを確認してください。_
</details>

<details>
<summary><b>Windows へのインストール</b></summary>

Windows での設定は Linux や macOS と比べて少し異なります（_例では `Cline` を使用_）。同じ原則が他のエディタにも適用されます。`command` と `args` の設定を参照してください。
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
<summary><b>Augment Code へのインストール</b></summary>

Augment Code で Contex7Arwaky MCP を設定するには、グラフィカルインターフェースまたは手動設定のいずれかを使用できます。

### **A. Augment Code UI を使用する場合**
1. ハンバーガーメニューをクリックします。
2. **Settings** を選択します。
3. **Tools** セクションに移動します。
4. **+ Add MCP** ボタンをクリックします。
5. 以下のコマンドを入力します：
   ```
   npx -y @rakaarwaky/contex7-arwaky-mcp@latest
   ```
6. MCP に **Contex7Arwaky** と名前を付けます。
7. **Add** ボタンをクリックします。
MCP サーバーが追加されたら、Augment Code 内で Contex7Arwaky の最新コードドキュメンテーション機能を直接使用できます。
---

### **B. 手動設定**
1. Cmd/Ctrl Shift P を押すか、Augment パネルのハンバーガーメニューに移動します
2. Edit Settings を選択します
3. Advanced の下で、Edit in settings.json をクリックします
4. `augment.advanced` オブジェクト内の `mcpServers` 配列にサーバー設定を追加します
"augment.advanced": {
"mcpServers": [
{
"name": "contex7-arwaky",
"command": "npx",
"args": ["-y", "@rakaarwaky/contex7-arwaky-mcp"]
}
]
}
MCP サーバーが追加されたら、エディタを再起動します。エラーが発生した場合は、構文をチェックして、閉じ括弧やカンマが欠けていないことを確認してください。
</details>

<details>
<summary><b>Roo Code へのインストール</b></summary>

これを Roo Code MCP 設定ファイルに追加します。詳細は [Roo Code MCP ドキュメント](https://docs.roocode.com/features/mcp/using-mcp-in-roo) を参照してください。

#### Roo Code リモートサーバー接続

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

#### Roo Code ローカルサーバー接続

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
<summary><b>Zencoder へのインストール</b></summary>

Zencoder で Contex7Arwaky MCP を設定するには、以下の手順に従います：
1. Zencoder メニュー (...) に移動します
2. ドロップダウンメニューから Agent tools を選択します
3. Add custom MCP をクリックします
4. 以下から名前とサーバー設定を追加し、Install ボタンを必ず押してください
```json
{
  "command": "npx",
  "args": ["-y", "@rakaarwaky/contex7-arwaky-mcp@latest"]
}
```
MCP サーバーが追加されたら、簡単に使用を続けることができます。
</details>

<details>
<summary><b>Amazon Q Developer CLI へのインストール</b></summary>

これを Amazon Q Developer CLI 設定ファイルに追加します。詳細は [Amazon Q Developer CLI ドキュメント](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-mcp-configuration.html) を参照してください。
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

## 🔨 利用可能なツール
Contex7Arwaky MCP は LLM が使用できる以下のツールを提供します：
- `resolve-library-id`：一般的なライブラリ名を Contex7Arwaky 互換のライブラリ ID に変換します。
  - `query`（必須）：ユーザーの質問またはタスク（関連性によるランキングに使用）
  - `libraryName`（必須）：検索するライブラリの名前
- `query-docs`：Contex7Arwaky 互換のライブラリ ID を使用してライブラリのドキュメントを取得します。
  - `libraryId`（必須）：正確な Contex7Arwaky 互換のライブラリ ID（例：`/mongodb/docs`、`/vercel/next.js`）
  - `query`（必須）：関連するドキュメントを取得するための質問またはタスク

## 💻 開発
プロジェクトをクローンして依存関係をインストールします：
```bash
pnpm i
```
ビルド：
```bash
pnpm run build
```
サーバーを実行：
```bash
node packages/mcp/dist/index.js
```

### CLI 引数
`contex7-arwaky-mcp` は以下の CLI フラグを受け付けます：
- `--transport <stdio|http>` – 使用するトランスポート（デフォルトは `stdio`）。
- `--port <number>` – `http` トランスポート使用時にリッスンするポート（デフォルト `3000`）。
http トランスポートとポート 8080 の例：
```bash
node packages/mcp/dist/index.js --transport http --port 8080
```
<details>
<summary><b>ローカル設定例</b></summary>

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
<summary><b>MCP Inspector でのテスト</b></summary>

```bash
npx -y @modelcontextprotocol/inspector npx @rakaarwaky/contex7-arwaky-mcp
```
</details>

## 🚨 トラブルシューティング
<details>
<summary><b>モジュールが見つからないエラー</b></summary>

`ERR_MODULE_NOT_FOUND` が発生した場合は、`npx` の代わりに `bunx` を使用してみてください：
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
これにより、`npx` がパッケージを正しくインストールまたは解決できない環境でのモジュール解決の問題が解決されることがあります。
</details>

<details>
<summary><b>ESM 解決の問題</b></summary>

`Error: Cannot find module 'uriTemplate.js'` のようなエラーの場合は、`--experimental-vm-modules` フラグを試してください：
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
<summary><b>TLS/証明書の問題</b></summary>

TLS 関連の問題を回避するには、`--experimental-fetch` フラグを使用します：
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
<summary><b>一般的な MCP クライアントエラー</b></summary>

1. パッケージ名に `@latest` を追加してみる
2. `npx` の代替として `bunx` を使用する
3. 別の代替方法として `deno` の使用を検討する
4. ネイティブ fetch サポートのために Node.js v18 以上を使用していることを確認する
</details>

## ⚠️ 免責事項
Contex7Arwaky プロジェクトはコミュニティが貢献しているもので、高品質を維持するよう努めていますが、すべてのライブラリドキュメントの正確性、完全性、セキュリティを保証することはできません。Contex7Arwaky にリストされているプロジェクトは、Contex7Arwaky ではなく、それぞれの所有者によって開発および保守されています。疑わしい、不適切な、または潜在的に有害なコンテンツを発見した場合は、プロジェクトページの「報告」ボタンを使用して、すぐにお知らせください。私たちはすべての報告を真剣に受け止め、プラットフォームの整合性と安全性を維持するために、フラグが付けられたコンテンツを迅速にレビューします。Contex7Arwaky を使用することにより、あなたは自己の裁量とリスクで使用することを認めます。

## 🤝 私たちとつながる
最新情報を入手し、コミュニティに参加しましょう：
- 📢 最新ニュースとアップデートのために [X](https://x.com/contextai) でフォローしてください
- 🌐 [Web サイト](https://contex7-arwaky.com) を訪問してください
- 💬 [Discord コミュニティ](https://upstash.com/discord) に参加してください

## 📺 メディアでの Contex7Arwaky
- [Better Stack: "Free Tool Makes Cursor 10x Smarter"](https://youtu.be/52FC3qObp9E)
- [Cole Medin: "This is Hands Down the BEST MCP Server for AI Coding Assistants"](https://www.youtube.com/watch?v=G7gK8H6u7Rs)
- [Income Stream Surfers: "Contex7Arwaky + SequentialThinking MCPs: Is This AGI?"](https://www.youtube.com/watch?v=-ggvzyLpK6o)
- [Julian Goldie SEO: "Contex7Arwaky: New MCP AI Agent Update"](https://www.youtube.com/watch?v=CTZm6fBYisc)
- [JeredBlu: "Contex7 Arwaky MCP: Get Documentation Instantly + VS Code Setup"](https://www.youtube.com/watch?v=-ls0D-rtET4)
- [Income Stream Surfers: "Contex7Arwaky: The New MCP Server That Will CHANGE AI Coding"](https://www.youtube.com/watch?v=PS-2Azb-C3M)
- [AICodeKing: "Contex7Arwaky + Cline & RooCode: This MCP Server Makes CLINE 100X MORE EFFECTIVE!"](https://www.youtube.com/watch?v=qZfENAPMnyo)
- [Sean Kochel: "5 MCP Arwaky For Vibe Coding Glory (Just Plug-In & Go)"](https://www.youtube.com/watch?v=LqTQi8qexJM)

## ⭐ スター履歴
[![Star History Chart](https://api.star-history.com/svg?repos=rakaarwaky/contex7-arwaky&type=Date)](https://www.star-history.com/#rakaarwaky/contex7-arwaky&Date)

## 📄 ライセンス
MIT
