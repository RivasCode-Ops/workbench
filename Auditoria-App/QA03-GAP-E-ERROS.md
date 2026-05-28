# QA03 — Gaps, erros e lacunas

> Consolida QA01 + QA02 em quadros de dev.

**Pré-requisito:** QA02 (ou QA01 com N/T explícitos)

---

## CLASSIFICAÇÃO

| Tipo | Definição |
|------|-----------|
| **ERRO** | Existe mas funciona errado |
| **LACUNA** | Estava em **Prometido** (QA00) e não existe ou está vazio |
| **UX** | Funciona mas confunde (não bloqueia) |
| **TÉCNICO** | Console, performance, segurança |

**Severidade:** P0 bloqueia · P1 core degradado · P2 secundário · P3 cosmético

---

## ENTREGA OBRIGATÓRIA

### Seção 4 — Erros (template)

Cada linha: ID `E01…`, tela, ação, esperado, obtido, sev., causa, `arquivo:linha`

### Seção 5 — Lacunas (template)

Cada linha: ID `L01…`, o que falta, se é CRM mínimo, impacto, sugestão

### Resumo executivo (seção 1)

% core OK = itens **Prometidos** + itens A críticos com OK / total testável

### Gate preliminar

`APROVADO` | `AJUSTAR` | `REPROVAR`

---

**PROMPT DE INÍCIO:**
> "Consolide mapa e testes: liste erros de funcionamento e lacunas em quadros, com severidade P0–P3 e referência ao código."
