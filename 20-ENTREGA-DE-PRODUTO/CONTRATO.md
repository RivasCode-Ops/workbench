# CONTRATO — Domínio 20 (Entrega de produto)

| Campo | Valor |
|-------|-------|
| **Versão** | `2.0.0` |
| **Status** | `stable` |

## Objetivo

Levar software de ideia validada até produção com gates por fase; suportar coding diário e legado.

## Entradas mínimas por trilha

| Trilha | Entrada mínima |
|--------|----------------|
| Novo (A) | Contexto em `000`; gate `001` |
| Legado (B) | `14-TRIAGEM` |
| Coding (C) | `D00` aprovado |
| Incidente (F) | Sintoma, severidade, impacto |
| IA (G) | Escopo generativo definido |

## Saídas esperadas

| Trilha | Saída |
|--------|-------|
| Agentes 01–12 | Relatório + gate `APROVAR`/`AJUSTAR`/`REPROVAR` |
| D* | Código/plano + gate + próximo D* |
| D10 | Checklist pré-merge/deploy |

## Escalonamento

| Situação | Domínio |
|----------|---------|
| PR aberto | `30` → B01 |
| Bug local | `50` → R00 |
| Repo opaco | `40` → RX01 |
| Ideia bruta | `10` → MI |

## Gates

`APROVAR` · `AJUSTAR` · `REPROVAR` · `PULAR` (IA opcional)
