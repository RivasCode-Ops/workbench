# 🚀 PROJETO NOVO — Sistema de prompts (10/10)

Kit para **construir**, **planejar** e **codar** — não é revisão estilo Bugbot.

> Revisão de PR / bugs no diff → pasta irmã **[`../Guardiao-PR/`](../Guardiao-PR/)**

**Tutorial completo:** [`TUTORIAL.md`](TUTORIAL.md) ← **comece aqui na 1ª vez**  
**Cola rápida:** [`CHEATSHEET.md`](CHEATSHEET.md) | **Exemplos:** [`EXEMPLOS.md`](EXEMPLOS.md)

---

## Trilha A — Projeto novo (do zero)

```
00-NEGOCIO.md          ← opcional: não conhece o segmento
000-ORQUESTRADOR.md    ← comece aqui
001-DESCOBERTA.md
002-ARCHITECT.md
01-ESTRATEGICO.md … 12-VALIDADOR.md
```

---

## Trilha B — Coding diário

```
CODING-DIARIO.md       ← índice
D00 … D13              ← D00 sempre primeiro
```

| Prompt | Uso |
|--------|-----|
| D00 | Contexto da sessão |
| D01–D08 | Feature, bug, review, refactor, API, migration, testes, debug |
| D09–D10 | Commit/PR, pré-merge |
| D11 | Incidente em produção |
| D12 | ADR (decisão arquitetural) |
| D13 | Coding de IA generativa (LLM, RAG, agente) |

---

## Trilha D — IA generativa

```
15-GENERATIVO.md       ← desenhar feature (padrão, prompt, evals, custo)
D13-GENERATIVO.md      ← implementar no código
10-PROMPTOPS.md        ← operar em produção (fallback, cache, monitor)
```

Use **15** antes de codar; **10** antes de ir para prod com IA.

---

## Trilha C — Projeto legado

```
14-TRIAGEM.md          ← SEMPRE primeiro
13-RETROFIT.md         ← plano faseado
→ agentes 01–12 conforme gaps
→ depois Trilha B no dia a dia
```

Detalhes: [`README (1).md`](README%20(1).md)

---

## Gate padrão

| Decisão | Significado |
|---------|-------------|
| `APROVAR` | Avançar |
| `AJUSTAR` | Corrigir e repetir |
| `REPROVAR` | Parar e revisar |

Agentes 001, 002, 10 e 14 têm decisões extras — ver arquivo.

---

## Regras de ouro

1. **001 reprovou** → não construir  
2. **D00** antes de qualquer código  
3. **D10** antes de merge em prod  
4. **D11** se prod em chamas — mitigar primeiro  
5. **14** antes de retrofit — saber estágio real  
6. **10-PROMPTOPS** → pular se sem IA  

---

## Mapa mental

```
Ideia nova?     → Trilha A
Código hoje?    → Trilha B (D00+)
Bagunçado?      → Trilha C (14→13)
Prod fora?      → D11
Dúvida rápida?  → CHEATSHEET.md
Feature com LLM? → 15 → D13 → 10
PR para merge?    → ../Guardiao-PR/ (B00 → B01 → B09)
Bug local rápido? → ../Correcao-Rapida/ (R00 → R04)
```

---

## Pastas irmãs

| Pasta | Função |
|-------|--------|
| **Projeto Novo** (esta) | Do zero, coding diário, legado, generativo |
| **[Guardiao-PR](../Guardiao-PR/)** | Estilo Bugbot — scan PR, bugs, merge gate |
| **[Correcao-Rapida](../Correcao-Rapida/)** | Bug local rápido (sem PR) |
| [PROMPT/README.md](../README.md) | Mapa geral |
