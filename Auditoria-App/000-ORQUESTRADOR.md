# Orquestrador — Auditoria de App

**Personalidade:** [`PERSONALIDADE-QA-ENTREGA.md`](./PERSONALIDADE-QA-ENTREGA.md)

---

## CONTEXTO

```
Nome do app:
Tipo: HTML estático | SPA (Vite/React) | Next | outro
URL ou como rodar: (http://localhost:3000 | file://...)
Repositório @:
O que foi prometido na entrega (bullet points):
Prazo da auditoria: completa | rápida
Você pode testar no browser agora? sim / não (só código)
```

---

## ROTEAMENTO

| Situação | Trilha |
|----------|--------|
| Auditoria completa app | `QA00` → `QA01` → `QA02` → `QA03` → `QA04` |
| Só código, sem browser | `QA00` → `QA01` → `QA03` (marcar N/T no teste) |
| Uma sessão com @repo | `QA-SESSAO-UNICA` |
| Só mapa + checklist | `QA01` + `CHECKLIST-APP-GENERICO` |
| Já corrigiu, re-testar | `QA02` + `QA03` (diff mental) |
| Estrutura/arquitetura do repo | **ESCALAR** `../Raio-X-Projeto/RX01` |

---

## ENTREGA

1. Trilha recomendada
2. Arquivos para @anexar (index.html, app.js, routes, package.json)
3. **Roteamento:** `SESSAO_UNICA` | `QA00-04` | `ESCALAR_RX01`
