# RISCOS DO MÉTODO E PROJETOS

Este documento mantém um registro dos riscos conhecidos,
tanto do método (`workbench`) quanto dos projetos que usam
este método (ex.: Quadro Negro, CAI, COD, etc.).

Objetivo:
- deixar claros os principais riscos;
- pensar em prevenção e mitigação;
- evitar surpresas evitáveis no uso do método e dos projetos.

---

## Como usar

Para cada risco relevante:

1. Criar uma entrada na tabela principal.
2. Atualizar o status quando o risco mudar de situação
   (de "potencial" para "ocorrido", por exemplo).
3. Se um risco estiver ligado a uma decisão específica,
   vincular à entrada correspondente em `DECISOES.md`.
4. Se um risco gerar ação concreta, registrar também
   em `STATUS.md` e, se aplicável, no projeto afetado.

---

## Tabela de riscos

| ID | Data | Área | Descrição do risco | Probabilidade | Impacto | Plano de mitigação | Status | Relacionado a |
|----|------|------|--------------------|---------------|---------|--------------------|--------|---------------|
| R-001 | AAAA-MM-DD | Método | [ex.: método ficar complexo demais para novos usuários] | baixa/média/alta | baixo/médio/alto | [ex.: manter ONBOARDING simples, revisar anualmente] | potencial | DECISOES.md #[ID] |
| R-002 | AAAA-MM-DD | Projeto: [nome] | [descrição] | [ ] | [ ] | [ ] | [potencial/ocorrido/encerrado] | [link/nota] |

Legenda de campos:
- **Área**: Método | Projeto: [nome] | Outro.
- **Probabilidade**: baixa | média | alta.
- **Impacto**: baixo | médio | alto.
- **Plano de mitigação**: o que será feito para reduzir a chance ou impacto.
- **Status**:
  - potencial – ainda não ocorreu;
  - ocorrido – já aconteceu pelo menos uma vez;
  - encerrado – deixou de ser risco relevante.

---

## Observações

- Riscos recorrentes que se materializarem devem gerar
  decisões em `DECISOES.md` e, se necessário, ajustes em:
  - workflow.md,
  - CHECKLIST-METODO.md,
  - prompts das etapas.
- Projetos grandes podem ter um RISCOS.md próprio,
  mas este arquivo continua como visão central
  dos riscos do método e dos principais projetos.
