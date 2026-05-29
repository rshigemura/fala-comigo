#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# Fala Comigo — Hook PostToolUse do Claude Code
# Lembra de revisar/atualizar a documentação sempre que o aplicativo
# (index.html) for editado pelo Claude Code.
# Referenciado por .claude/settings.json.
# ─────────────────────────────────────────────────────────────────────────────
input=$(cat)

# Extrai o caminho do arquivo editado do payload JSON do hook.
file_path=$(printf '%s' "$input" | python3 -c \
  "import sys,json;\
d=json.load(sys.stdin);\
print(d.get('tool_input',{}).get('file_path',''))" 2>/dev/null)

# Fallback sem python3 (parsing simples).
if [ -z "$file_path" ]; then
  file_path=$(printf '%s' "$input" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
fi

case "$file_path" in
  *index.html)
    cat <<'JSON'
{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"📖 Lembrete de documentação: o aplicativo (index.html) foi modificado. Reveja documentacao.html e atualize-a se as mudanças afetarem o que está descrito (funcionalidades, categorias, telas, instruções, voz/acessibilidade). Se a documentação for alterada, lembre-se de incrementar o CACHE_VERSION em sw.js para que a nova versão chegue offline. Mantenha sempre o rodapé 'Criado com amor para pessoas especiais'."}}
JSON
    ;;
esac
exit 0
