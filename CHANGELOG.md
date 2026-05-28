# CHANGELOG — Kit PROMPT

Formato baseado em [SemVer](https://semver.org/).

## [2.2.0] — 2026-05-27

### Added (Fase 3 — piloto)

- `20-ENTREGA-DE-PRODUTO/04-coding-diario/` — D00, D01, D02 canônicos (`d00-contexto-sessao.md`, …)
- Stubs redirect em `Projeto Novo/D00|D01|D02-*.md`
- `00-ROTEAMENTO/EVALS/eval-d00-d02-flow.md` — eval end-to-end do fluxo coding diário
- Coluna **criticidade** no inventário; seção **paths migrados** em `STATUS-DE-AUTORIDADE`

### Changed

- Autoridade de conteúdo: D00–D02 → **`canonical_path`** (status `migrated`)
- Template de contrato: `criticidade`, `breaking_change`, `responsabilidade_que_nao_dilui`, status `migrated`

### Governance

- Piloto com rollback documentado; demais `D03+` permanecem em `legacy_path`

---

## [2.1.0] — 2026-05-27

### Added

- `00-ROTEAMENTO/STATUS-DE-AUTORIDADE.md` — regras de fonte da verdade
- `00-ROTEAMENTO/INVENTARIO-PROMPTS.md` — tabela atômica por prompt
- `00-ROTEAMENTO/EVALS/` — 6 evals mínimas (000, MI, RX01, R00, B01, QA)
- Lifecycle no template: `status`, `canonical_path`, `legacy_path`, `last_reviewed_at`, `eval`

### Changed

- Contrato completo em prompts críticos: `000`, `MI-SESSAO-UNICA`, `RX01`, `R00`, `B01`, `QA-SESSAO-UNICA`
- `CONVENCOES` — regras de mudança + anti-drift
- `Pojeto Antigo/` marcado `deprecated` (remoção alvo v3.0.0)

### Governance

- Fase 2 concluída; Fase 3 física iniciada no piloto v2.2.0 (D00–D02)

---

## [2.0.0] — 2026-05-27

### Added

- Arquitetura por **domínios operacionais** `00`, `10`, `20`, `30`, `40`, `50`, `90`
- `00-ROTEAMENTO/` — entrada única, CONVENCOES, GLOSSARIO, CONTRATO-PROMPT.template
- `CONTRATO.md` por domínio
- `90-ARQUIVO-LEGADO/MAPA-MIGRACAO.md`
- Kits: `Raio-X-Projeto`, `Modelagem-Ideia`, `Auditoria-App` (v1.x)

### Changed

- README raiz aponta para `00-ROTEAMENTO`
- `CAMINHOS.md` e `MAPA-ECOSISTEMA.md` duplicados em `00` (canônico)

### Deprecated

- Entrada direta pela raiz sem passar por `00` (ainda funciona)
- `Pojeto Antigo/` como nome (usar domínio `90` / `Projeto-Legado` em docs)

### Migration

- Paths legados **permanecem válidos** — ver `90-ARQUIVO-LEGADO/MAPA-MIGRACAO.md`

## [1.x] — histórico

- Projeto Novo, Guardiao-PR, Correcao-Rapida
- Pojeto Antigo (atalhos legado)
- CAMINHOS, MAPA-ECOSISTEMA na raiz
