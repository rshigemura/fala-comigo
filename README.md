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

- **5 categorias**: Necessidades Básicas, Emoções, Atividades, Pessoas, Lugares
- **60 pictogramas** do ARASAAC (licença Creative Commons BY-NC-SA)
- **Barra de frase**: monte sentenças tocando em múltiplos cards
- **Síntese de voz** em Português do Brasil (Web Speech API)
- **Feedback háptico** (vibração) ao tocar cards
- **Offline-first**: após primeira visita, funciona sem internet
- **Acessibilidade**: navegação por teclado, ARIA labels, roles semânticos

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

Feito com ❤️ para crianças que se comunicam de formas diferentes.
