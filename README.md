# PROMPT METHOD HUB

Repositório-mãe do meu método de criação, triagem, modelagem, entrega, revisão e manutenção de projetos com apoio de IA.

## Objetivo
Transformar ideias, demandas, bugs ou projetos existentes em saídas estruturadas, reutilizáveis e vendáveis.

## Como usar
1. Leia `CAMINHOS.md` para decidir por onde começar.
2. Entre na pasta correspondente ao momento do projeto.
3. Use `prompt.md` para conduzir a IA.
4. Valide com `checklist.md`.
5. Gere a entrega conforme `saida-esperada.md`.

## Como usar com Claude e Cursor

### Com Claude Code
Abra o repositorio no Claude Code. O projeto usa `CLAUDE.md` e a pasta `.claude/` como camada operacional. Sempre inicie por `00-ROTEAMENTO` ou use os comandos do projeto para classificar a demanda, escolher a etapa correta e registrar continuidade.

### Com Cursor
Abra o repositorio no Cursor e use os arquivos `.md` como roteiro operacional. Sempre leia `README.md`, `CAMINHOS.md`, `CONTEXT.md` e a etapa ativa antes de pedir execucao. Quando necessario, use `prompt.md` da etapa no chat/composer e peca resposta seguindo exatamente aquela estrutura.

### Regra geral
Se a demanda se desviar ou abrir sub-demandas, registrar em `STATUS.md`, atualizar `HANDOFF.md` e usar `corrigir-rota` ou `regenerar-rota` antes de seguir.

## Relatorio operacional

Use `RELATORIO-ATUAL.md` como painel curto do momento para responder duas perguntas:
- como esta o trabalho agora;
- o que vai ser feito em seguida.

Quando usar:
- inicio de sessao para retomada rapida;
- antes de handoff entre sessoes/maquinas;
- quando precisar de visao executiva sem ler todo o historico.

Com Claude/Cursor, voce pode usar o comando `gerar-relatorio` para regenerar esse arquivo a partir de `CONTEXT.md`, `HANDOFF.md`, `STATUS.md` e da etapa ativa.

## Benchmark de projetos GitHub

Quando precisar aprender com produtos parecidos (especialmente os mais estrelados), use benchmarking na etapa `10-DESCOBERTA-E-MODELAGEM`.

- Template generico: `10-DESCOBERTA-E-MODELAGEM/benchmark-github.template.md`
- Piloto Quadro Negro: `10-DESCOBERTA-E-MODELAGEM/benchmark-github.quadro-negro.md`
- Comando operacional: `.claude/commands/analisar-benchmarks-github.md`

## Exploracao de repos para evoluir o metodo

Quando o objetivo for evoluir o proprio `workbench` (e nao um app especifico), use os comandos de exploracao focados em workflow/documentacao/automacao:

- Completo: `.claude/commands/explorar-repos-workbench.md`
- Curto: `.claude/commands/explorar-repos-workbench.curto.md`
- Historico das rodadas: `HISTORICO-EXPLORACAO-REPOS.md`

## Oferta do metodo

O `workbench` e um metodo operacional para transformar demanda em entrega com IA, com foco em clareza, continuidade e padronizacao.

Para quem serve:
- profissionais independentes que executam multiplos projetos com IA;
- equipes pequenas que precisam de processo leve e rastreavel;
- operacoes que exigem handoff consistente entre sessoes, agentes e maquinas.

O que entrega:
- roteamento de demanda por etapa (`00` a `90`);
- artefatos padrao por fase (`prompt`, `checklist`, `saida-esperada`);
- governanca ativa (`CONTEXT`, `STATUS`, `HANDOFF`, `RELATORIO-ATUAL`);
- camada operacional para IA com comandos e regras reutilizaveis.

Como adotar em 7 dias (resumo):
1. Dia 1: mapear demanda atual e iniciar por `00-ROTEAMENTO`.
2. Dia 2-3: padronizar etapa ativa com `prompt/checklist/saida-esperada`.
3. Dia 4: configurar governanca minima (`CONTEXT`, `STATUS`, `HANDOFF`).
4. Dia 5: ativar comandos `.claude/commands` mais usados.
5. Dia 6: registrar decisoes em `DECISOES.md` e riscos em `RISCOS.md`.
6. Dia 7: revisar fluxo completo e ajustar lacunas no metodo.

## Estrutura principal
- `00-ROTEAMENTO`: triagem inicial e definição do caminho
- `10-DESCOBERTA-E-MODELAGEM`: entendimento, escopo, requisitos e modelo
- `20-ENTREGA-DE-PRODUTO`: transformar modelo em entrega prática
- `30-QUALIDADE-E-REVISAO`: auditoria, consistência e qualidade
- `40-DIAGNOSTICO`: investigação de falhas e problemas
- `50-CORRECAO-RAPIDA`: resposta rápida a incidentes e ajustes
- `90-LEGADO`: importação, comparação e arquivamento de material antigo

## Regra do método
Não começar implementando antes de entender o tipo de demanda e o estágio do projeto.
