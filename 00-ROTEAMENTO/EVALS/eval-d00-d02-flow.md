# Eval — Fluxo D00 → D01 / D02 (piloto Fase 3)

| Campo | Valor |
|-------|-------|
| **scope** | coding diário migrado |
| **version** | `2.2.0` |
| **last_passed** | pending |

## Objetivo

Validar que após migração física para `20/04-coding-diario/`, o fluxo “colar prompts no Cursor” continua fluido.

---

## Cenário A — Feature (D00 → D01)

1. Abrir [`d00-contexto-sessao.md`](../../20-ENTREGA-DE-PRODUTO/04-coding-diario/d00-contexto-sessao.md) — preencher contexto feature simples
2. Gate D00 = `APROVAR`
3. Abrir [`d01-feature.md`](../../20-ENTREGA-DE-PRODUTO/04-coding-diario/d01-feature.md) na mesma conversa

**Aceite:**
- [ ] D00 não gera código
- [ ] D01 referencia escopo do D00
- [ ] Links internos d00→d01 funcionam
- [ ] Stub legado `Projeto Novo/D01` redireciona claramente se aberto por engano

---

## Cenário B — Bug (D00 → D02)

1. D00 com tipo `bugfix`
2. D02 com reprodução descrita

**Aceite:**
- [ ] D02 patch mínimo, sem refactor lateral
- [ ] Menciona `50/R00` se usuário quer atalho
- [ ] Stub `Projeto Novo/D02` aponta canônico

---

## Cenário C — @ no Cursor

1. `@PROMPT/20-ENTREGA-DE-PRODUTO/04-coding-diario/d00-contexto-sessao.md`

**Aceite:**
- [ ] Arquivo resolve no workspace
- [ ] Conteúdo completo (não stub)

---

## Rollback do piloto

Se falhar: restaurar conteúdo de `canonical_path` para `legacy_path` e reverter status no inventário para `stable` (legacy only).
