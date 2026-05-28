# 📖 Tutorial — Como usar o kit de prompts

Guia completo: **o que é**, **o que contém** e **como usar** no Cursor (ou outro chat com IA).

---

## 1. O que é este kit?

É uma biblioteca de **prompts prontos** para você colar no chat da IA e trabalhar como um **dev sênior** organizado:

- Não pular etapas importantes (descoberta, segurança, deploy)
- Não deixar a IA inventar contexto (stack, regras, escopo)
- Ter **gates** claros: só avançar quando a IA disser `APROVAR`

Cada arquivo `.md` é um **papel diferente** (orquestrador, arquiteto, bugfix, incidente, etc.).

---

## 2. O que contém (mapa de arquivos)

### 📚 Documentação (leia primeiro)

| Arquivo | Para quê |
|---------|----------|
| **TUTORIAL.md** | Este guia |
| **README.md** | Índice geral e trilhas |
| **CHEATSHEET.md** | Cola de 1 página — “qual arquivo usar?” |
| **EXEMPLOS.md** | Blocos CONTEXTO já preenchidos para copiar |
| **CODING-DIARIO.md** | Índice da trilha do dia a dia |
| **AVALIACAO.md** | Critérios de qualidade do kit |
| **README (1).md** | Foco em projeto legado |

---

### 🅰️ Trilha A — Projeto novo (ideia → produção)

Use quando vai **criar produto do zero** ou replanejar fundação.

| Ordem | Arquivo | O que faz |
|-------|---------|-----------|
| (opc.) | `00-NEGOCIO.md` | Entende o segmento de negócio antes de tech |
| 1 | `000-ORQUESTRADOR.md` | Coordena todos os agentes; você descreve o projeto |
| 2 | `001-DESCOBERTA.md` | Valida se vale construir (dor, mercado, modelo) |
| 3 | `002-ARCHITECT.md` | Arquitetura, stack, MVP, pastas, riscos |
| 4 | `01-ESTRATEGICO.md` | OKRs, MoSCoW (Must/Should/Could/Won’t) |
| 5 | `02-PROCESSOS.md` | Mapeia processos antes de automatizar |
| 6 | `03-DADOS.md` | Schema, governança, LGPD em dados |
| 7 | `04-INFRAESTRUTURA.md` | Docker, CI/CD, ambientes, backup |
| 8 | `05-AUTOMACAO.md` | Filas, retry, idempotência |
| 9 | `06-UX.md` | Fluxos simples, estados loading/erro |
| 10 | `07-SEGURANCA.md` | Auth, RBAC, secrets, LGPD |
| 11 | `08-OBSERVABILIDADE.md` | Logs, alertas, health checks |
| 12 | `09-FINANCEIRO.md` | Custos, margem, precificação |
| 13 | `10-PROMPTOPS.md` | IA em **produção** (só se o produto usa IA) |
| 14 | `11-GROWTH.md` | Onboarding, retenção, churn |
| 15 | `12-VALIDADOR.md` | “Ataque” final antes de ir ao ar |

**Regra:** não pule agente sem `APROVAR`. Se `001` der `REPROVAR`, pare — não codifique.

---

### 🅱️ Trilha B — Coding diário (o que você usa quase todo dia)

Use quando o **código já existe** e você vai implementar, corrigir ou abrir PR.

| Arquivo | Quando usar |
|---------|-------------|
| **`D00-CONTEXTO-SESSAO.md`** | **Sempre primeiro** — alinha projeto, tarefa, escopo |
| `D01-FEATURE.md` | Nova funcionalidade ou melhoria |
| `D02-BUGFIX.md` | Corrigir bug (com causa raiz) |
| `D03-CODE-REVIEW.md` | Revisar PR ou diff |
| `D04-REFACTOR.md` | Refatorar sem mudar comportamento |
| `D05-API.md` | Criar/alterar endpoint |
| `D06-MIGRATION.md` | Migration / schema de banco |
| `D07-TESTES.md` | Testes quando o risco é médio ou alto |
| `D08-DEBUG.md` | Bug difícil — investigar antes de corrigir |
| `D09-COMMIT-PR.md` | Mensagem de commit e corpo do PR |
| `D10-PRE-MERGE.md` | Checklist antes de merge/deploy |
| `D11-INCIDENTE.md` | Produção fora ou degradada (urgente) |
| `D12-ADR.md` | Documentar decisão arquitetural importante |

Índice detalhado: `CODING-DIARIO.md`.

---

### 🅲 Trilha C — Projeto legado (bagunçado)

| Ordem | Arquivo | O que faz |
|-------|---------|-----------|
| 1 | `14-TRIAGEM.md` | Classifica estágio (ideia, MVP, prod, legado…) |
| 2 | `13-RETROFIT.md` | Plano faseado de correção **sem rewrite total** |
| 3 | Agentes `01`–`12` | Só os que o Retrofit indicar |
| 4 | Trilha B (`D00`+) | Rotina diária depois de estabilizar |

Detalhes: `README (1).md`.

---

### 🅳 Trilha D — IA generativa (LLM, RAG, agente)

| Ordem | Arquivo | O que faz |
|-------|---------|-----------|
| 1 | `15-GENERATIVO.md` | Desenha a feature (RAG? agente? custo? evals?) |
| 2 | `D13-GENERATIVO.md` | Implementa no código (prompt versionado, validação) |
| 3 | `10-PROMPTOPS.md` | Opera em produção (fallback, cache, monitoramento) |

**Diferença:** `15` + `D13` = **criar** IA no produto. `10` = **manter** IA no ar.

---

## 3. Como usar no Cursor (passo a passo)

### Passo 1 — Escolher a trilha

```
Tenho só uma ideia?           → Trilha A (000 → 001 → …)
Vou codar hoje?               → Trilha B (D00 → D01/D02/…)
Projeto velho e confuso?      → Trilha C (14 → 13 → …)
Prod caiu?                    → D11 (antes de feature)
Vou fazer chat/RAG/copiloto?  → Trilha D (15 → D13 → 10)
```

Dúvida em 5 segundos → abra `CHEATSHEET.md`.

---

### Passo 2 — Abrir o arquivo do prompt

No Explorer do Cursor, abra o `.md` (ex.: `D00-CONTEXTO-SESSAO.md`).

---

### Passo 3 — Copiar e colar no chat

1. Selecione **todo** o conteúdo do arquivo (`Ctrl+A`)
2. Cole no chat do Agent (`Ctrl+L` ou painel Chat)
3. Role até o bloco **CONTEXTO** no final do prompt
4. Preencha com dados do **seu** projeto (ou copie de `EXEMPLOS.md` e adapte)

---

### Passo 4 — Anexar código (recomendado)

Use `@` para referenciar arquivos/pastas do projeto, por exemplo:

```
@backend/src/leads
@package.json
```

Quanto mais contexto real, menos a IA inventa.

---

### Passo 5 — Respeitar o gate

No final, a IA deve entregar algo como:

```
Decisão: APROVAR
```

| Gate | O que fazer |
|------|-------------|
| **APROVAR** | Abra o **próximo** prompt da trilha |
| **AJUSTAR** | Corrija o que ela listou → **mesmo** prompt de novo |
| **REPROVAR** | Pare; mude premissa, escopo ou trilha |

**Não peça código no D00** — ele só planeja. Código começa no D01, D02, D13, etc.

---

### Passo 6 — Nova conversa ou mesma?

| Situação | Sugestão |
|----------|----------|
| Tarefa nova do dia | Nova conversa + `D00` |
| Continuação da mesma feature | Mesma conversa |
| Mudou de assunto (bug → feature) | Nova conversa + `D00` |
| Contexto muito longo / IA confusa | Nova conversa + `D00` resumindo o que já foi feito |

---

## 4. Fluxos prontos (copiar o roteiro)

### Feature normal

```
D00 → D01 → (D07 se risco médio+) → D09 → D10 → merge
```

### Bug

```
D00 → D08 → D02 → D07 → D09 → D10
```

### Code review (você revisor)

```
D00 → D03
```

### Incidente em produção

```
D11 → (serviço estável) → D02 → D10
```

### Projeto novo completo

```
000 → 001 → 002 → 01 → 02 → … → 12
(pular 10 se não tiver IA)
```

### Feature com LLM

```
D00 → 15 → D13 → D07 → D09 → D10 → 10 (antes de prod)
```

---

## 5. O que preencher no CONTEXTO (D00)

Mínimo para não errar:

```
Projeto / repositório: nome-do-repo
Stack: ex. Next.js + NestJS + PostgreSQL
Tarefa de hoje: uma frase clara
Tipo: feature | bugfix | refactor | review | api | migration | debug | incident | generativo
Branch: feat/minha-tarefa
Restrições: o que NÃO pode mudar
Como rodar: pnpm install && pnpm dev
Definition of Done: como sei que terminei hoje
```

Exemplos completos: `EXEMPLOS.md`.

---

## 6. Gates e decisões especiais

### Padrão (maioria dos arquivos)

`APROVAR` | `AJUSTAR` | `REPROVAR`

### Extras em alguns agentes

| Arquivo | Decisões extras |
|---------|-----------------|
| `001-DESCOBERTA` | `REVALIDAR` |
| `002-ARCHITECT` | `REARQUITETAR`, `RECOMEÇAR` |
| `10-PROMPTOPS` | `PULAR` (sem IA no produto) |
| `15-GENERATIVO` | `PULAR` (não precisa de IA generativa) |
| `14-TRIAGEM` | classifica estágio + `APROVAR` |

---

## 7. Cenários do dia a dia

### “Vou implementar um filtro na listagem”

1. `D00` — preencher, gate APROVAR  
2. `D01` — implementar  
3. `D07` — se tocar regra crítica ou auth  
4. `D09` — texto do PR  
5. `D10` — checklist pré-merge  

---

### “Cliente reportou bug em prod”

1. Se **fora do ar** → `D11` primeiro  
2. Se bug normal → `D00` → `D08` → `D02` → `D07` → `D09` → `D10`  

---

### “Tenho uma ideia de SaaS”

1. Opcional: `00-NEGOCIO`  
2. `000-ORQUESTRADOR` — descrever projeto  
3. `001-DESCOBERTA` — se REPROVAR, não codar  
4. `002-ARCHITECT` — depois agentes 01–12  

---

### “Herdei código sem documentação”

1. `14-TRIAGEM`  
2. `13-RETROFIT` — seguir plano por fases  
3. No dia a dia: `D00` + prompts D  

---

### “Quero um copiloto com RAG na documentação”

1. `15-GENERATIVO` — desenho  
2. `D00` → `D13` — código  
3. `D07`, `D09`, `D10`  
4. `10-PROMPTOPS` — antes de liberar para todos  

---

## 8. Erros comuns (evitar)

| Erro | Certo |
|------|-------|
| Pular `D00` e pedir “faz a feature” | Sempre `D00` primeiro |
| Ignorar `REPROVAR` no 001 | Repensar o produto |
| Refatorar grande em incidente | `D11` mitigar → depois `D02` |
| Prompt de IA hardcoded sem versão | `D13` + pasta `prompts/v1/` |
| Merge sem checklist | `D10` antes de prod |
| Usar Retrofit em ideia sem código | `001` + `002` |

---

## 9. Ordem de leitura recomendada (primeira vez)

1. `TUTORIAL.md` (este arquivo) — 10 min  
2. `CHEATSHEET.md` — 2 min  
3. `EXEMPLOS.md` — copiar um bloco de teste  
4. Experimentar: `D00` com um projeto real  
5. Quando for produto novo: `README.md` + `000-ORQUESTRADOR`  

---

## 10. Resumo visual

```
                    ┌─────────────┐
                    │ CHEATSHEET  │ ← dúvida rápida
                    └──────┬──────┘
                           │
     ┌─────────────────────┼─────────────────────┐
     ▼                     ▼                     ▼
 Trilha A              Trilha B               Trilha C
 (novo produto)        (coding diário)        (legado)
 000→001→002→01…12      D00→D01…D13           14→13→01…12
     │                     │
     └──────────┬──────────┘
                ▼
          Trilha D (IA)
          15 → D13 → 10
```

---

## 11. Pasta irmã — Guardião-PR (estilo Bugbot)

Esta pasta **não** substitui revisão de PR:

| Ação | Onde |
|------|------|
| Implementar feature | **Projeto Novo** `D00` → `D01` |
| Revisar PR / achar bugs no diff | **Guardiao-PR** `B00` → `B01` → `B09` |

Tutorial do guardião: [`../Guardiao-PR/TUTORIAL.md`](../Guardiao-PR/TUTORIAL.md)

---

## 12. Pasta irmã — Correção Rápida (bug local)

Bug no **seu PC**, fix em minutos, **sem PR**:

| Ação | Onde |
|------|------|
| Reproduzir → corrigir → validar | **Correcao-Rapida** `R00` → `R04` |
| Depois abrir PR | **Guardiao-PR** `B01` |

Tutorial: [`../Correcao-Rapida/TUTORIAL.md`](../Correcao-Rapida/TUTORIAL.md)

---

## 13. Checklist do primeiro uso

- [ ] Li este tutorial  
- [ ] Salvei `CHEATSHEET.md` nos favoritos  
- [ ] Testei `D00` em um projeto real  
- [ ] Entendi: só avanço com `APROVAR`  
- [ ] Sei onde estão os exemplos (`EXEMPLOS.md`)  

---

**Próximo passo:** abra `CHEATSHEET.md`, escolha seu cenário e cole o primeiro prompt.
