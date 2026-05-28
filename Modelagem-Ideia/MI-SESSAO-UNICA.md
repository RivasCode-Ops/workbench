# MI — Sessão única (material pequeno)

---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `MI-SESSAO-UNICA` |
| **Domínio** | `10` |
| **Objetivo** | Ideia bruta → modelo de negócio + orientação (A–G) |
| **Quando usar** | Material ≤ ~2 páginas (texto, recorte, reportagem) |
| **Quando NÃO usar** | Já tem PRD; só código (`20`); due diligence técnica (`40`) |
| **Entrada mínima** | MATERIAL colado + objetivo |
| **Saída esperada** | [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) completo |
| **Gate** | `ESTRUTURAR` \| `COMPLEMENTAR` \| `REFOCAR` \| `ARQUIVAR` |
| **Escalonamento** | Construir → `20/001` ou `000` |
| **version** | `2.1.0` |
| **status** | `stable` |
| **owner** | kit PROMPT |
| **canonical_path** | `10-DESCOBERTA-E-MODELAGEM/mi-sessao-unica.md` |
| **legacy_path** | `Modelagem-Ideia/MI-SESSAO-UNICA.md` ← **editar aqui** |
| **last_reviewed_at** | 2026-05-27 |
| **eval** | [`../00-ROTEAMENTO/EVALS/eval-mi-sessao-unica.md`](../00-ROTEAMENTO/EVALS/eval-mi-sessao-unica.md) |

---

> Executa MI00 → MI04 em **uma resposta** quando o material cabe em ~2 páginas.

Adote [`PERSONALIDADE-CONSULTOR.md`](./PERSONALIDADE-CONSULTOR.md).  
Metodologia: [`COMO-AGIR.md`](./COMO-AGIR.md).  
Saída: [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) **completo** (seções A–G).

---

## CONTEXTO

```
Objetivo:
Restrições:
```

## MATERIAL

```
[COLE AQUI]
```

---

## ORDEM DE EXECUÇÃO (não pular)

1. Espelho do material (A)
2. Extração F/H/? (B)
3. Escolha de modelo + explicação didática (C + D)
4. Modelo preenchido (E)
5. Viabilidade (F)
6. Próximos passos + roteamento (G)
7. Gate final

---

**PROMPT DE INÍCIO:**
> "Tenho esta ideia em material bruto. Atue como consultor Sebrae sênior: extraia, escolha o modelo certo, explique como usar, preencha o quadro e me oriente nos próximos passos."
