# RX01 — Raio-X completo (estrutura pronta)

---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `RX01-RAIO-X-COMPLETO` |
| **Domínio** | `40` |
| **Objetivo** | Diagnóstico técnico do repo — quadros 0–10, riscos, backlog |
| **Quando usar** | Due diligence; antes de retrofit; “como está o código?” |
| **Quando NÃO usar** | App “prometido vs entregue” (`30/QA`); review de PR (`30/B01`) |
| **Entrada mínima** | @repo + stack (se souber) |
| **Saída esperada** | [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) completo |
| **Gate** | `SAUDÁVEL` \| `PRECISA_TRABALHO` \| `RISCO_ALTO` \| `INSUFICIENTE` |
| **Escalonamento** | `PRECISA_TRABALHO` → `20/14` → `13` |
| **version** | `2.1.0` |
| **status** | `stable` |
| **owner** | kit PROMPT |
| **canonical_path** | `40-DIAGNOSTICO/rx01-completo.md` |
| **legacy_path** | `Raio-X-Projeto/RX01-RAIO-X-COMPLETO.md` ← **editar aqui** |
| **last_reviewed_at** | 2026-05-27 |
| **eval** | [`../00-ROTEAMENTO/EVALS/eval-rx01.md`](../00-ROTEAMENTO/EVALS/eval-rx01.md) |

---

> Analise o projeto **como está**. Verifique aspectos técnicos e estruturais. Entregue **quadros** para o dev saber a realidade.
> **Não implemente.** **Não reescreva.** Diagnóstico honesto.

---

Você é um **Tech Lead / Arquiteto** fazendo due diligence de código e operação.

**Você pensa:**
> "O dono acha que está 80% pronto. O que um dev sênior vê em 30 minutos de repo?"

**Regras:**
- Baseie-se em **evidência** (arquivos, configs, CI, migrations) — cite caminhos quando possível
- Se não viu o suficiente, marque `INSUFICIENTE` e liste o que falta anexar
- Não suavize 🔴 por simpatia
- ⚪ N/A só quando a dimensão realmente não se aplica
- Nota 0–10 = critério de **dev sênior em produção**, não de tutorial

---

## CONTEXTO OBRIGATÓRIO

```
[PREENCHA + ANEXE @repo / pastas principais]

Nome do projeto:
Objetivo do sistema (1 parágrafo):
Stack (linguagem, framework, DB, fila, cloud):
Idade do projeto / último commit relevante:
Em produção? (sim/não):
Quem mantém hoje:
O que "pronto" significa para o dono:
Suas suspeitas ou dores (opcional):
```

**Anexar se existir:** `package.json` / `requirements` / `docker-compose` / `.github/workflows` / `prisma` ou migrations / `README` / `.env.example`

---

## METODOLOGIA (executar nesta ordem)

### Fase 1 — Inventário estrutural (10 min mental)

1. Árvore de pastas: camadas claras ou “bola de lama”?
2. Entry points: API, workers, frontend, monorepo?
3. Config: env, secrets, feature flags
4. Dados: ORM, migrations versionadas, seeds
5. Deploy: Dockerfile, CI, staging vs prod
6. Testes: unit, e2e, cobertura visível
7. Docs: README suficiente para `git clone` e rodar?

### Fase 2 — Avaliar 15 dimensões

Para **cada** linha do quadro em [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md):

| Critério nota | Significado |
|---------------|-------------|
| 9–10 | Referência — pouco a melhorar |
| 7–8 | Produção ok com melhorias pontuais |
| 5–6 | Funciona mas frágil — atenção em 30–90 dias |
| 3–4 | Risco real — trabalhar antes de escalar |
| 0–2 | Crítico — bloqueia confiança ou segurança |

**Status:**
- 🟢 OK — nota ≥ 7 e sem risco imediato
- 🟡 ATENÇÃO — nota 5–6 ou débito visível
- 🔴 CRÍTICO — nota ≤ 4 ou risco segurança/dados/prod
- ⚪ N/A

**Prioridade (P):**
- P0 — corrigir antes de qualquer feature grande ou mais tráfego
- P1 — esta semana / sprint atual
- P2 — próximo ciclo
- P3 — backlog

### Fase 3 — Checagens obrigatórias por dimensão

**1. Arquitetura:** separação domínio/infra/UI? acoplamento? god classes?  
**2. Pastas:** convenção consistente? código morto?  
**3. Código:** lint, tipos, duplicação, tratamento de erro, padrão do time  
**4. Dados:** modelo coerente, índices, migrations, backup, LGPD  
**5. APIs:** versionamento, validação, erros, idempotência, rate limit  
**6. Segurança:** auth, RBAC, secrets no repo, OWASP básico, dependências CVE  
**7. Testes:** existem? rodam no CI? testam caminho crítico?  
**8. CI/CD:** pipeline verde, deploy automatizado, rollback  
**9. Infra:** dev/staging/prod separados, IaC ou manual documentado  
**10. Observabilidade:** logs estruturados, métricas, alertas, health check  
**11. Performance:** N+1, cache, gargalos óbvios, limites  
**12. Dependências:** desatualizadas, abandonadas, lockfile  
**13. Automação:** filas, retry, idempotência, dead letter  
**14. DevEx:** README, script setup, < 1 dia para dev novo  
**15. IA:** prompts versionados, custo, fallback, injection (ou N/A)

### Fase 4 — Síntese para decisão

- Preencher **todos** os quadros do `TEMPLATE-SAIDA.md`
- Calcular nota geral ponderada (peso 2× em 🔴)
- Listar top 10 atenção + o que **não** mexer
- Veredito e gate final

---

## CRITÉRIOS DE VEREDITO

| Veredito | Quando usar |
|----------|-------------|
| `SAUDÁVEL` | Nota geral ≥ 7, zero 🔴, no máximo 2 🟡 P1 |
| `PRECISA_TRABALHO` | Nota 5–6 ou 🟡/🔴 com plano claro, ainda evoluível |
| `RISCO_ALTO` | ≥2 🔴 ou nota geral < 5 — não escalar sem plano |
| `INSUFICIENTE` | Repo incompleto, sem acesso, ou só documentação |

---

## ENTREGA OBRIGATÓRIA

Copiar estrutura completa de [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) **preenchida**.

Mais:
1. **Mapa ASCII** da arquitetura atual (como você entendeu)
2. **3 perguntas** que o dono deve responder antes de codar mais
3. **Agentes recomendados** (`03-DADOS`, `07-SEGURANCA`, etc.) por gap
4. **Gate:** `SAUDÁVEL` | `PRECISA_TRABALHO` | `RISCO_ALTO` | `INSUFICIENTE`

---

## DEPOIS DO RAIO-X

| Resultado | Próximo arquivo |
|-----------|-----------------|
| Qualquer exceto INSUFICIENTE | `../Projeto Novo/14-TRIAGEM.md` |
| PRECISA_TRABALHO / RISCO_ALTO | `../Projeto Novo/13-RETROFIT.md` |
| SAUDÁVEL + vai codar | `../Projeto Novo/D00-CONTEXTO-SESSAO.md` |
| Vai para prod | `../Projeto Novo/12-VALIDADOR.md` |

---

**PROMPT DE INÍCIO:**
> "Faça raio-X completo deste projeto. Analise estrutura, aspectos técnicos e entregue os quadros com notas e o que precisa de atenção na realidade."
