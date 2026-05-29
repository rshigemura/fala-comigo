#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# Fala Comigo — Instalador de git hooks
# Copia os hooks versionados de scripts/git-hooks/ para .git/hooks/.
# Rode uma vez após clonar o repositório:  bash scripts/install-hooks.sh
# ─────────────────────────────────────────────────────────────────────────────
set -e
repo_root="$(cd "$(dirname "$0")/.." && pwd)"
src="$repo_root/scripts/git-hooks"
dst="$repo_root/.git/hooks"

if [ ! -d "$dst" ]; then
  echo "❌ .git/hooks não encontrado. Rode dentro de um repositório git."
  exit 1
fi

for hook in "$src"/*; do
  name="$(basename "$hook")"
  cp "$hook" "$dst/$name"
  chmod +x "$dst/$name"
  echo "✅ Hook instalado: $name"
done

echo "Pronto! Os hooks de git estão ativos."
