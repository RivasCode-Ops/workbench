# VERSÃO DO MÉTODO (`workbench`)

Este arquivo registra a versão atual do método e as mudanças
relevantes entre versões.

Usamos versionamento semântico:

- **MAJOR** – mudanças que quebram compatibilidade de etapas
  (ex.: remover ou renumerar etapas, mudar formato de arquivos centrais).
- **MINOR** – novas funções/pastas, novos comandos, ajustes de fluxo,
  mas mantendo compatibilidade geral.
- **PATCH** – correções pequenas, melhorias de texto, sem mudar fluxo.

---

## Versão atual

- Versão: 0.1.0
- Data: 2026-05-28
- Estado: Em uso interno / pré-produto

### Resumo desta versão

- Estrutura canônica 00–50 + 90 implantada.
- Governança com CONTEXT, HANDOFF, STATUS, RELATORIO-ATUAL.
- Logs de DECISOES e RISCOS criados.
- Histórico de exploração de repositórios configurado.
- Comandos principais em `.claude/` para roteamento, correção de rota, exploração.

---

## Histórico de versões

### 0.1.0 – [2026-05-28]

- Criação do `workbench` como repositório canônico do método.
- Etapas numeradas 00/10/20/30/40/50/90 com arquivos padrão por pasta.
- Implante de:
  - DECISOES.md + template DECISAO-YYYYMMDD-XXX.md
  - RISCOS.md
  - CHECKLIST-METODO.md
  - ONBOARDING.md
  - HISTORICO-EXPLORACAO-REPOS.md
- Comandos `.claude/`:
  - rotear-projeto
  - iniciar-projeto (se existir)
  - revisar-etapa
  - diagnosticar-problema
  - regenerar-rota
  - gerar-relatorio
  - explorar-repos-workbench (completo e curto)

(Próximas versões entram aqui, sempre com nota MAJOR/MINOR/PATCH.)
