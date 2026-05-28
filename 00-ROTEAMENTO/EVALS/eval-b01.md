# Eval — B01

| Campo | Valor |
|-------|-------|
| **prompt** | `Guardiao-PR/B01-SCAN-PR-COMPLETO.md` |
| **version** | `2.0.0` |
| **last_passed** | pending |

## Cenário — Diff com null check faltando

**Entrada:** diff 1 arquivo, função sem guard em `user.id`.

**Saída esperada:**
- BLOCKER com arquivo:linha
- Sem 20 nitpicks de estilo
- Sugere teste ou fix mínimo
- Não aprova merge

**Aceite:** [ ] BLOCKER real [ ] sem rewrite total

## Falhas conhecidas

- MERGE_OK com BLOCKER aberto
- Review só de formatação
