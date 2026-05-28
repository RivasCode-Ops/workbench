# Próximo lote — observação + D03 / D07

**Versão piloto atual:** `2.2.0` · **Status:** aguardando sinal de campo

---

## Fase A — Observação (recomendado: ~3–7 dias úteis)

Use só os canônicos D00–D02 no trabalho real. Anote incômodos:

| Sinal | OK para expandir? |
|-------|-------------------|
| `@` resolve canônico sem fricção | ✅ |
| Stub legado nunca confundiu com fonte | ✅ |
| CHEATSHEET / CAMINHOS bastam | ✅ |
| Precisou duplicar path ou editar stub | ⚠️ ajustar antes do lote B |
| Eval E2E passou (checkbox) | ✅ marcar `last_passed` em `eval-d00-d02-flow.md` |

**Gate:** ≥2 sessões reais (feature + bug ou feature + review) **sem** bloqueio de UX → autorizar Fase B.

### Registro de observação (preencher durante o uso)

| Data | Tipo (feature/bug) | Fricção? | Nota |
|------|-------------------|----------|------|
| | | ☐ não ☐ sim | |
| | | ☐ não ☐ sim | |

**Sessões concluídas:** ___ / 2 mínimo · **Eval E2E:** `last_passed` em `eval-d00-d02-flow.md` → ___

---

## Fase B — Lote 2 (planejado, não migrado)

| ID | canonical_path (futuro) | legacy_path (hoje) | criticidade | responsabilidade_que_nao_dilui |
|----|-------------------------|-------------------|-------------|--------------------------------|
| `D03` | `d03-code-review.md` | `Projeto Novo/D03-CODE-REVIEW.md` | **alta** | **Nunca implementa correção** — só feedback acionável; scan pesado → `30/B01` |
| `D07` | `d07-testes.md` | `Projeto Novo/D07-TESTES.md` | **alta** | **Nunca refatora produto por cobertura** — só testes proporcionais ao risco |

**Eval sugerida:** estender `eval-d00-d02-flow.md` com cenário D00→D01→D07 (feature com risco médio).

**breaking_change:** `false` (só path; conteúdo igual).

---

## Checklist mecânico (quando Fase B autorizada)

1. Copiar conteúdo → canônico + CONTRATO completo
2. Stub redirect no legado (mesmo molde D00)
3. `INVENTARIO` + `STATUS` §4
4. `CODING-DIARIO` / `CHEATSHEET` / `CAMINHOS`
5. Entrada `CHANGELOG` `2.2.1` ou `2.3.0` conforme mudança de gate

---

## O que NÃO fazer nesta fase

- Migrar D04–D13 em massa
- Remover `Projeto Novo/` antes de v3.0.0
- Editar stubs legados (só canônico após migrado)
