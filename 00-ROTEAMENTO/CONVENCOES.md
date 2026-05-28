# Convenções — Prompt Engineering as Code

**Versão:** `2.1.0` · **Status:** `stable`

---

## 1. Domínios (taxonomia canônica)

| ID | Pasta | Tipo de trabalho |
|----|-------|------------------|
| `00` | `00-ROTEAMENTO` | Decidir fluxo, glossário, contratos |
| `10` | `10-DESCOBERTA-E-MODELAGEM` | Ideia bruta → modelo de negócio |
| `20` | `20-ENTREGA-DE-PRODUTO` | Planejar, construir, legado, coding, incidente, IA |
| `30` | `30-QUALIDADE-E-REVISAO` | PR, auditoria de app entregue |
| `40` | `40-DIAGNOSTICO` | Raio-X técnico (repo pronto) |
| `50` | `50-CORRECAO-RAPIDA` | Bug local, patch mínimo |
| `90` | `90-ARQUIVO-LEGADO` | Redirects, compatibilidade |

**Regra:** novos prompts entram no domínio certo — não criar pasta “por história”.

---

## 2. Naming de arquivos

| Regra | Exemplo |
|-------|---------|
| kebab-case em pastas | `10-descoberta-e-modelagem` |
| Prefixo de domínio + ID | `MI01`, `D02`, `B09`, `RX01`, `QA00`, `R03` |
| Orquestrador = `000` ou `000-ORQUESTRADOR` | Um por kit |
| Sessão única = `*-SESSAO-UNICA.md` | Atalho one-shot |
| Template de saída = `TEMPLATE-SAIDA.md` | Quadros obrigatórios |
| Contrato do kit = `CONTRATO.md` | Entradas/saídas do domínio |

**Evitar:** espaços em nomes de pasta novos (`Projeto Novo` = legado, manter até migração física).

**Typo oficial:** `Pojeto Antigo` → tratar como **`Projeto-Legado`** em docs; path físico em `90-ARQUIVO-LEGADO`.

---

## 3. Cabeçalho de contrato (prompts principais)

Todo prompt **principal** (orquestrador, sessão única, RX01, B01, QA-SESSAO-UNICA, MI-SESSAO-UNICA) deve ter o bloco de [`CONTRATO-PROMPT.template.md`](./CONTRATO-PROMPT.template.md) no topo.

Prompts auxiliares (CHEATSHEET, EXEMPLO) — opcional.

---

## 4. Gates (vocabulário único)

| Domínio | Aprovar | Bloquear | Outros |
|---------|---------|----------|--------|
| 20 Entrega | `APROVAR` | `REPROVAR` / `AJUSTAR` | `PULAR` (sem IA) |
| 30 PR | `MERGE_OK` | `MERGE_BLOQUEADO` | `MERGE_COM_RISCO` |
| 50 Correção | `RESOLVIDO` | — | `CONTINUA`, `ESCALAR` |
| 10 Modelagem | `ESTRUTURAR` | `ARQUIVAR` | `COMPLEMENTAR`, `REFOCAR` |
| 40 Raio-X | `SAUDÁVEL` | `RISCO_ALTO` | `PRECISA_TRABALHO`, `INSUFICIENTE` |
| 30 Auditoria app | `APROVADO` | `REPROVAR` | `AJUSTAR`, `INSUFICIENTE` |

---

## 5. Escalonamento entre domínios

| De | Para | Quando |
|----|------|--------|
| 10 | 20 `001` | Modelo validado, vai construir |
| 40 | 20 `14→13` | Raio-X ruim, precisa retrofit |
| 30 QA | 50 `R00` | Bug pontual pós-auditoria |
| 30 QA | 30 `B01` | Correções viraram PR |
| 50 | 30 `B01` | Fix local virou PR |
| 50 | 20 `D11` | Virou incidente prod |
| 20 `D03` | 30 `B01` | Review leve → scan completo |

Documentar no prompt: seção **Escalonamento** do contrato.

---

## 6. Versionamento (GenAIOps)

| Artefato | Regra |
|----------|--------|
| Sistema PROMPT | `CHANGELOG.md` na raiz — semver |
| Prompt principal | `version:` no cabeçalho; bump em mudança de saída |
| Status | `draft` \| `stable` \| `deprecated` |
| Mudança breaking | entrada CHANGELOG + atualizar `MAPA-MIGRACAO` |

**Teste de bancada:** cada prompt `stable` deve ter 2–3 cenários em `EXEMPLOS.md` do kit.

---

## 7. Contexto (Anthropic-style)

- **Entrada mínima** só o necessário; resto em “opcional”
- **Uma trilha por sessão** — não misturar R03 + D02 no mesmo bug
- **Saída em template** — não prosa solta para entregáveis críticos
- **Próximo passo** sempre com path de arquivo

---

## 8. Autoridade e drift (obrigatório)

Leia [`STATUS-DE-AUTORIDADE.md`](./STATUS-DE-AUTORIDADE.md).

- **Roteamento:** só `00-ROTEAMENTO`
- **Conteúdo hoje:** `legacy_path` no inventário
- **Domínios 10–50:** fachadas até fase 3

Registro atômico: [`INVENTARIO-PROMPTS.md`](./INVENTARIO-PROMPTS.md)

## 9. Regra de mudança (prompts críticos)

1. Editar `legacy_path`
2. Atualizar `version` + `last_reviewed_at` no CONTRATO do prompt
3. Rodar eval em [`EVALS/`](./EVALS/) e marcar `last_passed`
4. Entrada em [`../CHANGELOG.md`](../CHANGELOG.md)

## 10. Migração física (fases)

| Fase | Ação | Status |
|------|------|--------|
| 1 | Domínios `00`–`90` + roteamento único | ✅ v2.0.0 |
| 2 | Autoridade + inventário + evals + CONTRATO críticos | ✅ v2.1.0 |
| 3 | Mover arquivos para `canonical_path` | ⏳ planejado |
| 4 | Remover `Pojeto Antigo/` | ⏳ alvo v3.0.0 |

Detalhe: [`../90-ARQUIVO-LEGADO/MAPA-MIGRACAO.md`](../90-ARQUIVO-LEGADO/MAPA-MIGRACAO.md)
