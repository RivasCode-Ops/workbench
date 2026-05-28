# HISTORICO DE EXPLORACAO DE REPOSITORIOS

Este arquivo registra todas as rodadas em que usamos os comandos
`explorar-repos-workbench` (completo ou curto) para analisar repositorios
publicos e trazer ideias para evoluir o metodo do `workbench`.

A ideia e ter:
- rastro de quando e por que exploramos;
- quais repositorios foram analisados;
- quais decisoes foram tomadas (adotar, adaptar, ignorar);
- como essas decisoes impactaram o metodo (arquivos e regras).

Nada importante fica so na conversa.

---

## Como usar este arquivo

Sempre que rodar uma exploracao (com Claude, Cursor ou outra IA):

1. Criar uma nova subsecao em **Entradas por rodada**, com a data e o foco.
2. Registrar:
   - contexto da rodada;
   - comandos usados;
   - repositorios analisados;
   - ideias principais;
   - decisoes sobre o que aplicar ou nao.
3. Se alguma ideia gerar mudanca concreta no metodo:
   - atualizar este historico com a referencia ao commit (se possivel);
   - atualizar tambem:
     - `STATUS.md` (marco de evolucao do metodo),
     - `CHECKLIST-METODO.md` (secao de revisao periodica, se aplicavel),
     - `MIGRACAO.md` (se estiver substituindo algo que veio do legado).
4. Se nenhuma ideia for aplicada, registre tambem o motivo
   (para nao repetir esforcos com os mesmos repositorios no futuro).

---

## Resumo executivo

Use esta secao para manter uma visao de alto nivel das exploracoes ja feitas
e do impacto geral no metodo.

- Ultima exploracao realizada em: [preencher data]
- Foco principal das ultimas exploracoes:
  - [ex.: documentacao de metodo]
  - [ex.: templates de handoff/status]
  - [ex.: automacao com IA / commands / skills / hooks]
- Principais melhorias ja incorporadas ao `workbench` a partir de exploracoes:
  - [ex.: criacao de ONBOARDING.md inspirada em template X]
  - [ex.: modelo de RELATORIO-ATUAL.md inspirado em Y]
  - [ex.: ajuste em MIGRACAO.md baseado em Z]
- Proximos focos desejados para proximas exploracoes:
  - [ex.: exemplos de governanca de prompts]
  - [ex.: integracao com GitHub Actions / CI]
  - [ex.: padroes de documentacao para metodos vendidos como produto]

---

## Entradas por rodada

Cada rodada deve ser registrada no formato abaixo.

### [AAAA-MM-DD] - Foco: [tema principal da exploracao]

#### 1. Contexto da rodada

- Objetivo da exploracao:
  - [ex.: buscar boas praticas de documentacao de workflow]
- Situacao do metodo no momento:
  - [ex.: workbench v1.0, ONBOARDING inicial, sem historico de exploracao]
- Comando(s) usados:
  - `explorar-repos-workbench.md` (completo) | `explorar-repos-workbench.curto.md`
- Ferramenta usada:
  - Claude Code | Cursor | outra ([especificar])

#### 2. Repositorios analisados

Para cada repositorio, criar um bloco:

##### 2.x - [Nome do repo] - [link]

- Estrelas aproximadas:
  - [ex.: ~3.4k stars]
- Tipo:
  - [template / workflow / doc / IA / handoff / outro]
- Objetivo do repo (1-2 frases):
  - [descrever]
- Principais ideias de estrutura/metodo observadas:
  - [ex.: uso de pasta docs/ com indice central]
  - [ex.: arquivos de decision log por feature]
  - [ex.: modelos de PR com checklist de handoff]
- O que vale a pena adaptar para o `workbench`:
  - [ex.: criar DECISION-LOG.md por projeto]
  - [ex.: adicionar secao de riscos em STATUS.md]
- O que NAO faz sentido trazer:
  - [ex.: scripts de CI complexos que nao condizem com o tamanho atual dos projetos]
  - [ex.: convencoes de branches que conflitam com o uso atual de main]

#### 3. Ideias consolidadas para o workbench

- Novos arquivos .md sugeridos:
  - [ex.: DECISION-LOG.md]
  - [ex.: RISK-LOG.md]
- Melhorias em documentacao:
  - [ex.: reorganizar README com secoes inspiradas em repo X]
  - [ex.: adicionar exemplo visual no ONBOARDING]
- Melhorias em fluxo/metodologia:
  - [ex.: acrescentar etapa de validacao de riscos em 30-QUALIDADE-E-REVISAO]
- Ideias de automacao com IA:
  - [ex.: criar comando para gerar decision log a partir de conversa]
  - [ex.: skill para revisar riscos em STATUS/RISK-LOG]

#### 4. Decisoes e impacto no metodo

Para cada ideia relevante, decidir:

- [ ] Adotar agora
- [ ] Adotar depois
- [ ] Testar em um projeto piloto
- [ ] Nao adotar (motivo)

Formato sugerido:

- Ideia: [descricao]
  - Decisao: [adotar agora/adotar depois/testar/nao adotar]
  - Pasta/arquivo(s) afetados:
    - [ex.: ONBOARDING.md, CHECKLIST-METODO.md]
  - Acao concreta:
    - [ex.: criar secao "Riscos" em STATUS.md]
  - Referencia:
    - Repositorio de origem: [nome + link]
    - Commit/branch (se ja aplicado): [hash ou link]

#### 5. Registros cruzados

Atualizacoes em outros arquivos:

- STATUS.md:
  - [ex.: registrar marco: "Exploracao de repositorios - foco em docs/workflow - melhorias X e Y aplicadas."]
- MIGRACAO.md:
  - [ex.: se substituiu algum padrao antigo por um novo trazido da exploracao]
- CHECKLIST-METODO.md:
  - [ex.: marcar revisao mensal de exploracao de repositorios]
- RELATORIO-ATUAL.md:
  - [ex.: incluir, se relevante, as proximas acoes derivadas desta exploracao]

#### 6. Aprendizados gerais da rodada

- O que funcionou bem na forma de explorar:
  - [ex.: usar versao curta do comando primeiro e depois detalhar]
- O que poderia ser melhorado para proximas exploracoes:
  - [ex.: focar em um tipo de repositorio por vez, para nao dispersar]
- Proximo foco recomendado:
  - [ex.: na proxima, olhar so para repositorios com handoff/status bem documentado]

---

## Metainformacao (opcional, mas recomendado)

Use esta secao para registrar mudancas no proprio processo de exploracao.

- Versao do processo de exploracao:
  - v1 - criacao do HISTORICO-EXPLORACAO-REPOS.md
  - v2 - [descrever ajustes futuros no formato ou no fluxo]
- Convencoes:
  - Sempre registrar pelo menos:
    - data,
    - foco,
    - 3-10 repositorios relevantes (se encontrados),
    - 3-7 decisoes concretas.
  - Mesmo quando nada for aproveitado, registrar conclusao:
    - "Nenhuma ideia relevante para o contexto atual. Proximo foco: X."
