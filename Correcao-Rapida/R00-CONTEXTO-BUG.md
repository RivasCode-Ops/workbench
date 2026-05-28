# 🎯 R00 — CONTEXTO DO BUG (rápido)

---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `R00-CONTEXTO-BUG` |
| **Domínio** | `50` |
| **Objetivo** | Contextualizar bug local em 30s e rotear trilha R |
| **Quando usar** | Primeiro passo de correção rápida no localhost |
| **Quando NÃO usar** | Prod fora (`20/D11`); PR review (`30/B00`) |
| **Entrada mínima** | Bug 1 frase + como rodar + @arquivo se houver |
| **Saída esperada** | Resumo + `R01` \| `ESCALAR` |
| **Gate** | `INICIAR_R01` \| `ESCALAR_D11` \| `ESCALAR_GUARDIAO` |
| **Escalonamento** | Ver tabela em [`000-ORQUESTRADOR`](./000-ORQUESTRADOR.md) |
| **version** | `2.1.0` |
| **status** | `stable` |
| **owner** | kit PROMPT |
| **canonical_path** | `50-CORRECAO-RAPIDA/r00-contexto.md` |
| **legacy_path** | `Correcao-Rapida/R00-CONTEXTO-BUG.md` ← **editar aqui** |
| **last_reviewed_at** | 2026-05-27 |
| **eval** | [`../00-ROTEAMENTO/EVALS/eval-r00.md`](../00-ROTEAMENTO/EVALS/eval-r00.md) |

---

> 30 segundos. Sem planejar feature.

---

## CONTEXTO

```
Projeto / pasta:
Stack (1 linha):
Bug (1 frase):
Esperado vs acontece:
Onde vi: tela | API | job | teste
Arquivo(s) suspeito(s) @:
Como rodar: (comando)
```

---

## ENTREGA (curta)

1. Bug reescrito em 1 linha técnica
2. Hipótese inicial (1 frase)
3. Próximo: `R01` ou `R03` se causa óbvia
4. **Gate: R01 / R03 / ESCALAR**

`ESCALAR` = prod fora ou precisa PR review formal.

**Exemplo:** `EXEMPLOS.md` → Exemplo 1
