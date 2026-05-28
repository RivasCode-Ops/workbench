# ⚡ CHEATSHEET — 1 página

## Qual arquivo colar?

| Situação | Arquivo |
|----------|---------|
| Não sei por onde começar (legado) | `14-TRIAGEM` |
| Projeto bagunçado, plano de correção | `13-RETROFIT` |
| Ideia / produto novo | `000` → `001` → `002` → `01…12` |
| Qualquer código hoje | `20/04-coding-diario/d00-contexto-sessao.md` **sempre** |
| Feature | `20/04-coding-diario/d01-feature.md` |
| Bug | `D08` → `20/04-coding-diario/d02-bugfix.md` |
| Prod caiu | `D11` |
| Review PR | `D03` |
| Refactor | `D04` + `D07` |
| API / DB | `D05` / `D06` |
| Testes | `D07` |
| Commit/PR | `D09` |
| Antes do merge | `D10` |
| Decisão importante | `D12` |
| IA generativa (produto) | `15-GENERATIVO` |
| Codar LLM/RAG/agente | `D13` |
| IA em operação (prod) | `10-PROMPTOPS` |

---

## Fluxos em 1 linha

```
Feature:  D00 → D01 → D07? → D09 → D10
Bug:      D00 → D08 → D02 → D07? → D09 → D10
Incidente: D11 → D02 → D12? → D10
Legado:   14 → 13 → (agentes 01-12 por gap)
Novo:     000 → 001 → 002 → 01…12
Gen AI:   15 → D13 → 10 (ops)
```

---

## Gate (todos)

| | |
|-|-|
| `APROVAR` | Segue |
| `AJUSTAR` | Corrige e repete |
| `REPROVAR` | Para |

---

## D00 mínimo (copiar)

```
Projeto:
Stack:
Tarefa hoje:
Tipo: feature|bugfix|refactor|review|api|migration|debug|incident
Branch:
DoD desta sessão:
```

---

## Regras de ouro

1. D00 antes de código  
2. Menor diff que resolve  
3. D10 antes de prod  
4. 001 reprovou → não construir  
5. Incidente: mitigar antes de refatorar  

---

Tutorial: `TUTORIAL.md` | Índice: `README.md` | Diário: `CODING-DIARIO.md` | Exemplos: `EXEMPLOS.md`
