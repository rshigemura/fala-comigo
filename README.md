# Fala Comigo — CAA PWA

Aplicativo de Comunicação Aumentativa e Alternativa (CAA) para crianças.  
Desenvolvido como prova de conceito inspirado no TDSnap, usando pictogramas do ARASAAC.

---

## 📱 Como instalar no Android

1. Abra o arquivo `index.html` em um servidor local ou hospede os 3 arquivos em qualquer serviço (GitHub Pages, Netlify, etc.)
2. No Chrome Android, abra o endereço do app
3. Toque no menu (⋮) → **"Adicionar à tela inicial"**
4. O app abre como um app nativo, sem barra de endereços

## 🍎 Como usar no iPhone/iPad

1. Abra no Safari
2. Toque no ícone de compartilhar (□↑)
3. Selecione **"Adicionar à Tela de Início"**

---

## ✨ Funcionalidades

- **7 categorias**: Necessidades Básicas, Emoções, Atividades, Pessoas, Lugares, Vestuário
- **~100 pictogramas** do ARASAAC + símbolos Mulberry (Creative Commons)
- **Barra de frase**: monte sentenças tocando em múltiplos cards
- **Síntese de voz** em Português do Brasil (Web Speech API)
- **Modo de edição**: adicione, edite, mova, reordene e exclua cards e categorias
- **Exportar/Importar** configuração em JSON (backup e compartilhamento)
- **Offline-first**: após primeira visita, funciona sem internet
- **Acessibilidade**: navegação por teclado, ARIA labels, roles semânticos

## 📖 Documentação

Guia completo em **[documentacao.html](documentacao.html)** (também acessível pelo ícone ❔ no app e em Ajustes → Ajuda e documentação), com seções dedicadas a:

- 👨‍👩‍👧 **Pais e famílias** — por onde começar, dicas do dia a dia, mitos
- 🧩 **Terapeutas** — aplicação clínica, vocabulário nuclear, prescrição de pranchas
- 🩺 **Profissionais de saúde** — casos de uso, vantagens, ressalvas

A página é autocontida e pode ser **baixada para uso offline** pelo botão “⬇️ Baixar offline”.

## ⚙️ Configurações disponíveis

- Liga/desliga vibração
- Liga/desliga fala imediata ao tocar card
- Velocidade da voz (0.5× a 1.5×)
- Tom da voz (grave a agudo)

---

## 🚀 Hospedagem rápida (gratuita)

### GitHub Pages
```bash
git init
git add .
git commit -m "Fala Comigo CAA"
git remote add origin https://github.com/SEU_USUARIO/fala-comigo.git
git push -u origin main
# Ative GitHub Pages nas configurações do repositório
```

### Netlify (arrastar e soltar)
1. Acesse https://app.netlify.com
2. Arraste a pasta `caa-pwa` para a área de deploy
3. Pronto! URL gerada automaticamente.

---

## 📋 Sobre os pictogramas

Os pictogramas são do portal **ARASAAC** (Centro Aragonês de CAA).  
Licença: Creative Commons BY-NC-SA 4.0  
Autor: Sergio Palao  
Origem: https://arasaac.org  

---

## 🔧 Personalização

Para adicionar novos pictogramas, edite o objeto `categories` no `index.html`.  
Cada item precisa de:
- `id`: ID do pictograma no ARASAAC (pesquise em https://arasaac.org)
- `label`: nome em português
- `emoji`: fallback caso a imagem não carregue

---

## 🔄 Manutenção da documentação

A documentação é mantida em sincronia com o app por dois mecanismos automáticos:

1. **Hook do Claude Code** (`.claude/settings.json`): ao editar `index.html`, lembra de revisar `documentacao.html`.
2. **Git pre-commit hook** (`scripts/git-hooks/pre-commit`): bloqueia o commit se `index.html` mudar sem `documentacao.html`.

Após clonar o repositório, instale o git hook uma vez:

```bash
bash scripts/install-hooks.sh
```

Ao atualizar a documentação, lembre-se de incrementar o `CACHE_VERSION` em `sw.js` para que a nova versão chegue aos usuários offline.

---

## 📄 Licença e direitos

**Copyright © 2026 Rafael Shigemura.**

O **Fala Comigo** é software livre, licenciado sob a **GNU Affero General Public
License v3.0 (AGPL-3.0)** — veja o arquivo [`LICENSE`](LICENSE).

### 💜 Compromisso: gratuito e livre para sempre

Este aplicativo é e sempre será **gratuito e livre** para uso. A licença AGPL-3.0
garante isso de forma irrevogável:

- Qualquer pessoa pode usar, estudar, copiar e modificar o código.
- Qualquer versão modificada — inclusive quando **hospedada como serviço na web** —
  **deve disponibilizar o código-fonte** sob a mesma licença AGPL-3.0.
- Isso torna **impossível** transformar o Fala Comigo (ou um derivado) em um produto
  fechado e proprietário. A versão livre nunca pode ser "trancada".

### Marca e identidade

O nome **"Fala Comigo"**, o logotipo e a identidade visual são de titularidade do
autor e **não** são cobertos pela licença de software. Não os utilize de forma que
sugira endosso oficial ou que possa confundir os usuários.

### Pictogramas (ARASAAC)

Os pictogramas são do portal **ARASAAC**, sob **Creative Commons BY-NC-SA 4.0**
(autor: Sergio Palao · https://arasaac.org). A cláusula **NC (NonCommercial)**
significa que **usos comerciais desses símbolos não são permitidos** pela licença do
ARASAAC. Alguns símbolos são do conjunto **Mulberry Symbols** (CC BY-SA 2.0 UK).

---

Criado com amor para pessoas especiais 💜
