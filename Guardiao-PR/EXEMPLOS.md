# 📎 Exemplos — Guardião-PR

## B00 — contexto

```
PR: #142 feat/add-lead-status-filter
Base: main
Objetivo: filtrar kanban por status no backend e frontend
Arquivos: @backend/src/leads/leads.controller.ts @frontend/app/leads/page.tsx
Sensível: auth (leads:read)
Testes: pnpm test:leads — passou local
```

---

## B01 — achado exemplo

```
🔴 BLOCKER backend/src/leads/leads.service.ts:47
Problema: query não filtra por tenantId
Cenário: usuário A vê leads do tenant B
Fix: adicionar WHERE tenant_id = :tenantId do JWT
```

---

## Veredito exemplo

```
BLOCKER: 1 | SUGESTÃO: 2 | NIT: 1
Veredito: MERGE_BLOQUEADO
```

Após B06/B08:

```
Veredito: MERGE_OK
```

---

Ver `../Projeto Novo/EXEMPLOS.md` para construção de features.
