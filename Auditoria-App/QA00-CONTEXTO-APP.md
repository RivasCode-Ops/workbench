# QA00 — Contexto do app entregue

> Alinha escopo, ambiente e critério de “pronto”.

---

## CONTEXTO OBRIGATÓRIO

```
Nome:
Tipo de entrega: protótipo | MVP | versão cliente
Stack (package.json / scripts):
Como executar (comandos exatos):
URL de teste:
Navegador usado: Chrome | Edge | …
Dados de teste: (login demo, seed)
O que o cliente/você esperava que funcionasse:
O que está claramente fora de escopo:
```

**Anexar:** `@package.json` `@public/` `@src/` ou arquivos `.html` principais

---

## TAREFA

1. Identificar **tipo de app** (SPA, multi-page HTML, híbrido)
2. Listar **entry points** (index, rotas, menus)
3. Detectar **persistência** (API, localStorage, mock, nenhuma)
4. Resumir **escopo auditável** em 5 linhas
5. **Gate:** `AVANÇAR` | `PEDIR_REPO` | `PEDIR_URL`

---

**Próximo:** `QA01-MAPA-FUNCIONAL.md`

**PROMPT DE INÍCIO:**
> "Este é o app entregue. Identifique stack, como rodar e o escopo que vou auditar."
