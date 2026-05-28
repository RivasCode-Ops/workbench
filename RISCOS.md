# RISCOS

Registro dos riscos ativos do metodo e de sua operacao no `workbench`.

Objetivo:
- antecipar problemas antes de virar incidente;
- manter mitigacoes explicitas;
- apoiar priorizacao de melhorias no metodo.

---

## Como usar

Atualizar este arquivo quando:
- um risco novo for identificado;
- a severidade/probabilidade mudar;
- uma mitigacao for aplicada;
- um risco for encerrado.

Classificacao sugerida:
- Probabilidade: baixa | media | alta
- Impacto: baixo | medio | alto
- Status: aberto | mitigando | monitorando | encerrado

---

## Template de risco

### [RISK-AAAA-MM-DD-XX] Titulo curto do risco

- Data:
- Categoria: processo | documentacao | continuidade | qualidade | integracao | outro
- Descricao:
- Probabilidade: baixa | media | alta
- Impacto: baixo | medio | alto
- Status: aberto | mitigando | monitorando | encerrado
- Sinal de alerta:
  - como perceber cedo que o risco esta acontecendo
- Mitigacao planejada:
  - acao 1
  - acao 2
- Dono:
- Prazo de revisao:
- Referencias:
  - arquivos afetados:
  - commit/PR (se houver):

---

## Riscos ativos

### [RISK-2026-05-28-01] Desvio de fluxo sem registro de retorno

- Data: 2026-05-28
- Categoria: processo
- Descricao:
  - durante execucao, sub-demandas podem desviar o foco principal sem registro claro de condicao de retorno.
- Probabilidade: media
- Impacto: alto
- Status: mitigando
- Sinal de alerta:
  - `STATUS.md` sem foco atual definido ou com sub-demandas sem tipo/status.
- Mitigacao planejada:
  - usar `corrigir-rota` e `regenerar-rota` sempre que houver desvio.
  - revisar `STATUS.md` e `HANDOFF.md` ao fim de cada sessao.
- Dono:
  - operacao do metodo
- Prazo de revisao:
  - semanal
- Referencias:
  - arquivos afetados: `STATUS.md`, `HANDOFF.md`, `.claude/rules/workflow.md`
  - commit/PR (se houver): `64ae2d4`, `417157e`
