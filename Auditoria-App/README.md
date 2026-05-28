# Auditoria de App — aplicativo web entregue (genérico)

Prompts para analisar **qualquer** app já entregue: HTML estático, SPA, dashboard, portal, loja, CRM, etc.

**Não assume tipo de negócio.** Você define o que foi **prometido**; o agente compara com o código e com checklist **universal** de qualidade web.

---

## Por que existe esta pasta

| Pergunta | Resposta |
|----------|----------|
| O app faz o que diz? | Mapa funcional + teste prático |
| Tem erros de funcionamento? | Quadro de erros com severidade |
| Falta algo no projeto? | Quadro de lacunas vs **seu** escopo |
| Como corrigir? | Instruções ordenadas + onde mexer no código |

---

## Como o agente age (resumo)

```
1. Você informa: o que foi prometido + @repo + URL (se rodar)
2. Ele lê o código → inventaria telas, botões, fluxos
3. Monta checklist = UNIVERSAL (A–E) + PROMETIDO (P1, P2…)
4. Testa (ou gera roteiro para você testar) → OK / FALHA / N/T
5. Consolida erros e lacunas em quadros
6. Dá plano de correção priorizado (P0 primeiro)
7. Gate: APROVADO | AJUSTAR | REPROVAR
```

Detalhe: [`COMO-AGIR.md`](./COMO-AGIR.md)

---

## Arquivos

| Arquivo | Função |
|---------|--------|
| `COMO-AGIR.md` | Metodologia completa (leia primeiro) |
| `QA-SESSAO-UNICA.md` | Prompt único para colar no Claude |
| `QA00`–`QA04` | Fases separadas (auditoria longa) |
| `CHECKLIST-APP-GENERICO.md` | Itens válidos para qualquer web app |
| `TEMPLATE-SAIDA.md` | Formato dos quadros de saída |

---

## Uso rápido

1. Rode o app (se precisar de servidor)
2. Abra `QA-SESSAO-UNICA.md`
3. Preencha **Prometido na entrega** (bullets)
4. Anexe `@pasta-do-projeto`

---

## Outros kits

| Depois | Pasta |
|--------|-------|
| Corrigir bug | `Correcao-Rapida` |
| Feature nova | `Projeto Novo/D01` |
| PR | `Guardiao-PR` |
| Dívida técnica do repo | `Raio-X-Projeto` |

**Caminho J** em [`../CAMINHOS.md`](../CAMINHOS.md)
