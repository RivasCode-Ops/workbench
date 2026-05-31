# Inspirações GitHub — workbench

> Índice geral: [GITHUB-INSPIRACOES-ECOSSISTEMA.md](GITHUB-INSPIRACOES-ECOSSISTEMA.md)  
> Caminhos: [../CAMINHOS.md](../CAMINHOS.md)

workbench responde: *O que foi decidido e qual a direção oficial?* — Markdown, handoffs, kits `00–50`. Repositórios abaixo **reforçam o processo**, não viram segundo servidor.

---

## Skills e fluxo de sprint

| Repo | Tag | O que aproveitar |
|------|-----|------------------|
| [garrytan/gstack](https://github.com/garrytan/gstack) | **Inspirar** | `/office-hours` → `/plan-eng-review` → `/qa` → `/ship` |
| [anthropics/skills](https://github.com/anthropics/skills) | Inspirar | Instalar skills em `.agents/skills/` sem lock-in |
| [garrytan/gstack](https://github.com/garrytan/gstack) `/document-generate` | Inspirar | Doc engineer alinhado a `HANDOFF` / `CONTEXT` |

**Uso recomendado:** copiar **nomes e ordem** das fases para `.claude/commands/` ou rules do Cursor — manter templates em português no workbench.

---

## Qualidade e entrega

| Repo / app | Tag | Relação com kits workbench |
|------------|-----|----------------------------|
| gstack `/review`, `/cso` | Inspirar | Etapas de qualidade / segurança |
| gstack `/careful`, `/freeze`, `/guard` | Inspirar | Hooks de segurança em sessão IA |
| `Raio-X-Projeto/` (local) | — | Manual; Max automatiza overlap |

---

## Não misturar no workbench

| Camada | Onde fica |
|--------|-----------|
| Scan de repo | Max (`max-coding`) |
| Pesquisa web | Cortana |
| FIRE / finanças | FREEDOM |
| Definição de demanda | dLogica |

---

## Integração com ecossistema (4 passos)

1. dLogica define escopo  
2. **workbench** grava decisão (`CONTEXT`, checklists)  
3. Cursor implementa  
4. Max audita repo → findings voltam ao workbench se necessário  

Ver: [guia-ecossistema-analise.md](../../guia-ecossistema-analise.md).
