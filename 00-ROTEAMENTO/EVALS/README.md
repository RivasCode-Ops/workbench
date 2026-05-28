# Evals mínimas — prompts críticos

**Objetivo:** regressão manual/semiautomática após mudança de prompt.  
**Regra:** alterou prompt `stable` listado abaixo → rode a eval e atualize `last_passed` no arquivo.

| Eval | Prompt | legacy_path |
|------|--------|-------------|
| [eval-000](./eval-000-orquestrador.md) | 000 | `Projeto Novo/000-ORQUESTRADOR.md` |
| [eval-mi](./eval-mi-sessao-unica.md) | MI-UNICA | `Modelagem-Ideia/MI-SESSAO-UNICA.md` |
| [eval-rx01](./eval-rx01.md) | RX01 | `Raio-X-Projeto/RX01-RAIO-X-COMPLETO.md` |
| [eval-r00](./eval-r00.md) | R00 | `Correcao-Rapida/R00-CONTEXTO-BUG.md` |
| [eval-b01](./eval-b01.md) | B01 | `Guardiao-PR/B01-SCAN-PR-COMPLETO.md` |
| [eval-qa](./eval-qa-sessao-unica.md) | QA-UNICA | `Auditoria-App/QA-SESSAO-UNICA.md` |
| [eval-d00-d02-flow](./eval-d00-d02-flow.md) | D00→D01/D02 | `20/04-coding-diario/` (piloto) |

---

## Formato de cada eval

1. **Cenário de entrada** (mínimo)
2. **Saída esperada** (alto nível)
3. **Falhas conhecidas** (não regressar)
4. **Critérios de aceite** (checkbox)
5. `last_passed:` data ou `pending`

---

## Promoção de versão

| De | Para | Exige |
|----|------|-------|
| `draft` | `stable` | eval passou + CHANGELOG |
| `stable` | bump patch | eval passou |
| `stable` | bump minor/major | eval + revisão CONTRATO domínio |
