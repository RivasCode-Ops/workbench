# REPO-CHECKLIST — [nome-do-repositorio]

Preencha uma vez por projeto. Anexe no `B00` ou `B01` com @.

**Versão:** `1.0.0` · **Owner:** [time]

---

## Regras da casa (review foca aqui — não nitpick genérico)

| # | Regra | Exemplo de violação |
|---|-------|---------------------|
| 1 | Datas em UTC / ISO-8601 | `new Date()` sem timezone em API |
| 2 | Sem PII em logs | email completo em `console.log` |
| 3 | HTTP externo com timeout | `fetch` sem `AbortSignal` |
| 4 | Writes idempotentes | POST duplicado cria 2 registros |
| 5 | Sem N+1 óbvio | loop com query por item |
| 6 | Auth em rotas novas | endpoint sem middleware |
| 7 | Input validado | body aceito sem schema |
| 8 | | |
| 9 | | |
| 10 | | |

## Stack

- Linguagem:
- Framework:
- DB:

## Áreas críticas neste PR

- [ ] Pagamento
- [ ] Auth
- [ ] Dados pessoais
- [ ] Jobs/filas

## Testes esperados antes do merge

- [ ] CI verde
- [ ] Teste manual: [descrever]
