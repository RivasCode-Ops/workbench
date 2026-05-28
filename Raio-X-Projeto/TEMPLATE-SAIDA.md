# Template de saída — Raio-X (copiar na resposta)

A IA deve preencher estes quadros **na ordem**. Não pular.

---

## 1. Resumo executivo (5 linhas)

```
Estado geral:
Maior risco hoje:
Maior ponto forte:
Precisa ser trabalhado? (sim/parcial/não) — por quê:
Próximo passo recomendado:
```

---

## 2. Quadro principal — dimensões técnicas

**Legenda status:** 🟢 OK · 🟡 ATENÇÃO · 🔴 CRÍTICO · ⚪ N/A  
**Prioridade:** P0 (agora) · P1 (esta semana) · P2 (este mês) · P3 (backlog)  
**Esforço:** P (pequeno) · M (médio) · G (grande)

| # | Dimensão | Nota 0–10 | Status | Evidência (o que existe / falta) | Precisa atenção? | P | Esf. |
|---|----------|:---------:|:------:|----------------------------------|------------------|---|------|
| 1 | Arquitetura e fronteiras de módulos | | | | | | |
| 2 | Estrutura de pastas e organização | | | | | | |
| 3 | Qualidade de código e padrões | | | | | | |
| 4 | Dados, schema e migrations | | | | | | |
| 5 | APIs, contratos e integrações | | | | | | |
| 6 | Segurança (auth, secrets, input) | | | | | | |
| 7 | Testes e confiança para mudar | | | | | | |
| 8 | CI/CD e pipeline de deploy | | | | | | |
| 9 | Infra, ambientes e config | | | | | | |
| 10 | Observabilidade (logs, alertas) | | | | | | |
| 11 | Performance e escalabilidade | | | | | | |
| 12 | Dependências e supply chain | | | | | | |
| 13 | Automação, filas e jobs | | | | | | |
| 14 | Documentação e DevEx (rodar local) | | | | | | |
| 15 | IA no produto (se aplicável) | | | | | | |

**Nota geral ponderada:** _/10 (média das linhas aplicáveis, peso 2× em itens 🔴)

---

## 3. Quadro — precisa ser trabalhado?

| Pergunta | Resposta | Justificativa (1 linha) |
|----------|----------|-------------------------|
| Estrutura pronta para evoluir sem refactor grande? | sim / parcial / não | |
| Seguro para colocar mais usuários? | sim / parcial / não | |
| Time novo consegue rodar em 1 dia? | sim / parcial / não | |
| Deploy é repetível e reversível? | sim / parcial / não | |
| Dívida técnica bloqueia feature? | sim / parcial / não | |

**Veredito estrutural:** `SAUDÁVEL` | `PRECISA_TRABALHO` | `RISCO_ALTO` | `INSUFICIENTE`

---

## 4. Top 10 — atenção imediata

| # | Item | Dimensão | Impacto se ignorar | Ação concreta |
|---|------|----------|--------------------|---------------|
| 1 | | | | |
| … | | | | |
| 10 | | | | |

---

## 5. O que NÃO mexer (está bom)

| Item | Por que preservar |
|------|-------------------|
| | |

---

## 6. Próximos passos (roteamento)

| Se veredito for… | Faça |
|------------------|------|
| PRECISA_TRABALHO / RISCO_ALTO | `../Projeto Novo/14-TRIAGEM` → `13-RETROFIT` |
| Gap específico | Agente `01`–`12` indicado na coluna "Ação" |
| SAUDÁVEL | `../Projeto Novo/D00` → coding normal |
| Antes de prod | `../Projeto Novo/12-VALIDADOR` |

---

## 7. Gate final

**Decisão:** `SAUDÁVEL` | `PRECISA_TRABALHO` | `RISCO_ALTO` | `INSUFICIENTE`  
**Confiança da análise:** alta | média | baixa (e o que faltou ver)
