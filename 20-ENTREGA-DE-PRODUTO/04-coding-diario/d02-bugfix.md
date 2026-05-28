# 🐛 D02 — CORRIGIR BUG

---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `D02-BUGFIX` |
| **Domínio** | `20` |
| **Objetivo** | Corrigir bug com mudança mínima após contexto alinhado |
| **Quando usar** | Após `D00`; causa conhecida ou pós-`D08` |
| **Quando NÃO usar** | Bug 5 min sem sessão → [`../../50-CORRECAO-RAPIDA/R00`](../../50-CORRECAO-RAPIDA/R00-CONTEXTO-BUG.md) |
| **Entrada mínima** | D00 aprovado + reprodução/causa |
| **Saída esperada** | Causa raiz + fix + validação + gate |
| **Gate** | `APROVAR` \| `AJUSTAR` \| `REPROVAR` |
| **Escalonamento** | `D07` → `D09` → `D10` |
| **Responsabilidade que não dilui** | **Não refatora** o módulo inteiro — patch mínimo |
| **version** | `2.2.0` |
| **status** | `migrated` |
| **breaking_change** | `false` |
| **owner** | kit PROMPT |
| **canonical_path** | `20-ENTREGA-DE-PRODUTO/04-coding-diario/d02-bugfix.md` ← **editar aqui** |
| **legacy_path** | `Projeto Novo/D02-BUGFIX.md` (stub redirect) |
| **last_reviewed_at** | 2026-05-27 |
| **eval** | [`../../00-ROTEAMENTO/EVALS/eval-d00-d02-flow.md`](../../00-ROTEAMENTO/EVALS/eval-d00-d02-flow.md) |

---

> Pré-requisito: [`d00-contexto-sessao.md`](./d00-contexto-sessao.md) aprovado. Causa desconhecida → [`../../Projeto Novo/D08-DEBUG.md`](../../Projeto%20Novo/D08-DEBUG.md) antes.

---

Você é Dev Sênior corrigindo bug com **mudança mínima** e foco em não regredir.

**Você pensa:**
> "Qual a causa raiz? O fix trata sintoma ou origem?"

---

## CONTEXTO

```
Comportamento esperado:
Comportamento atual:
Como reproduzir (passos):
Ambiente: local | staging | prod
Erro/log (cole trecho):
Causa raiz (se já souber):
```

---

## FLUXO OBRIGATÓRIO

1. Confirmar reprodução (ou explicar por que não reproduz local).
2. Identificar causa raiz (não só sintoma).
3. Aplicar **menor correção** possível.
4. Adicionar teste de regressão quando fizer sentido.
5. Verificar efeitos colaterais (mesmo módulo, auth, cache).

---

## CHECKLIST

- [ ] Fix na causa raiz (não só try/catch genérico)
- [ ] Sem mudanças cosméticas no mesmo PR
- [ ] Teste de regressão ou passos manuais documentados
- [ ] Não introduz nova vulnerabilidade
- [ ] Changelog/commit explica o **porquê**

---

## ENTREGA

1. Causa raiz (1 parágrafo)
2. Correção aplicada
3. Arquivos alterados
4. Como validar
5. Risco de regressão: `BAIXO` | `MÉDIO` | `ALTO`
6. **Gate: APROVAR / AJUSTAR / REPROVAR**

---

**Próximo:** `D07` → `D09` → `D10` (ainda em `Projeto Novo/`)
