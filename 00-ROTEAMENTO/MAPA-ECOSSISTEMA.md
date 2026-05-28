# Mapa do ecossistema PROMPT

**Versão:** `2.0.0` · Referência única: **domínios**, anti-duplicação, escalonamento.

---

## Domínios canônicos (v2)

| ID | Pasta | Legado |
|----|-------|--------|
| 00 | `00-ROTEAMENTO` | — |
| 10 | `10-DESCOBERTA-E-MODELAGEM` | `Modelagem-Ideia/` |
| 20 | `20-ENTREGA-DE-PRODUTO` | `Projeto Novo/` |
| 30 | `30-QUALIDADE-E-REVISAO` | `Guardiao-PR/`, `Auditoria-App/` |
| 40 | `40-DIAGNOSTICO` | `Raio-X-Projeto/` |
| 50 | `50-CORRECAO-RAPIDA` | `Correcao-Rapida/` |
| 90 | `90-ARQUIVO-LEGADO` | `Pojeto Antigo/` |

---

## Pastas (implementação legada — paths ainda válidos)

| Pasta | Arquivos | Papel |
|-------|----------|--------|
| [Auditoria-App](./Auditoria-App/) | 13 | **App entregue** — QA funcional genérico |
| [Modelagem-Ideia](./Modelagem-Ideia/) | 14 | **Ideia bruta** → modelo negócio (consultor Sebrae) |
| [Raio-X-Projeto](./Raio-X-Projeto/) | 7 | **Diagnóstico** estrutura pronta — quadros 0–10 |
| [Projeto Novo](./Projeto%20Novo/) | ~45 | Produto novo, coding diário, legado, IA, incidente |
| [Guardiao-PR](./Guardiao-PR/) | 14 | Revisão de **diff/PR** (estilo Bugbot) |
| [Correcao-Rapida](./Correcao-Rapida/) | 11 | Bug **local** sem PR (5–30 min) |
| [Pojeto Antigo](./Pojeto%20Antigo/) | 9 | Atalhos legado; **canônico** = Projeto Novo para 12–14 |

---

## Matriz: mesma intenção, prompts diferentes

| Intenção | Use (prioridade) | Não use no lugar de |
|----------|------------------|---------------------|
| Bug no localhost, sem PR | **R00→R04** | D08+D02 (mais longo) |
| Bug com sessão, testes, PR | **D00→D08→D02→D07→D09→D10** | Só R* (pula testes/PR) |
| Revisar PR (BLOCKER, merge) | **B00→B01→B09** | D03 (review leve) |
| Review rápido / colega | **D03** | B01 (scan completo) |
| Autor corrige BLOCKER do PR | **B06→B08→B09** | D02 (não lista BLOCKERs do B01) |
| Hotfix **em PR** | **B07→B06→B08→B09** | Só D11 |
| Prod fora do ar / SEV1 | **D11** (mitigar) | R* ou B01 primeiro |
| Feature / melhoria | **D00→D01** | D01-legado sem D00 |
| Feature sem analisar projeto | [D01-legado](./Pojeto%20Antigo/D01-IMPLEMENTACAO-LEGADO.md) | 000→001 (produto novo) |
| Pré-merge (autor) | **D10** | B09 sozinho |
| Liberar merge (revisor) | **B09** | D10 sozinho |
| Commit local após R04 | **R05** | D09 (PR completo) |
| Commit + PR | **D09** | R05 |
| Estrutura pronta — estado real | **RX01** (Raio-X) | 14 Triagem (só estágio) |
| Triagem legado (estágio) | **Projeto Novo/14-TRIAGEM** | RX01 (diagnóstico técnico — use antes se possível) |
| Retrofit | **Projeto Novo/13-RETROFIT** | cópia em Antigo |
| Validador pré-prod | **Projeto Novo/12** ou Antigo (com pré-reqs) | — |
| IA generativa (desenho) | **15-GENERATIVO** | D01 ou D01-legado |
| Codar LLM/RAG | **D13** | D01 |
| IA em operação | **10-PROMPTOPS** | D13 |

---

## Repetições aceitas (não são bug)

São **níveis de ritual** diferentes:

```
Bug:     R03 fix mínimo  ≈  D02 fix mínimo  ≈  B06 patch BLOCKER
         (local)            (sessão+PR)         (só BLOCKERs do scan)

Debug:   R01+R02         ≈  D08 (+ handoff D02)

Validar: R04 smoke       ≈  D07 testes      ≈  B05 regressão (no diff)

Gate:    R04 RESOLVIDO   ≠  D10 APROVAR     ≠  B09 MERGE_OK
         (bug sumiu)        (autor deploy)      (revisor merge)
```

**Regra:** escolha **uma trilha por sessão**. Não rode R03 e D02 no mesmo bug.

---

## Fluxos completos (sem lacuna)

### Feature até produção

```
Projeto Novo: D00 → D01 → D07? → D09 → D10
Se abriu PR:  Guardiao: B00 → B01 → B09
Legado antes: 14 → 13 → (agentes 01–12 por gap)
Antes de prod: 12-VALIDADOR
```

### Bug local → PR → merge

```
Correcao-Rapida: R00 → R01 → R02 → R03 → R04 → R05?
Projeto Novo:    D09 → D10
Guardiao-PR:     B00 → B01 → B09
```

### Incidente produção

```
D11 (mitigar) → D02 ou hotfix branch → D10
Se hotfix em PR: B07 → B06 → B08 → B09
Depois: D12 ADR? | 13-RETROFIT se dívida sistêmica
```

### Projeto legado bagunçado

```
Projeto Novo/14-TRIAGEM → 13-RETROFIT → 01…12 → D00…D10 → 12-VALIDADOR
(Pojeto Antigo = mesma ordem; arquivos 12–14 preferir Projeto Novo)
```

---

## Duplicatas reais (manter uma fonte)

| Arquivo | Cópias | Canônico |
|---------|--------|----------|
| `14-TRIAGEM.md` | Antigo = redirect | **Projeto Novo** |
| `13-RETROFIT.md` | Antigo = redirect | **Projeto Novo** |
| `12-VALIDADOR.md` | Antigo = redirect | **Projeto Novo** (pré-reqs unificados) |
| `D01` feature | `D01-IMPLEMENTACAO-LEGADO` = atalho | **D00 + D01-FEATURE** |

---

## Lacunas (o que faltava implementar)

| # | Lacuna | Status |
|---|--------|--------|
| 1 | Mapa global entre 4 pastas | ✅ este arquivo |
| 2 | `AVALIACAO.md` só citava Projeto Novo | ✅ atualizado |
| 3 | `14-TRIAGEM` desatualizado em Pojeto Antigo | ✅ redirect |
| 4 | `D10` não citava `B09` quando há PR | ✅ atualizado |
| 5 | Root README dizia "3 kits" | ✅ corrigido |
| 6 | Pojeto Antigo sem entrada no fluxo sênior | ✅ README raiz |
| 7 | `13` e `12` duplicados em Antigo | ✅ redirect canônico |
| 8 | `12-VALIDADOR` pré-requisitos no Novo | ✅ unificado |
| 9 | `D01-legado` como atalho explícito | ✅ deprecado como principal |

---

## Gates (vocabulário)

| Pasta | Aprovar | Bloquear |
|-------|---------|----------|
| Projeto Novo | `APROVAR` | `REPROVAR` / `AJUSTAR` |
| Correcao-Rapida | `RESOLVIDO` | `ESCALAR` / `CONTINUA` |
| Guardiao-PR | `MERGE_OK` | `MERGE_BLOQUEADO` |

---

## Árvore de decisão (5 segundos)

```
Prod caiu?           → D11
PR para revisar?     → Guardiao B00
Bug só no meu PC?   → Correcao R00
Estrutura pronta?   → Raio-X RX01
Projeto bagunçado?  → RX01 → Projeto Novo 14
Feature hoje?       → Projeto Novo D00
Não sei a pasta?    → README.md (raiz)
```
