# QA04 — Instruir e corrigir

> Plano de correção ordenado + patches sugeridos (menor mudança).

**Pré-requisito:** QA03

---

## REGRAS

1. **P0 primeiro** — ordem de correção
2. Um item = uma correção focada (não refactor geral)
3. Para cada fix: **onde** (path), **o que** mudar, **como validar** (passo QA02)
4. Se puder, fornecer **diff ou snippet** pronto para colar
5. Lacunas grandes → sugerir `Projeto Novo/D01`; bugs → `Correcao-Rapida/R00`

---

## ENTREGA

### Seção 6 — Instruções ordenadas (template)

| Ordem | ID | Ação | Arquivo | Validar com |
|-------|-----|------|---------|-------------|

### Opcional — Playwright (1–3 fluxos P0)

Só para regressão dos fluxos corrigidos (estilo [autospec](https://github.com/zachblume/autospec))

### Roteamento pós-correção

| Após corrigir | Use |
|---------------|-----|
| Re-testar manual | Repetir `QA02` passos afetados |
| Abrir PR | `Guardiao-PR/B01` |
| Commit local | `Correcao-Rapida/R04` |

### Gate final

`APROVADO` | `AJUSTAR` | `REPROVAR` — seção 8 do template

---

**PROMPT DE INÍCIO:**
> "Com base nos erros e lacunas, dê instruções de correção priorizadas, com arquivo e trecho de código sugerido, e como re-testar cada fix."
