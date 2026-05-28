# 💻 CODING DIÁRIO — Lista para uso no dia a dia

> Use esta trilha quando o projeto **já existe** e você está implementando, corrigindo, revisando ou entregando código.
> Para **projeto novo do zero**, use a trilha em `README.md` (000 → 001 → 002 → 01–12).

> **Piloto v2.2.0 — D00, D01, D02:** editar em [`../20-ENTREGA-DE-PRODUTO/04-coding-diario/`](../20-ENTREGA-DE-PRODUTO/04-coding-diario/). Os arquivos `D00|D01|D02-*.md` nesta pasta são **redirects**.

---

## Quando usar qual trilha

| Situação | Trilha |
|----------|--------|
| Ideia nova, validar e arquitetar | `README.md` (Projeto Novo) |
| Código existente, tarefa do dia | **Esta pasta** (`D00`–`D12`) |
| Projeto legado bagunçado | `14-TRIAGEM` → `13-RETROFIT` |
| Produção em incidente | `D11-INCIDENTE.md` |
| Cola 1 página | `CHEATSHEET.md` |
| Exemplos preenchidos | `EXEMPLOS.md` |

---

## Ordem recomendada por tipo de tarefa

### Fluxo padrão (feature ou melhoria)

```
d00-contexto-sessao.md   ← canônico (20/04-coding-diario)
d01-feature.md           ← canônico
D07-TESTES.md            ← se a mudança tem risco real
D09-COMMIT-PR.md         ← commit e descrição de PR
D10-PRE-MERGE.md         ← antes de merge/deploy
```

### Fluxo de bug

```
D00-CONTEXTO-SESSAO.md
D08-DEBUG.md             ← reproduzir e achar causa raiz
D02-BUGFIX.md            ← correção mínima
D07-TESTES.md            ← teste de regressão
D09-COMMIT-PR.md
D10-PRE-MERGE.md
```

### Fluxo de revisão (você revisando código de outro)

```
D00-CONTEXTO-SESSAO.md
D03-CODE-REVIEW.md
```

### Fluxo de refactor

```
D00-CONTEXTO-SESSAO.md
D04-REFACTOR.md
D07-TESTES.md            ← obrigatório aqui
D09-COMMIT-PR.md
D10-PRE-MERGE.md
```

### Fluxo de API ou banco

```
D00 → D05-API.md ou D06-MIGRATION.md → D07 → D09 → D10
```

### Fluxo de incidente (produção)

```
D11-INCIDENTE.md         ← mitigar primeiro
D02-BUGFIX.md            ← correção definitiva
D12-ADR.md               ← se decisão estrutural
D10-PRE-MERGE.md
```

### Fluxo com decisão arquitetural

```
D00 → D12-ADR.md → D01 ou D05/D06 → D07 → D09 → D10
```

---

## Lista completa (ordem de referência)

| # | Arquivo | Uso |
|---|---------|-----|
| D00 | [`20/04-coding-diario/d00-contexto-sessao.md`](../20-ENTREGA-DE-PRODUTO/04-coding-diario/d00-contexto-sessao.md) ✅ | Alinhar contexto antes de qualquer tarefa |
| D01 | [`20/04-coding-diario/d01-feature.md`](../20-ENTREGA-DE-PRODUTO/04-coding-diario/d01-feature.md) ✅ | Implementar feature ou melhoria |
| D02 | [`20/04-coding-diario/d02-bugfix.md`](../20-ENTREGA-DE-PRODUTO/04-coding-diario/d02-bugfix.md) ✅ | Corrigir bug com mudança mínima |
| D03 | `D03-CODE-REVIEW.md` | Revisar PR ou diff |
| D04 | `D04-REFACTOR.md` | Refatorar sem mudar comportamento |
| D05 | `D05-API.md` | Criar ou alterar endpoint REST/GraphQL |
| D06 | `D06-MIGRATION.md` | Migration, schema, seeds |
| D07 | `D07-TESTES.md` | Testes unitários, integração, e2e |
| D08 | `D08-DEBUG.md` | Investigar problema difícil |
| D09 | `D09-COMMIT-PR.md` | Commit, branch, descrição de PR |
| D10 | `D10-PRE-MERGE.md` | Checklist final antes de merge |
| D11 | `D11-INCIDENTE.md` | Incidente / hotfix em produção |
| D12 | `D12-ADR.md` | Documentar decisão arquitetural |
| D13 | `D13-GENERATIVO.md` | Implementar LLM, RAG, agente, structured output |

### Fluxo IA generativa

```
D00 → 15-GENERATIVO (se ainda não desenhado) → D13 → D07 → D09 → D10
Depois em prod: agente 10-PROMPTOPS
```

---

## Referência rápida

- **CHEATSHEET.md** — qual arquivo usar em 5 segundos  
- **EXEMPLOS.md** — blocos CONTEXTO já preenchidos  

---

## Regra de ouro (dev sênior)

1. **D00 sempre** — sem contexto, a IA inventa stack e padrões errados.
2. **Escopo mínimo** — uma tarefa, um objetivo, um PR quando possível.
3. **Não pule D10 em produção** — merge sem checklist é como deploy na sexta sem rollback.
4. **Teste proporcional ao risco** — não teste tudo; teste o que quebra o negócio se falhar.

---

## Gate padrão (todos os prompts D*)

| Decisão | Significado |
|---------|-------------|
| `APROVAR` | Pode seguir (commit, PR, merge) |
| `AJUSTAR` | Corrigir pontos listados e repetir o mesmo prompt |
| `REPROVAR` | Parar — falta contexto, risco alto ou abordagem errada |

---

## Como usar no Cursor / Claude

1. Abra **nova conversa** ou use o chat do arquivo atual.
2. Cole o conteúdo do prompt (`D00`, depois `D01`, etc.).
3. Preencha o bloco **CONTEXTO** no final do prompt.
4. Só avance quando o gate for `APROVAR`.
5. Anexe arquivos relevantes (@arquivo) quando existirem.

---

## Checklist rápido (cola no Notion / Obsidian)

- [ ] D00 — contexto da sessão
- [ ] Prompt da tarefa (D01–D08 ou D11 incidente)
- [ ] D12 — ADR se decisão estrutural
- [ ] D07 — testes se risco ≥ médio
- [ ] D09 — commit/PR claro
- [ ] D10 — pré-merge verde
- [ ] Deploy com rollback (ou mitigação se D11)
