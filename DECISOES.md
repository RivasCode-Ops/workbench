# DECISOES

Registro das decisoes relevantes do metodo e dos projetos conduzidos no `workbench`.

Objetivo:
- tornar as escolhas rastreaveis;
- preservar o "por que" das mudancas;
- facilitar continuidade entre sessoes, maquinas e pessoas.

---

## Como usar

Sempre que houver uma decisao importante, registrar uma entrada.

Criticos para registrar:
- mudanca de fluxo entre etapas do metodo;
- escolha de arquitetura de processo/documentacao;
- adocao ou descarte de pratica inspirada em benchmark;
- alteracao de regra em `.claude/rules`, prompts ou checklists.

---

## Template de entrada

### [DEC-AAAA-MM-DD-XX] Titulo curto da decisao

- Data:
- Status: proposta | aprovada | descartada | substituida
- Contexto:
  - qual era o problema ou necessidade
- Decisao:
  - o que foi decidido objetivamente
- Alternativas consideradas:
  - opcao A:
  - opcao B:
- Consequencias esperadas:
  - ganhos:
  - trade-offs:
- Impacto no metodo:
  - arquivos/pastas afetados:
  - etapa(s) impactada(s):
- Referencias:
  - issue/rodada/historico:
  - commit/PR (se houver):

---

## Decisoes registradas

### [DEC-2026-05-28-01] Estabelecer workbench como base canonica

- Data: 2026-05-28
- Status: aprovada
- Contexto:
  - necessidade de consolidar metodo unico e preparado para migracao de outra workstation.
- Decisao:
  - adotar o repositorio `workbench` como fonte canonica do metodo, mantendo legado em trilha separada.
- Alternativas consideradas:
  - opcao A: manter estrutura antiga como principal.
  - opcao B: recriar estrutura do zero sem preservar legado.
- Consequencias esperadas:
  - ganhos: clareza operacional, modularidade e governanca.
  - trade-offs: necessidade de migracao controlada e disciplina de atualizacao.
- Impacto no metodo:
  - arquivos/pastas afetados: raiz, `.claude/`, etapas `00-90`, `90-LEGADO`.
  - etapa(s) impactada(s): todas.
- Referencias:
  - issue/rodada/historico: bootstrap inicial do metodo.
  - commit/PR (se houver): `f863b43`.
