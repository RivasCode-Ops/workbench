# Eval — QA-SESSAO-UNICA

| Campo | Valor |
|-------|-------|
| **prompt** | `Auditoria-App/QA-SESSAO-UNICA.md` |
| **version** | `2.1.0` |
| **last_passed** | pending |

## Cenário — App com 3 itens prometidos

**Prometido:**
- Listar itens
- Criar item
- Persistir após F5

**Entrada:** @repo mock ou descrição código sem persistência.

**Saída esperada:**
- TEMPLATE completo
- Lacuna L* em “persistir F5” se código não persiste
- Não exige módulo CRM não prometido
- Plano de correção ordenado

**Aceite:** [ ] escopo = prometido [ ] separa erro vs lacuna

## Falhas conhecidas

- Checklist CRM obrigatório sem prometer CRM
- APROVADO com P0 aberto
