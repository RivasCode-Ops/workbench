# Eval — RX01

| Campo | Valor |
|-------|-------|
| **prompt** | `Raio-X-Projeto/RX01-RAIO-X-COMPLETO.md` |
| **version** | `2.1.0` |
| **last_passed** | pending |

## Cenário — Repo pequeno fictício

**Entrada:** descrição: app Next + Prisma, sem testes, CI só build.

**Saída esperada:**
- TEMPLATE-SAIDA com 15 dimensões ou N/A justificado
- Nota 0–10 por linha
- Top 10 atenção
- Veredito `PRECISA_TRABALHO` ou `RISCO_ALTO`
- Cita evidência (mesmo que “não vi arquivo X”)

**Aceite:** [ ] não implementa código [ ] não confunde com auditoria de “prometido”

## Falhas conhecidas

- Aprovar com nota <5 sem REPROVAR/RISCO_ALTO
- Quadro vazio
