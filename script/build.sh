#!/bin/bash
set -e

BASE_DIR="/home/raka/mcp-arwaky/contex7-arwaky"
REPO_DIR="$BASE_DIR/context7"
DIST_DIR="$BASE_DIR/dist"
MCP_DIR="$REPO_DIR/packages/mcp"

cd "$MCP_DIR"

echo ">>> Compiling TypeScript (packages/mcp)..."
npx tsc --outDir "$DIST_DIR"

echo ">>> Setting permissions..."
chmod 755 "$DIST_DIR/index.js"

echo ">>> Done! Output in $DIST_DIR"
