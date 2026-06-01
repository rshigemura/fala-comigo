# Contribuindo com o Fala Comigo 💬

Obrigado pelo interesse em colaborar! O **Fala Comigo** existe para dar voz a
pessoas que se comunicam de formas diferentes — e é mantido como **software
livre, gratuito para sempre**. Toda contribuição é bem-vinda. 💜

## 📜 Licença das contribuições

O projeto é licenciado sob a **GNU AGPL-3.0** (veja [`LICENSE`](LICENSE)).

Ao enviar uma contribuição (código, documentação, correções, traduções), você
concorda que ela será disponibilizada sob a **mesma licença AGPL-3.0**. Isso é o
que garante que o Fala Comigo **nunca** possa ser transformado em um produto
fechado ou pago: qualquer versão modificada — inclusive hospedada como serviço —
precisa manter o código-fonte aberto sob a AGPL-3.0.

Não envie código de terceiros incompatível com a AGPL-3.0 nem material do qual
você não tenha os direitos.

## 🐞 Relatando problemas / sugerindo ideias

Abra uma *issue* em
<https://github.com/rshigemura/fala-comigo/issues> descrevendo:

- O que aconteceu e o que você esperava.
- Passos para reproduzir (quando for um bug).
- **Aparelho e navegador** (ex.: iPhone com Safari, Android com Chrome).

Para falar em particular: **ajuda@falafala.com.br**.

## 🔧 Enviando alterações (Pull Requests)

1. Faça um *fork* e crie uma *branch* descritiva (ex.: `fix/voz-ios`).
2. Após clonar, instale o git hook uma vez:
   ```bash
   bash scripts/install-hooks.sh
   ```
3. Faça suas alterações seguindo as convenções abaixo.
4. Teste no navegador (de preferência também no celular).
5. Abra o PR explicando **o quê** e **por quê**.

## 🧭 Convenções do projeto

- **Offline-first**: o app precisa continuar funcionando sem internet após a
  primeira visita. Evite novas dependências externas obrigatórias.
- **Sem rastreamento invasivo**: nada de cookies de rastreamento ou coleta de
  dados pessoais. A medição de visitas é anônima e agregada.
- **Acessibilidade em primeiro lugar**: mantenha *labels* ARIA, navegação por
  teclado, bom contraste e alvos de toque generosos.
- **Documentação sincronizada**: se você alterar `index.html` de um jeito que
  muda o comportamento descrito, **atualize `documentacao.html`**. O git
  *pre-commit hook* bloqueia o commit se um mudar sem o outro.
- **Cache offline**: ao mudar `index.html`/`documentacao.html`, incremente o
  `CACHE_VERSION` em `sw.js` para que a nova versão chegue aos usuários.
- **Pictogramas (ARASAAC)**: são **CC BY-NC-SA** (não-comercial). Mantenha o uso
  **não-comercial** e a atribuição. Veja o arquivo [`NOTICE`](NOTICE).

## 💛 Tom e propósito

Este é um app para crianças e pessoas que precisam de apoio para se comunicar.
Mantenha a linguagem acolhedora, simples e respeitosa em toda a interface e
documentação. O rodapé "Criado com amor para pessoas especiais" é parte da
identidade do projeto.

---

Qualquer dúvida, é só abrir uma issue ou escrever para **ajuda@falafala.com.br**.
Obrigado por ajudar a manter a comunicação acessível para todos! 🙏
