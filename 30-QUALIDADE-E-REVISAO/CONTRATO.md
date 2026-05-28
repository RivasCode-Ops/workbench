# CONTRATO — Domínio 30 (Qualidade e revisão)

| Campo | Valor |
|-------|-------|
| **Versão** | `2.0.0` |
| **Status** | `stable` |

## Guardião PR (B*)

| Campo | Valor |
|-------|-------|
| **Entrada mínima** | Diff ou @arquivos, base branch, objetivo do PR |
| **Saída** | BLOCKERs (arquivo:linha), patch sugerido, rota B06→B08→B09 |
| **Gate** | `MERGE_OK` \| `MERGE_BLOQUEADO` \| `MERGE_COM_RISCO` |
| **Não usar** | Produto novo; bug só local |

**Fluxo em 2 passadas (recomendado):** (1) encontrar defeitos `B01` (2) patch mínimo `B06`

## Auditoria App (QA*)

| Campo | Valor |
|-------|-------|
| **Entrada mínima** | @repo, lista **Prometido**, URL se possível |
| **Saída** | [`TEMPLATE-SAIDA`](../Auditoria-App/TEMPLATE-SAIDA.md), plano de correção |
| **Gate** | `APROVADO` \| `AJUSTAR` \| `REPROVAR` \| `INSUFICIENTE` |
| **Não usar** | Substituir Raio-X técnico profundo |

## Escalonamento

| De | Para |
|----|------|
| QA P0 fix | `50` R00 ou `20` D02 |
| Correções em PR | `B01` |
| Dívida estrutural | `40` RX01 |
