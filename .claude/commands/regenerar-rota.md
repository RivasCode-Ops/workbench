# /regenerar-rota

Objetivo:
Reavaliar o estado atual da demanda, corrigir desvios, consolidar sub-demandas abertas e redefinir a proxima acao do trabalho sem deixar itens importantes incompletos.

Fontes obrigatorias:
- `README.md`
- `CAMINHOS.md`
- `CONTEXT.md`
- `HANDOFF.md`
- `STATUS.md`
- pasta da etapa ativa
- registros recentes ligados a demanda atual

Tarefas:
1. Identificar a demanda principal ativa.
2. Identificar em que etapa ela esta.
3. Listar sub-demandas abertas ou desvios surgidos durante a execucao.
4. Classificar cada sub-demanda como `bloqueadora`, `paralela` ou `descartavel`.
5. Definir se a rota atual deve `continuar`, `voltar uma etapa`, `abrir correcao rapida` ou `abrir diagnostico`.
6. Propor a proxima acao imediata.
7. Indicar o que deve ser atualizado em `STATUS.md` e `HANDOFF.md`.

Tarefas adicionais:
- Verificar "Excecoes recentes" em `STATUS.md`.
- Indicar quais excecoes devem ser promovidas a regra do metodo (atualizando `workflow`, `caminhos` ou `checklists`).

Formato de saida:
- Demanda principal:
- Etapa atual:
- Situacao da rota:
- Sub-demandas abertas:
- Classificacao das sub-demandas:
- Decisao de rota:
- Proxima acao imediata:
- Atualizacoes recomendadas em STATUS/HANDOFF:
