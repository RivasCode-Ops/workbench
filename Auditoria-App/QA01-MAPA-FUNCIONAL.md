# QA01 — Mapa funcional (código + CRM)

> Varre código e compara com [`CHECKLIST-APP-GENERICO.md`](./CHECKLIST-APP-GENERICO.md) (A–E) + lista **Prometido** do QA00 (P1…).

**Pré-requisito:** QA00 = `AVANÇAR`

---

## METODOLOGIA

1. Ler menus, rotas, componentes, `addEventListener`, handlers vazios
2. Para cada item **A–E** do checklist genérico + cada item **P** prometido: existe? (sim / parcial / não)
3. Marcar **suspeitas** sem abrir browser: botão sem handler, `href="#"`, TODO, `console.error`
4. Montar tabela seção 2 do [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) coluna **No código?**

---

## ENTREGA

| Coluna | Preencher |
|--------|-----------|
| Módulo / área | (do app: ex. cadastro, relatório, config) |
| Funcionalidade | |
| No código? | sim / parcial / não |
| Evidência | arquivo:linha ou componente |
| Teste prático | deixar vazio → QA02 |
| Status preliminar | 🟢🟡🔴 se óbvio pelo código |

**Lista de telas/arquivos inventariados** (árvore curta)

**Top 5 suspeitas** para testar primeiro no QA02

**Gate:** `AVANÇAR_QA02` | `REPROVAR_ESCOPO` (repo vazio / ilegível)

---

**PROMPT DE INÍCIO:**
> "Mapeie as funcionalidades no código: checklist genérico A–E + o que eu listei como prometido. Indique o que existe, o que está pela metade e o que não existe."
