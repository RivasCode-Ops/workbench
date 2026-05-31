# Inspirações GitHub — ecossistema RivasCode-Ops

> **Atualizado:** 2026-05-30  
> Catálogo de repositórios open source que **contribuem com as ideias** do ecossistema, sem unificar tudo em um app.

**Índice por produto (GitHub):**

| Produto | Arquivo |
|---------|---------|
| FREEDOM | [FREEDOM/docs/GITHUB-INSPIRACOES.md](https://github.com/RivasCode-Ops/FREEDOM/blob/main/docs/GITHUB-INSPIRACOES.md) |
| Cortana | [Cortana/docs/GITHUB-REFERENCES.md](https://github.com/RivasCode-Ops/Cortana/blob/main/docs/GITHUB-REFERENCES.md) |
| Max Stack | [max-coding/docs/GITHUB-INSPIRACOES.md](https://github.com/RivasCode-Ops/max-coding/blob/main/docs/GITHUB-INSPIRACOES.md) |
| workbench | [workbench/docs/GITHUB-INSPIRACOES.md](https://github.com/RivasCode-Ops/workbench/blob/main/docs/GITHUB-INSPIRACOES.md) |

---

## Mapa rápido (camada → repos)

| Camada | Pergunta | Top repos para estudar |
|--------|----------|------------------------|
| **dLogica** | O que precisa virar? | [gstack](https://github.com/garrytan/gstack) `/office-hours`, `/plan-ceo-review` |
| **workbench** | O que foi decidido? | [gstack](https://github.com/garrytan/gstack), [anthropics/skills](https://github.com/anthropics/skills) |
| **Cursor** | Como implementar? | Skills do gstack + templates no workbench |
| **Max** | Como está o repo? | [hematite](https://github.com/hematiteai/hematite), [gitleaks](https://github.com/gitleaks/gitleaks), [osv-scanner](https://github.com/google/osv-scanner) |
| **Cortana** (extra) | O que a web diz? | [Vane](https://github.com/ItzCrazyKns/Vane), [searcharvester](https://github.com/vakovalskii/searcharvester) |
| **FREEDOM** (produto) | Quando posso parar de trabalhar? | [app-fire-calculator](https://github.com/jamesmontemagno/app-fire-calculator), [fire-tools](https://github.com/mbianchidev/fire-tools) |

---

## Legenda de uso

| Tag | Significado |
|-----|-------------|
| **Adotar** | Copiar padrão ou integrar no próximo sprint |
| **Inspirar** | UX, fórmulas ou arquitetura — adaptar ao BR e ao app enxuto |
| **Ignorar** | Fora do escopo ou conflita com “uma pergunta por ferramenta” |

---

## Top 10 (começar por aqui)

| # | Repo | Produto | Tag |
|---|------|---------|-----|
| 1 | [jamesmontemagno/app-fire-calculator](https://github.com/jamesmontemagno/app-fire-calculator) | FREEDOM V3 | **Adotar** |
| 2 | [mbianchidev/fire-tools](https://github.com/mbianchidev/fire-tools) | FREEDOM V3 | **Inspirar** |
| 3 | [basnijholt/wenfire](https://github.com/basnijholt/wenfire) | FREEDOM V3 | **Inspirar** |
| 4 | [matijaoe/fare](https://github.com/matijaoe/fare) | FREEDOM V3 | **Inspirar** |
| 5 | [ItzCrazyKns/Vane](https://github.com/ItzCrazyKns/Vane) | Cortana pós-V1 | **Inspirar** |
| 6 | [garrytan/gstack](https://github.com/garrytan/gstack) | Max + workbench | **Inspirar** |
| 7 | [hematiteai/hematite](https://github.com/hematiteai/hematite) | Max | **Adotar** (CLI local) |
| 8 | [vakovalskii/searcharvester](https://github.com/vakovalskii/searcharvester) | Cortana | **Adotar** |
| 9 | [vzamb/fire-calculator](https://github.com/vzamb/fire-calculator) | FREEDOM V4+ | **Inspirar** |
| 10 | [kanriapp/kanri](https://github.com/kanriapp/kanri) | Max (patterns) | **Inspirar** |

---

## O que não unificar

| Repo | Motivo |
|------|--------|
| [kvwake/fire-calculator](https://github.com/kvwake/fire-calculator) | Impostos/previdência EUA |
| [RemarkRemedy/fireplanner](https://github.com/RemarkRemedy/fireplanner) | CPF/Singapura |
| [firefly-iii/firefly-iii](https://github.com/firefly-iii/firefly-iii) | ERP financeiro — outro produto |
| [maybe-finance/maybe](https://github.com/maybe-finance/maybe) | Dashboard pesado |

---

## Seus repos (âncora)

| Repo | Papel |
|------|-------|
| [RivasCode-Ops/FREEDOM](https://github.com/RivasCode-Ops/FREEDOM) | FIRE planner local |
| [RivasCode-Ops/max-coding](https://github.com/RivasCode-Ops/max-coding) | Auditoria de repositório |
| [RivasCode-Ops/Cortana](https://github.com/RivasCode-Ops/Cortana) | Pesquisa com fontes |
| [RivasCode-Ops/workbench](https://github.com/RivasCode-Ops/workbench) | Governança e handoffs |
| [RivasCode-Ops/dLogica](https://github.com/RivasCode-Ops/dLogica) | Definição de demanda |
| [RivasCode-Ops/ARBILOCAL](https://github.com/RivasCode-Ops/ARBILOCAL) | Decisão comercial + busca |

---

## EcoMaestro (orquestrador do condomínio)

| | |
|---|---|
| **Projeto** | [RivasCode-Ops/EcoMaestro](https://github.com/RivasCode-Ops/EcoMaestro) — porta `8770` |
| **Pergunta** | *Quem entrega esta demanda?* |
| **Entrada** | Nome do projeto + descrição **ou** link (GitHub / pasta / URL local) |

Não substitui dLogica, workbench, Max nem Cortana — **roteia** a ordem de entrega.

---

## Complementos locais (fora do fluxo de 4 portas)

Apps na pasta `_PROJETOS` que **não são moradores do eco**, mas complementam ações (ex.: FREEDOM V3):

| App | Complementa | Repo GitHub de referência |
|-----|-------------|---------------------------|
| **Recuperação Financeira** | Saúde financeira / dívidas | — |
| **CONSORCIO** | Open Finance, patrimônio real | — |
| **Simulador Troca Moto** | Custo de gasto em bem durável | [wenfire](https://github.com/basnijholt/wenfire) |
| **ARBILOCAL** | Decisão comercial | [RivasCode-Ops/ARBILOCAL](https://github.com/RivasCode-Ops/ARBILOCAL) |
| **FREEDOM** | FIRE (produto, não ferramenta de fluxo) | ver [FREEDOM/docs/GITHUB-INSPIRACOES.md](https://github.com/RivasCode-Ops/FREEDOM/blob/main/docs/GITHUB-INSPIRACOES.md) |

### Referências externas — vigência (mai/2026)

| Repo | Status | Uso |
|------|--------|-----|
| [fire-tools](https://github.com/mbianchidev/fire-tools) | **Ativo** | Preferir para histórico / CSV |
| [wenfire](https://github.com/basnijholt/wenfire) | **Ativo** | Custo de gasto, narrativa |
| [app-fire-calculator](https://github.com/jamesmontemagno/app-fire-calculator) | Estável | Lean / Barista |
| [matijaoe/fare](https://github.com/matijaoe/fare) | **Lento** (~1 ano sem push) | Só inspirar UX |
| [wealthyparrot/fire-calculator](https://github.com/wealthyparrot/fire-calculator) | **Lento** | Só fórmulas pontuais |
| [ItzCrazyKns/Vane](https://github.com/ItzCrazyKns/Vane) | Ativo (ex-Perplexica) | Cortana pós-V1 |

---

## Fluxo local (pasta `_PROJETOS`)

No PC: `Abrir-EcoMaestro.bat` → `ecossistema.html` → `ECOSSISTEMA.md` / `guia-ecossistema-analise.md` (raiz não versionada no GitHub).
