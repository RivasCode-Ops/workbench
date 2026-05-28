# Mapa de agentes — Pojeto Antigo ↔ Projeto Novo

Use esta tabela para não acionar o agente errado.

---

## Nesta pasta (Pojeto Antigo)

| Arquivo | Função | Gate / decisão |
|---------|--------|----------------|
| `14-TRIAGEM.md` | Redirect → **Projeto Novo/14** | — |
| `13-RETROFIT.md` | Redirect → **Projeto Novo/13** | — |
| `12-VALIDADOR.md` | Redirect → **Projeto Novo/12** | — |
| `D01-IMPLEMENTACAO-LEGADO.md` | Atalho (prefira D00+D01) | IMPLEMENTAR / SIMPLIFICAR / BLOQUEAR |
| `15-IMPLEMENTACAO.md` | ⚠️ Redirecionamento → `D01-IMPLEMENTACAO-LEGADO.md` | — |

---

## Equivalentes no Projeto Novo

| Pojeto Antigo | Projeto Novo | Observação |
|---------------|--------------|------------|
| `14-TRIAGEM.md` | `14-TRIAGEM.md` | Mesmo papel |
| `13-RETROFIT.md` | `13-RETROFIT.md` | Mesmo papel |
| `D01-IMPLEMENTACAO-LEGADO.md` | `D01-FEATURE.md` | Prefira D01 + `D00` no kit novo |
| `12-VALIDADOR.md` | `12-VALIDADOR.md` | Mesmo papel |
| — | `15-GENERATIVO.md` | **Só** para produto com LLM/RAG |
| — | `000-ORQUESTRADOR.md` | Sequência completa 00–12 |
| — | `D00`–`D13` | Coding diário |
| — | `10-PROMPTOPS.md` | Operação de IA em prod |

---

## Agentes acionados pelo Retrofit (só no Projeto Novo)

| Gap (Retrofit) | Arquivo |
|----------------|---------|
| Arquitetura | `002-ARCHITECT.md` |
| Dados | `03-DADOS.md` |
| Infra | `04-INFRAESTRUTURA.md` |
| Automação | `05-AUTOMACAO.md` |
| UX | `06-UX.md` |
| Segurança | `07-SEGURANCA.md` |
| Observabilidade | `08-OBSERVABILIDADE.md` |
| Financeiro | `09-FINANCEIRO.md` |
| IA operacional | `10-PROMPTOPS.md` |
| Growth | `11-GROWTH.md` |
| Ideia sem validação | `001-DESCOBERTA.md` |
| Negócio (opcional) | `00-NEGOCIO.md` |
| Estratégia | `01-ESTRATEGICO.md` |
| Processos | `02-PROCESSOS.md` |

---

## Kits paralelos (pasta PROMPT)

| Kit | Uso |
|-----|-----|
| [Correcao-Rapida](../Correcao-Rapida/) | Bug local R00–R04 |
| [Guardiao-PR](../Guardiao-PR/) | Revisão de PR B00–B09 |
