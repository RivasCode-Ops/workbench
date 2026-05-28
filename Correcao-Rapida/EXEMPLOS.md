# 📎 Exemplos — Correção Rápida

## Exemplo 1 — R00

```
Projeto: crm-acme
Stack: NestJS + Prisma
Bug: GET /leads?status= retorna 500
Esperado: lista todos | Acontece: 500 ZodError
Onde: API
Arquivos: @backend/src/leads/dto/filter.dto.ts
Rodar: pnpm dev:api
```

---

## Exemplo 2 — sessão completa

| Passo | Conteúdo |
|-------|----------|
| R02 | `status` vazio não aceito no DTO |
| R03 | `status === ''` → tratar como `undefined` |
| R04 | `curl localhost:3000/leads?status=` → 200 |
| R05 | `fix(leads): empty status means no filter` |

---

## Exemplo 3 — quando escalar

```
Bug: checkout retorna 500 em produção para todos
→ ESCALAR → ../Projeto Novo/D11
```

---

## Exemplo 4 — depois abrir PR

```
Fix commitado na branch fix/leads-status
→ Abrir PR → ../Guardiao-PR/B00 → B01 → B09
```
