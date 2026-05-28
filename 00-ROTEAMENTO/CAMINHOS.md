# Caminhos — qual trilha usar

**Versão:** `2.0.0` · **Canônico** · Domínios: `00` `10` `20` `30` `40` `50` `90`

Escolha **uma situação** abaixo. Siga a ordem dos arquivos. Não pule gates (`APROVAR`, `MERGE_OK`, etc.).

**Cola 1 linha:** [`../Projeto Novo/CHEATSHEET.md`](../Projeto%20Novo/CHEATSHEET.md)  
**Mapa técnico:** [`MAPA-ECOSSISTEMA.md`](./MAPA-ECOSSISTEMA.md)  
**Convenções:** [`CONVENCOES.md`](./CONVENCOES.md)

---

## Árvore rápida

```
O que você quer fazer?
│
├─ Ideia SOLTA (texto, recorte, reportagem — sem formato)
│   └─► CAMINHO I
│
├─ Ideia / produto NOVO do zero (já estruturada)
│   └─► CAMINHO A
│
├─ Estrutura PRONTA — como está na realidade? (quadros dev)
│   └─► CAMINHO H
│
├─ Projeto que JÁ EXISTE (antigo, bagunçado, em prod)
│   └─► CAMINHO B
│
├─ Codar HOJE (feature, bug, refactor) em repo existente
│   └─► CAMINHO C
│
├─ Bug só no meu PC (rápido)
│   └─► CAMINHO D
│
├─ PR para revisar / merge
│   └─► CAMINHO E
│
├─ Produção FORA ou degradada
│   └─► CAMINHO F
│
└─ Produto com IA (LLM, RAG, agente)
    └─► CAMINHO G
│
└─ CRM / app HTML entregue — auditar funcionamento
    └─► CAMINHO J
```

---

## CAMINHO J — Auditoria de app entregue (genérico)

**Quando:** app “pronto” — quer saber se **funciona**, o que **falta** vs o que **você prometeu**, como **corrigir**.

**Pasta:** [`Auditoria-App/`](./Auditoria-App/)

```
1. Subir app (ex: npm run dev → http://localhost:3000)
2. QA-SESSAO-UNICA.md + @pasta do projeto
3. Receber: mapa funcional, testes OK/FALHA, erros, lacunas, instruções de fix
```

| Fase | Prompt |
|------|--------|
| Mapa no código | `QA01` + checklist genérico + **sua lista prometida** |
| Teste na prática | `QA02` (roteiro T1–T10) |
| Quadros de achados | `QA03` |
| Plano de correção | `QA04` |

**Automação opcional (GitHub):** [autospec](https://github.com/zachblume/autospec), [qa-agent](https://github.com/jimmytoan/qa-agent) — ver `REFERENCIAS-GITHUB.md`

**Depois:** `Correcao-Rapida` (fix) → `Guardiao-PR` (PR) · estrutura repo → `Raio-X/RX01`

---

## CAMINHO I — Modelagem de ideia (bruto → modelo de negócio)

**Quando:** você tem rascunho, recorte, reportagem, WhatsApp — **não** sabe qual modelo usar.

**Pasta:** [`Modelagem-Ideia/`](./Modelagem-Ideia/)

**Personalidade:** consultor sênior estilo **Sebrae** — explica o modelo antes de preencher.

```
Material pequeno (~2 páginas):
  MI-SESSAO-UNICA.md     ← tudo em uma conversa

Material grande ou confuso:
  MI00 → MI01 → MI02 → MI03 → MI04
```

| Passo | O que você recebe |
|-------|-------------------|
| MI01 | Problema, cliente, dinheiro — fato vs hipótese vs lacuna |
| MI02 | **Qual modelo** (Canvas, Lean, Plano Sebrae, SaaS…) + **explicação didática** |
| MI03 | Quadro completo preenchido |
| MI04 | Plano 90 dias + para onde ir |

**Exemplo fictício:** [`Modelagem-Ideia/EXEMPLO-SAIDA.md`](./Modelagem-Ideia/EXEMPLO-SAIDA.md)

**Depois:**

| Resultado | Próximo |
|-----------|---------|
| Vai construir sistema | CAMINHO A (`001` → `000` → …) |
| Já tem código | CAMINHO H (`RX01`) |
| Só negócio local | `00-NEGOCIO` |

---

## CAMINHO A — Construir projeto novo (do zero)

**Quando:** só ideia, rascunho, ou MVP sem processo definido.

**Pasta:** [`Projeto Novo/`](./Projeto%20Novo/)

```
1. 000-ORQUESTRADOR.md      ← cole contexto do projeto
2. 001-DESCOBERTA.md        ← vale construir? (gate obrigatório)
3. 002-ARCHITECT.md         ← arquitetura executável
4. 01-ESTRATEGICO.md        ← OKRs, prioridades
5. 02-PROCESSOS.md
6. 03-DADOS.md
7. 04-INFRAESTRUTURA.md
8. 05-AUTOMACAO.md
9. 06-UX.md
10. 07-SEGURANCA.md
11. 08-OBSERVABILIDADE.md
12. 09-FINANCEIRO.md
13. 10-PROMPTOPS.md         ← só se tiver IA (senão PULAR)
14. 15-GENERATIVO.md        ← só se IA generativa (senão PULAR)
15. 11-GROWTH.md
16. 12-VALIDADOR.md         ← antes da primeira produção séria
```

**Depois que existe código:** use **CAMINHO C** no dia a dia.

**Tutorial:** [`Projeto Novo/TUTORIAL.md`](./Projeto%20Novo/TUTORIAL.md)

---

## CAMINHO H — Raio-X (estrutura pronta — diagnóstico técnico)

**Quando:** código/repo existe; quer saber **como está de verdade** antes de investir tempo.

**Pasta:** [`Raio-X-Projeto/`](./Raio-X-Projeto/)

```
1. RX01-RAIO-X-COMPLETO.md     ← análise profunda (padrão)
   ou RX02-RAIO-X-RAPIDO.md    ← ~15 min
2. Entrega: quadros (TEMPLATE-SAIDA) + nota 0–10 por dimensão
3. Gate: SAUDÁVEL | PRECISA_TRABALHO | RISCO_ALTO | INSUFICIENTE
```

**Depois:**

| Gate Raio-X | Próximo |
|-------------|---------|
| PRECISA_TRABALHO / RISCO_ALTO | CAMINHO B (`14` → `13`) |
| SAUDÁVEL | CAMINHO C (`D00` → coding) |
| Antes de prod | `12-VALIDADOR` |

**Não substitui:** Triagem (estágio) · Retrofit (plano) · Validador (pré-prod).

---

## CAMINHO B — Analisar projeto antigo / legado / existente

**Quando:** já tem código, não sabe o estágio, dívida técnica, medo de deploy.

**Pasta:** [`Projeto Novo/`](./Projeto%20Novo/) (não duplicar em Pojeto Antigo)

```
0. (recomendado) Raio-X RX01  ← realidade técnica em quadros
1. 14-TRIAGEM.md            ← classifica estágio
   │
   ├─ Resultado: IDEIA ou RASCUNHO
   │   └─► volta CAMINHO A (001 ou 002)
   │
   └─ Resultado: MVP_DEV | PROD_* | LEGADO_DEBT
       │
       2. 13-RETROFIT.md     ← plano faseado + lista de gaps
       3. Agentes 01–12      ← só os que o Retrofit indicar
       4. 12-VALIDADOR.md    ← antes de confiar em produção
```

**Se prod instável agora:** **CAMINHO F** primeiro, depois volte ao passo 2.

**Guia legado:** [`Projeto Novo/README (1).md`](./Projeto%20Novo/README%20(1).md)

---

## CAMINHO C — Codar hoje (feature, melhoria, bug com PR)

**Quando:** repositório existe, tarefa clara do dia.

**Pasta:** [`Projeto Novo/`](./Projeto%20Novo/) — [`CODING-DIARIO.md`](./Projeto%20Novo/CODING-DIARIO.md)  
**D00–D02 (piloto v2.2.0):** canônico em [`20-ENTREGA-DE-PRODUTO/04-coding-diario/`](../20-ENTREGA-DE-PRODUTO/04-coding-diario/)

### Feature ou melhoria

```
20/04-coding-diario/d00-contexto-sessao.md
20/04-coding-diario/d01-feature.md
D07-TESTES.md          ← se risco médio/alto
D09-COMMIT-PR.md
D10-PRE-MERGE.md
```

Se abriu PR → **CAMINHO E** (`B09` antes do merge).

### Bug (com teste e PR)

```
d00 → D08-DEBUG → d02-bugfix → D07? → D09 → D10
```

### Refactor

```
D00 → D04-REFACTOR → D07 (obrigatório) → D09 → D10
```

### API ou banco

```
D00 → D05-API ou D06-MIGRATION → D07 → D09 → D10
```

### Decisão importante

```
D00 → D12-ADR → (D01 ou D05/D06) → D07 → D09 → D10
```

**Atalho (sem D00):** [`Pojeto Antigo/D01-IMPLEMENTACAO-LEGADO.md`](./Pojeto%20Antigo/D01-IMPLEMENTACAO-LEGADO.md) — só sessão rápida; prefira D00+D01.

---

## CAMINHO D — Bug local rápido (sem PR)

**Quando:** erro no localhost, fix em 5–30 min, ainda não abriu PR.

**Pasta:** [`Correcao-Rapida/`](./Correcao-Rapida/)

```
R00-CONTEXTO-BUG.md
R01-REPRODUZIR.md
R02-CAUSA-RAIZ.md
R03-FIX-MINIMO.md
R04-VALIDAR.md
R05-COMMIT-LOCAL.md    ← opcional
```

**Depois:** abrir PR → **CAMINHO E** ou `D09` + `D10` no Projeto Novo.

**Não use** se prod está fora → **CAMINHO F**.

---

## CAMINHO E — Revisar PR / liberar merge

**Quando:** PR aberto, hotfix em branch, re-review após comentários.

**Pasta:** [`Guardiao-PR/`](./Guardiao-PR/)

### Revisão padrão

```
B00-CONTEXTO-DIFF.md
B01-SCAN-PR-COMPLETO.md
B09-GATE-MERGE.md
```

### Autor corrigindo BLOCKER

```
B00 → B06-CORRECAO-MINIMA → B08-RE-REVIEW → B09
```

### Hotfix em PR

```
B00 → B07-HOTFIX-URGENTE → B06 → B08 → B09
```

**Review leve (colega):** `D03-CODE-REVIEW` no Projeto Novo — não substitui B01+B09.

---

## CAMINHO F — Incidente em produção

**Quando:** usuários impactados, serviço fora ou degradado.

**Pasta:** [`Projeto Novo/`](./Projeto%20Novo/)

```
1. D11-INCIDENTE.md       ← mitigar PRIMEIRO (rollback, flag, scale)
2. D02-BUGFIX.md          ← correção definitiva
3. D10-PRE-MERGE.md       ← deploy seguro
4. D12-ADR.md             ← se decisão estrutural
```

**Se hotfix já está em PR:** + **CAMINHO E** (`B07` → `B06` → `B08` → `B09`).

**Não use** Correcao-Rapida nem Architect do zero no meio do incidente.

---

## CAMINHO G — Produto com IA generativa

**Quando:** LLM, RAG, agente, copiloto no produto.

**Pasta:** [`Projeto Novo/`](./Projeto%20Novo/)

```
1. 15-GENERATIVO.md       ← desenho (o que construir)
2. D13-GENERATIVO.md      ← implementar código
3. D07 → D09 → D10
4. 10-PROMPTOPS.md        ← operação em produção (custo, fallback, cache)
```

Se projeto ainda é ideia: **CAMINHO A** até `002`, depois volte aqui.

---

## Tabela: situação → caminho

| Situação | Caminho | Primeiro arquivo |
|----------|---------|------------------|
| Ideia solta (recorte, texto) | I | `MI-SESSAO-UNICA` |
| Ideia nova já estruturada | A | `000-ORQUESTRADOR` |
| Validar se vale construir | A | `001-DESCOBERTA` |
| App entregue — funciona? | J | `QA-SESSAO-UNICA` + prometido |
| Estrutura pronta — como está? | H | `RX01` |
| Projeto antigo, não sei o estágio | B | `14-TRIAGEM` (após H se possível) |
| Plano para corrigir legado | B | `13-RETROFIT` |
| Feature hoje | C | `D00` → `D01` |
| Bug com PR e testes | C | `D00` → `D08` → `D02` |
| Bug só no PC | D | `R00` |
| Revisar PR | E | `B00` → `B01` |
| Prod fora do ar | F | `D11` |
| IA no produto | G | `15-GENERATIVO` |
| Ir para produção (gate final) | B ou A | `12-VALIDADOR` |

---

## Erros comuns

| Errado | Certo |
|--------|-------|
| Retrofit em projeto só com ideia | CAMINHO A → `001` |
| `D01` sem `D00` em feature importante | `D00` → `D01` |
| Só `D10` com PR aberto | `D10` + Guardiao `B09` |
| Correcao-Rapida com prod fora | CAMINHO F → `D11` |
| Architect do zero em legado estável | CAMINHO B → `14` → `13` |
| `15-GENERATIVO` para feature sem IA | CAMINHO C → `D01` |

---

## Onde começar cada pasta

| Pasta | Arquivo inicial |
|-------|-----------------|
| Projeto Novo (novo) | `TUTORIAL.md` ou `000-ORQUESTRADOR` |
| Projeto Novo (código hoje) | `20/04-coding-diario/d00-contexto-sessao` (D00–D02 canônico) |
| Projeto legado | `14-TRIAGEM` |
| Correcao-Rapida | `R00` ou `000-ORQUESTRADOR` |
| Guardiao-PR | `B00` ou `000-ORQUESTRADOR` |
| Pojeto Antigo | `README.md` (redirects para Novo) |
