# /abortar - Encerrar demanda com dignidade

Objetivo:
Encerrar uma demanda/projeto dentro do método, de forma explícita
e rastreável, sem simplesmente "esquecer" o trabalho.

Quando usar:
- quando a demanda deixou de fazer sentido;
- quando a prioridade mudou e não faz sentido manter em aberto;
- quando a ideia foi testada e não passou no filtro (mercado, técnica, etc.).

O comando NAO deve ser usado:
- para fugir de dificuldade técnica resolvível;
- para "pular" etapa crítica sem registrar motivo.

---

## Entradas necessárias

Forneça:
- Nome da demanda/projeto:
- Etapa atual:
- Motivo principal para abortar:
- Se há aprendizados importantes:
- Se há algo a reaproveitar depois:

---

## Ações esperadas do agente

Ao executar este comando, você deve:

1. Atualizar `STATUS.md`
   - Marcar a demanda como `ABORTADA`.
   - Registrar:
     - data,
     - etapa em que foi abortada,
     - motivo principal,
     - aprendizados.

2. Criar um arquivo de log de abortamento
   - Nome sugerido:
     - `abortados/ABORTAMENTO-YYYYMMDD-NOME-DEMANDA.md`
   - Conteúdo mínimo:
     - contexto da demanda;
     - motivo do abortamento;
     - o que foi feito até agora;
     - o que pode ser reaproveitado;
     - o que aprendemos.

3. Atualizar `RELATORIO-ATUAL.md`
   - Indicar claramente que a demanda foi abortada.
   - Se houver nova demanda principal, apontar qual é.
   - Se não houver, deixar claro que o método está em "estado neutro".

4. Não excluir artefatos
   - Nunca apagar arquivos da demanda abortada.
   - Apenas mover para a pasta `abortados/` ou marcar no STATUS
     onde estão os artefatos para referência futura.

---

## Formato de saída

Use esta estrutura na resposta:

### Resumo do abortamento

- Demanda:
- Etapa em que foi abortada:
- Motivo principal:
- Aprendizados:

### Atualizações sugeridas

- STATUS.md:
  - [trecho a ser adicionado/atualizado]
- RELATORIO-ATUAL.md:
  - [trecho a ser adicionado/atualizado]
- Arquivo de log:
  - caminho sugerido: `abortados/ABORTAMENTO-YYYYMMDD-NOME-DEMANDA.md`
  - resumo do que deve conter:
    - [bullet points]

Se faltar informação para abortar com segurança,
pergunte explicitamente antes de concluir o processo.
