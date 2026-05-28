# CONTRATO — Domínio 50 (Correção rápida)

| Campo | Valor |
|-------|-------|
| **Versão** | `2.0.0` |
| **Status** | `stable` |

## Objetivo

Reproduzir, achar causa, patch mínimo, validar — sem ritual de PR.

## Entrada mínima

- Sintoma em 1 frase
- @arquivos suspeitos (se houver)
- Ambiente: local

## Saída esperada

1. Passos de reprodução ou bloqueio
2. Causa raiz (1 parágrafo)
3. Diff resumido
4. Gate `R04`: `RESOLVIDO` \| `CONTINUA` \| `ESCALAR`
5. **Decisão de continuidade** (obrigatório v2):
   - `encerrar` — bug resolvido, sem PR
   - `abrir PR` → `30/B00` + `20/D09`
   - `debito-tecnico` — workaround; issue descrita
   - `escalar-incidente` → `20/D11`

## Escalonamento

| Situação | Domínio |
|----------|---------|
| Prod / SEV1 | `20/D11` |
| PR aberto | `30/B00` |
| Escopo cresceu | `20/D00` |
