# CONTRATO — Domínio 10 (Descoberta e modelagem)

| Campo | Valor |
|-------|-------|
| **Versão** | `2.0.0` |
| **Status** | `stable` |

## Objetivo

Transformar material não estruturado em modelo de negócio escolhido e explicado.

## Entrada mínima

- Texto/recorte/reportagem **ou** descrição da ideia
- Objetivo da sessão (formalizar / validar / decidir se constrói)

## Saída esperada

- [`TEMPLATE-SAIDA`](../Modelagem-Ideia/TEMPLATE-SAIDA.md) preenchido
- Modelo escolhido (M1–M9) + orientação didática
- Gate: `ESTRUTURAR` \| `COMPLEMENTAR` \| `REFOCAR` \| `ARQUIVAR`

## Escalonamento

| Gate | Próximo |
|------|---------|
| `ESTRUTURAR` + vai codar | `20` → `../Projeto Novo/001-DESCOBERTA.md` |
| Só mercado | `20` → `001` |
| Já tem código | `40` → `RX01` |

## Prompts do domínio

| ID | Path legado |
|----|-------------|
| MI-SESSAO-UNICA | `Modelagem-Ideia/MI-SESSAO-UNICA.md` |
| MI00–MI04 | `Modelagem-Ideia/MI*.md` |
