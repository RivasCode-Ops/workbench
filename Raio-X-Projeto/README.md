# Raio-X Projeto — Diagnóstico técnico da realidade

Pasta para **analisar estrutura já pronta** (código, repo, deploy) e responder:

> *"Como está de verdade? O que precisa de atenção agora?"*

**Não corrige.** **Não implementa.** Entrega **quadros** com critério de dev sênior.

---

## Diferença dos outros kits

| Kit | Pergunta que responde |
|-----|------------------------|
| **Raio-X** (esta pasta) | Como está tecnicamente **hoje**? O que atacar primeiro? |
| `14-TRIAGEM` | Em que **estágio** está (ideia, MVP, prod)? |
| `13-RETROFIT` | **Plano faseado** para corrigir (depois do Raio-X) |
| `12-VALIDADOR` | Pode ir para **produção** sem quebrar? |

**Ordem recomendada:** `RX01` → (opcional `RX02`) → `14-TRIAGEM` → `13-RETROFIT` → agentes por gap.

---

## Quando usar

- [ ] Comprou/herdou projeto e quer visão honesta
- [ ] Antes de investir semanas em refactor
- [ ] Antes de contratar dev ou abrir sprint de dívida
- [ ] Due diligence técnica
- [ ] "Parece pronto" mas você desconfia

## Quando NÃO usar

- Só ideia, sem código → `Projeto Novo/001-DESCOBERTA`
- Bug pontual hoje → `Correcao-Rapida` ou `D02`
- Revisar só um PR → `Guardiao-PR`

---

## Arquivos

| Arquivo | Uso |
|---------|-----|
| `000-ORQUESTRADOR.md` | Escolhe RX01 ou RX02 |
| `RX01-RAIO-X-COMPLETO.md` | Análise profunda (padrão) |
| `RX02-RAIO-X-RAPIDO.md` | Scan em ~15 min |
| `TEMPLATE-SAIDA.md` | Formato dos quadros (referência) |
| `CHEATSHEET.md` | Cola 1 página |

---

## Fluxo

```
RX00 contexto (no próprio RX01/RX02)
     ↓
RX01 ou RX02  →  quadros + nota geral + top 5 ações
     ↓
Decisão: SAUDÁVEL | PRECISA_TRABALHO | RISCO_ALTO
     ↓
14-TRIAGEM → 13-RETROFIT → (agentes 01–12)
```

---

## Gate desta pasta

| Decisão | Significado |
|---------|-------------|
| `SAUDÁVEL` | Pode evoluir com coding normal (Caminho C) |
| `PRECISA_TRABALHO` | Corrigir gaps P0/P1 antes de escalar |
| `RISCO_ALTO` | Não escalar nem prometer prazo sem plano |
| `INSUFICIENTE` | Falta código/acesso — listar o que precisa |

---

Mapa geral: [`../CAMINHOS.md`](../CAMINHOS.md) · Caminho **H** (novo)
