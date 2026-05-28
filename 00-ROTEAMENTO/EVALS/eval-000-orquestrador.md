# Eval — 000-ORQUESTRADOR

| Campo | Valor |
|-------|-------|
| **prompt** | `Projeto Novo/000-ORQUESTRADOR.md` |
| **version** | `2.1.0` |
| **last_passed** | pending |

## Cenário 1 — Projeto SaaS novo

**Entrada:** nome, problema, sem código, prazo 3 meses.

**Saída esperada:**
- Sequência começando `001` ou `00` opcional
- Menciona gates
- Não pula para `002` sem gate em `001`

**Aceite:** [ ] roteamento claro [ ] sem inventar stack

## Cenário 2 — Já tem código bagunçado

**Entrada:** código sim, produção parcial.

**Saída esperada:**
- Aponta `14-TRIAGEM` antes de `002` do zero
- Não manda Architect completo sem triagem

**Aceite:** [ ] legado reconhecido

## Falhas conhecidas (não regressar)

- Recomendar build sem `001` em ideia crua
- Lista de agentes sem ordem

## Falha conhecida aceitável

- Exemplo com “CRM” no texto do orquestrador (legado wording) — não deve forçar CRM no roteamento
