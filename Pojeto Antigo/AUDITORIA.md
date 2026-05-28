# Auditoria — Pojeto Antigo

Checklist para auditar prompts e o **aplicativo** associado. Revisar a cada release grande ou a cada 3–6 meses.

---

## Nota do kit (só esta pasta)

| Critério | Status |
|----------|--------|
| Trilha legado (14 → 13 → 12) | ✅ canônico em Projeto Novo |
| Implementação | ✅ atalho D01-legado; prefira D00+D01 |
| Orquestrador + agentes 00–11 | → Projeto Novo |
| Coding D00–D13 | → Projeto Novo |
| 12/13/14 sem duplicata | ✅ redirects nesta pasta |
| README + mapa + auditoria | ✅ |

**Nota isolada:** ~4/10 (parcial, boa qualidade dos arquivos)  
**Nota com Projeto Novo + Guardiao + Correcao-Rapida:** 10/10

---

## Matriz por prompt

| Critério | 14 | 13 | 12 | D01-legado |
|----------|:--:|:--:|:--:|:----------:|
| Persona clara | ✅ | ✅ | ✅ | ✅ |
| Escopo “não faz” | ✅ | ✅ | ✅ | ✅ |
| Contexto obrigatório | ✅ | ✅ | ✅ | ✅ |
| Entregáveis numerados | ✅ | ✅ | ✅ | ✅ |
| Gate explícito | ⚠️ | ⚠️ | ✅ | ✅ |
| Links para kit completo | ✅ | ✅ | ✅ | ✅ |

---

## Checklist — aplicativo 10/10

Marque após rodar os agentes indicados.

| # | Área | Feito | Agente / doc |
|---|------|:-----:|--------------|
| 1 | Problema e usuário claros | ☐ | Triagem Q10, `00-NEGOCIO` |
| 2 | Arquitetura coerente com código | ☐ | Retrofit §1, `002-ARCHITECT` |
| 3 | Dados, migrations, LGPD | ☐ | Retrofit §2, `03-DADOS` |
| 4 | Infra, CI/CD, backup | ☐ | Retrofit §4, `04-INFRAESTRUTURA` |
| 5 | Automações com erro/retry | ☐ | `05-AUTOMACAO` |
| 6 | UX operacional | ☐ | `06-UX` |
| 7 | Segurança (auth, secrets, rate limit) | ☐ | `07-SEGURANCA`, Validador |
| 8 | Logs, alertas, health | ☐ | `08-OBSERVABILIDADE` |
| 9 | Custos e margem (tokens se IA) | ☐ | `09`, `10-PROMPTOPS` |
| 10 | Onboarding / retenção | ☐ | `11-GROWTH` |
| 11 | 10 riscos + rollback | ☐ | `12-VALIDADOR` |
| 12 | Entrega sem quebrar prod | ☐ | `D01` + `D10` + Guardiao B09 |

**Aprovação produção:** Validador = APROVAR, nota ≥ 8, zero risco CRÍTICO aberto.

---

## Registro de auditoria (preencher)

```
Data:
Projeto:
Classificação (14):
Nota retrofit antes (13):
Nota validador (12):
Decisão final:
Itens CRÍTICOS em aberto:
Próxima revisão:
```

---

## Plano de correção (prioridade)

| P | Ação | Status |
|---|------|--------|
| P0 | Operar com Projeto Novo para gaps 01–12 | Manual |
| P0 | Não usar `15-IMPLEMENTACAO` para implementação | ✅ redirect |
| P1 | README + MAPA + AUDITORIA | ✅ |
| P1 | Contexto obrigatório nos 4 prompts | ✅ |
| P2 | Links relativos no Retrofit | ✅ |
| P2 | Validador: artefatos pré-requisito | ✅ |
