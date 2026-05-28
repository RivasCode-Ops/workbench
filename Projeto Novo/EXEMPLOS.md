# 📎 EXEMPLOS PREENCHIDOS
> Copie o bloco CONTEXTO, adapte e cole no prompt correspondente.

---

## Exemplo 1 — D00 (feature)

**Prompt:** `D00-CONTEXTO-SESSAO.md`

```
Projeto / repositório: crm-acme (monorepo)
Stack: Next.js 14, NestJS, PostgreSQL, Prisma
Tarefa de hoje: adicionar filtro por status no kanban de leads
Tipo: feature
Arquivos/pastas: frontend/app/leads, backend/src/leads
Branch atual: feat/kanban-status-filter
Restrições: não alterar contrato público da API v1; RBAC existente
Como rodar local: pnpm i && pnpm dev (root) | pnpm test:leads
Definition of Done: filtro funciona + teste e2e do kanban verde + PR aberto
```

**Saída esperada (resumo):** escopo = UI + query param `status` + índice se lentidão; fora = export CSV.

---

## Exemplo 2 — D01 (mesma feature)

**Prompt:** `D01-FEATURE.md` (após D00 APROVAR)

```
Feature: Filtro por status (novo, contato, ganho, perdido) no kanban
Critérios de aceite:
  - Dropdown filtra cards em <300ms em lista de 500 leads
  - Filtro persiste ao recarregar (query string ou localStorage — seguir padrão do repo)
  - Usuário sem permissão "leads:read" não vê o kanban (403)
Endpoints/telas: GET /api/v1/leads?status= ; página /leads/kanban
Regras: status inválido → 400; default = todos
```

---

## Exemplo 3 — D08 + D02 (bug em prod)

**D08-DEBUG.md**

```
Sintoma: webhook Stripe retorna 500, assinaturas não ativam
Desde quando: após deploy v2.3.1 (ontem 18h)
Ambiente: produção
Erro: Prisma P2002 Unique constraint on subscriptions_stripe_id
Causa raiz: (desconhecida)
```

**D02-BUGFIX.md** (após RCA)

```
Comportamento esperado: idempotência — mesmo evento Stripe não duplica subscription
Comportamento atual: segundo evento quebra com 500
Reproduzir: replay event invoice.paid com mesmo stripe_subscription_id
Causa raiz: upsert ausente; insert duplicado no handler
```

---

## Exemplo 4 — D11 (incidente)

```
Sintoma: API 502, login impossível
Início: 14:32 BRT
Severidade: SEV1
% usuários: ~100%
Último deploy: v2.3.1 há 2h
Logs: OOMKilled no pod api-7f8a
War room: João (backend), Maria (infra)
```

**Mitigação típica:** rollback v2.3.0 → confirmar /health → comunicar.

---

## Exemplo 5 — 14-TRIAGEM (legado)

```
Nome: ERP interno oficina
O que faz: OS, estoque, caixa
Código: sim, ~70% funcional
Produção: sim, 12 oficinas
Stack: Laravel 10, MySQL, Vue 2
Maior dor: medo de deploy; sem testes
Quero: corrigir e poder evoluir sem quebrar
```

**Estágio esperado:** `LEGADO_DEBT` → trilha `14` → `13` → agentes `07, 08, 04, 03`…

---

## Exemplo 6 — D12 (ADR)

```
Título: Usar BullMQ para fila de notificações
Problema: cron síncrono trava request e perde jobs
Restrições: já temos Redis; time só Node
Opções: BullMQ | SQS | manter cron
```

**Decisão esperada:** BullMQ no MVP; revisar em 50k jobs/dia.

---

---

## Exemplo 7 — D13 (feature generativa RAG)

**D00 + D13**

```
Projeto: assistente-suporte
Feature: chat que responde com base na base de conhecimento (PDFs)
Padrão: RAG
Modelo: gpt-4o-mini (resposta) + text-embedding-3-small
Arquivos: backend/src/ai/rag.ts, prompts/support-v2.md, vector/pgvector
Contrato saída: { answer: string, sources: { id, title, snippet }[] }
Limites: 8k tokens/resposta, timeout 30s, máx R$ 0.15/usuário/dia
Evals: sim — 12 casos em tests/ai/evals.json
```

**Implementação esperada:** chunk 512/64, top-k=5, citações obrigatórias, fallback “não encontrei na base”.

---

## Exemplo 8 — 15-GENERATIVO (decisão de produto)

```
Produto: CRM com “resumo automático da call”
Job: vendedor lê resumo em 30s antes do follow-up
Dado: transcrição Whisper + notas do lead
Restrições: LGPD, não enviar CPF/email ao modelo — mascarar antes
```

**Decisão esperada:** `HÍBRIDO` — extração estruturada (prompt único) + template fixo para campos; não agente multi-tool.

---

Ver também: `CHEATSHEET.md` para escolha rápida do arquivo.
