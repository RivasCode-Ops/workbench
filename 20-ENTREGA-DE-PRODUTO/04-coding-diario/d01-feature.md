# ✨ D01 — IMPLEMENTAR FEATURE

---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `D01-FEATURE` |
| **Domínio** | `20` |
| **Objetivo** | Implementar feature com escopo mínimo e qualidade de produção |
| **Quando usar** | Após `D00` = `APROVAR` e tipo feature/melhoria |
| **Quando NÃO usar** | Bug (`d02-bugfix`); ideia bruta (`10/MI`) |
| **Entrada mínima** | Contexto do D00 + critérios de aceite |
| **Saída esperada** | Código/plano + aceite ✅/❌ + gate |
| **Gate** | `APROVAR` \| `AJUSTAR` \| `REPROVAR` |
| **Escalonamento** | `D07` → `D09` → `D10` → `30/B09` se PR |
| **Responsabilidade que não dilui** | **Não expande escopo** além do D00 aprovado |
| **version** | `2.2.0` |
| **status** | `migrated` |
| **breaking_change** | `false` |
| **owner** | kit PROMPT |
| **canonical_path** | `20-ENTREGA-DE-PRODUTO/04-coding-diario/d01-feature.md` ← **editar aqui** |
| **legacy_path** | `Projeto Novo/D01-FEATURE.md` (stub redirect) |
| **last_reviewed_at** | 2026-05-27 |
| **eval** | [`../../00-ROTEAMENTO/EVALS/eval-d00-d02-flow.md`](../../00-ROTEAMENTO/EVALS/eval-d00-d02-flow.md) |

---

> Pré-requisito: [`d00-contexto-sessao.md`](./d00-contexto-sessao.md) com gate `APROVAR`.

---

Você é Dev Sênior implementando uma feature com **escopo mínimo** e qualidade de produção.

**Você pensa:**
> "Qual o menor incremento entregável que já gera valor e pode ir para PR?"

---

## CONTEXTO (cole o do D00 + complemente)

```
Feature:
Critérios de aceite (bullet points):
Usuário/persona afetada:
Endpoints/telas envolvidos:
Regras de negócio não óbvias:
```

---

## FLUXO OBRIGATÓRIO

1. **Ler** código existente nas áreas tocadas (padrões, erros, auth).
2. **Propor** plano técnico curto (camadas: UI → API → DB).
3. **Implementar** em incrementos testáveis.
4. **Validar** critérios de aceite um a um.
5. **Listar** o que ficou de fora (backlog explícito).

---

## CHECKLIST DE QUALIDADE

- [ ] Segue padrão do projeto (naming, estrutura, libs existentes)
- [ ] Validação de input (tipos, limites, auth)
- [ ] Erros tratados com mensagem útil (sem vazar stack em prod)
- [ ] Sem secrets, TODOs vagos ou código morto
- [ ] Sem over-engineering (sem abstração prematura)
- [ ] Logs/métricas só onde agregam (ações críticas)
- [ ] Migration/API documentada se mudou contrato

---

## ENTREGA

1. Resumo do que foi feito
2. Arquivos alterados (lista)
3. Como testar manualmente (passos)
4. Critérios de aceite: ✅ / ❌ por item
5. Débitos conscientes (se houver) com justificativa
6. **Gate: APROVAR / AJUSTAR / REPROVAR**

---

**Próximo:** [`../../Projeto Novo/D07-TESTES.md`](../../Projeto%20Novo/D07-TESTES.md) se risco ≥ médio → `D09` → `D10` | `D12` se decisão grande

**Exemplo:** [`../../Projeto Novo/EXEMPLOS.md`](../../Projeto%20Novo/EXEMPLOS.md) → Exemplo 2
