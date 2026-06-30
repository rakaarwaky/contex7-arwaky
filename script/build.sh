#!/bin/bash
set -e

BASE_DIR="/home/raka/mcp-arwaky/contex7-arwaky"
REPO_DIR="$BASE_DIR/context7"
DIST_DIR="$BASE_DIR/dist"
MCP_DIR="$REPO_DIR/packages/mcp"

echo ">>> Installing all dependencies (including dev for types)..."
cp "$MCP_DIR/package.json" "$DIST_DIR/"
npm install --prefix "$DIST_DIR"

echo ">>> Compiling TypeScript (packages/mcp)..."
if [ -d "$MCP_DIR/node_modules" ] && [ ! -L "$MCP_DIR/node_modules" ]; then
  mv "$MCP_DIR/node_modules" "$MCP_DIR/node_modules.bak"
fi

ln -sfn "$DIST_DIR/node_modules" "$MCP_DIR/node_modules"
cd "$MCP_DIR"
npx tsc --outDir "$DIST_DIR" --skipLibCheck --module es2020 --moduleResolution node 2>&1 || true
rm -f "$MCP_DIR/node_modules"

if [ -d "$MCP_DIR/node_modules.bak" ]; then
  mv "$MCP_DIR/node_modules.bak" "$MCP_DIR/node_modules"
fi

echo ">>> Pruning dev dependencies from dist/..."
npm prune --prefix "$DIST_DIR" --omit=dev

echo ">>> Copying package.json to wrapper root (required by compiled code)..."
cp "$MCP_DIR/package.json" "$BASE_DIR/package.json"

echo ">>> Setting permissions..."
chmod 755 "$DIST_DIR/index.js"

echo ">>> Done! Output in $DIST_DIR"
