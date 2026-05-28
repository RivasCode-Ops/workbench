# Workflow

- Sempre classificar a demanda antes de propor implementacao.
- Em caso de duvida, direcionar para `00-ROTEAMENTO`.
- Evitar criar novos arquivos com funcao duplicada.
- Ao revisar estrutura antiga, sugerir: manter, fundir, arquivar ou renomear.

## Foco e desvios

- Sempre que surgir uma sub-demanda relevante durante uma etapa, registrar em `STATUS.md` como desvio de foco.
- Para cada desvio, decidir e registrar o tipo: `bloqueador` (resolve antes de seguir) ou `paralelo` (pode ficar estacionado).
- Nunca abandonar a demanda principal sem registrar:
  - em que etapa ela parou;
  - qual sub-demanda foi aberta;
  - qual e a condicao de retorno.

## Excecoes e ajustes de rota

Principio:
Excecoes nao ficam so na conversa; tudo que for excecao relevante deve ser registrado e, se fizer sentido, incorporado como regra do metodo.

Quando considerar algo uma excecao relevante:
- quando uma demanda real obrigar a mudar a ordem padrao das etapas;
- quando uma regra atual gerar retrabalho ou confusao;
- quando surgir um tipo de caso que se repete fora do fluxo padrao.

Procedimento obrigatorio:
1. Registrar a excecao em `STATUS.md` na secao "Excecoes recentes".
2. Decidir se e:
   - pontual (so para esse caso), ou
   - estrutural (deve virar regra do metodo).
3. Se for estrutural:
   - atualizar este `workflow.md` com a nova regra ou ajuste;
   - se necessario, ajustar `CAMINHOS.md` e o `prompt.md` da etapa impactada.
4. Na proxima sessao, sempre ler as excecoes recentes antes de comecar uma nova rodada de trabalho no mesmo projeto.

Regra de ouro:
Nenhuma excecao que deu certo fica so na memoria da conversa; ela vira texto em algum arquivo do metodo (`workflow`, `checklist`, `prompt`, `STATUS` ou `MIGRACAO`).
