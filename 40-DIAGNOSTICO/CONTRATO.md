# CONTRATO — Domínio 40 (Diagnóstico)

| Campo | Valor |
|-------|-------|
| **Versão** | `2.0.0` |
| **Status** | `stable` |

## Objetivo

Due diligence técnica: arquitetura, testes, segurança, CI, dívida — em quadros 0–10.

## Entrada mínima

- `@repo` ou pasta principal do código
- Stack conhecida (se houver)
- Opcional: URL para correlacionar com runtime

## Saída esperada

- [`TEMPLATE-SAIDA`](../Raio-X-Projeto/TEMPLATE-SAIDA.md)
- Top 10 atenção + o que não mexer
- Gate: `SAUDÁVEL` \| `PRECISA_TRABALHO` \| `RISCO_ALTO` \| `INSUFICIENTE`

## Escalonamento

| Veredito | Próximo |
|----------|---------|
| `PRECISA_TRABALHO` | `20/14` → `13` |
| `SAUDÁVEL` | `20/D00` |
| Antes de prod | `20/12-VALIDADOR` |

## Não confundir com

- **30 Auditoria-App** — teste funcional vs prometido
- **30 B01** — review de diff
