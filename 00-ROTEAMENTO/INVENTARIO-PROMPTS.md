# Inventário de prompts — registro atômico

**Versão registro:** `2.2.0` · Coluna **criticidade:** `alta` = eval obrigatória · `media` · `baixa`

Legenda **status:** `draft` | `stable` | `deprecated` | `redirected` | `planned` (path futuro)

---

## Orquestradores e sessões únicas (críticos)

| ID | legacy_path | Domínio | canonical_path | status | Crit. | Eval |
|----|-------------|---------|----------------|--------|-------|------|
| `000` | `Projeto Novo/000-ORQUESTRADOR.md` | 20 | `20/00-orquestracao/000-orquestrador.md` | stable | alta | [eval-000](./EVALS/eval-000-orquestrador.md) |
| `001` | `Projeto Novo/001-DESCOBERTA.md` | 20 | `20/01-descoberta/001-descoberta.md` | stable | — |
| `D00` | `Projeto Novo/D00-CONTEXTO-SESSAO.md` | 20 | `20/04-coding-diario/d00-contexto.md` | stable | — |
| `MI-UNICA` | `Modelagem-Ideia/MI-SESSAO-UNICA.md` | 10 | `10/mi-sessao-unica.md` | stable | alta | [eval-mi](./EVALS/eval-mi-sessao-unica.md) |
| `RX01` | `Raio-X-Projeto/RX01-RAIO-X-COMPLETO.md` | 40 | `40/rx01-completo.md` | stable | alta | [eval-rx01](./EVALS/eval-rx01.md) |
| `R00` | `Correcao-Rapida/R00-CONTEXTO-BUG.md` | 50 | `50/r00-contexto.md` | stable | alta | [eval-r00](./EVALS/eval-r00.md) |
| `B01` | `Guardiao-PR/B01-SCAN-PR-COMPLETO.md` | 30 | `30/guardiao/b01-scan.md` | stable | alta | [eval-b01](./EVALS/eval-b01.md) |
| `QA-UNICA` | `Auditoria-App/QA-SESSAO-UNICA.md` | 30 | `30/auditoria/qa-sessao-unica.md` | stable | alta | [eval-qa](./EVALS/eval-qa-sessao-unica.md) |

---

## Legado e triagem

| ID | legacy_path | Domínio | canonical_path | status | Ação futura |
|----|-------------|---------|----------------|--------|-------------|
| `14` | `Projeto Novo/14-TRIAGEM.md` | 20 | `20/03-legado/014-triagem.md` | stable | mover fase 3 |
| `13` | `Projeto Novo/13-RETROFIT.md` | 20 | `20/03-legado/013-retrofit.md` | stable | mover fase 3 |
| `12` | `Projeto Novo/12-VALIDADOR.md` | 20 | `20/07-validacao/012-validador.md` | stable | mover fase 3 |
| `14-old` | `Pojeto Antigo/14-TRIAGEM.md` | 90 | — | redirected | remover v3.0.0 |
| `13-old` | `Pojeto Antigo/13-RETROFIT.md` | 90 | — | redirected | remover v3.0.0 |
| `12-old` | `Pojeto Antigo/12-VALIDADOR.md` | 90 | — | redirected | remover v3.0.0 |
| `D01-legado` | `Pojeto Antigo/D01-IMPLEMENTACAO-LEGADO.md` | 90 | — | deprecated | usar D01+D00 |

---

## Coding diário — piloto Fase 3 ✅

| ID | legacy_path | canonical_path (**editar**) | status | Crit. | Eval |
|----|-------------|-------------------------------|--------|-------|------|
| `D00` | `Projeto Novo/D00-...` **redirect** | `20-ENTREGA-DE-PRODUTO/04-coding-diario/d00-contexto-sessao.md` | **migrated** | alta | [flow](./EVALS/eval-d00-d02-flow.md) |
| `D01` | `Projeto Novo/D01-...` **redirect** | `20-.../04-coding-diario/d01-feature.md` | **migrated** | alta | [flow](./EVALS/eval-d00-d02-flow.md) |
| `D02` | `Projeto Novo/D02-...` **redirect** | `20-.../04-coding-diario/d02-bugfix.md` | **migrated** | alta | [flow](./EVALS/eval-d00-d02-flow.md) |

## Coding diário — ainda legado

| ID | legacy_path (**editar**) | status | canonical_path (planned) | Crit. |
|----|--------------------------|--------|--------------------------|-------|
| `D03`–`D13` | `Projeto Novo/D*.md` | stable | `20/04-coding-diario/...` | media |
| `D10` | `Projeto Novo/D10-PRE-MERGE.md` | stable | `20/07-validacao/d10-pre-merge.md` | alta |
| `D11` | `Projeto Novo/D11-INCIDENTE.md` | stable | `20/05-incidentes/d11-incidente.md` | alta |

---

## Correção rápida (trilha R)

| ID | legacy_path | status |
|----|-------------|--------|
| `R01`–`R05` | `Correcao-Rapida/R*.md` | stable |
| `R-ORQ` | `Correcao-Rapida/000-ORQUESTRADOR.md` | stable |

---

## Guardião (trilha B — amostra)

| ID | legacy_path | status |
|----|-------------|--------|
| `B00` | `Guardiao-PR/B00-CONTEXTO-DIFF.md` | stable |
| `B09` | `Guardiao-PR/B09-GATE-MERGE.md` | stable |

---

## Como atualizar esta tabela

1. Edite o arquivo em **legacy_path**
2. Atualize coluna `status` / `canonical_path` aqui
3. Se crítico: `CHANGELOG` + eval
4. Se `deprecated`: redirect em `90/redirects.md`
