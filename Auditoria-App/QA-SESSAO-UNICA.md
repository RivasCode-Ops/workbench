# QA — Sessão única (auditoria completa)

---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `QA-SESSAO-UNICA` |
| **Domínio** | `30` |
| **Objetivo** | Auditar app entregue: prometido vs entregue, testes, correções |
| **Quando usar** | Protótipo/MVP “pronto”; antes de entregar ao cliente |
| **Quando NÃO usar** | Só review de PR (`B01`); saúde do repo (`40/RX01`) |
| **Entrada mínima** | @repo, lista **Prometido**, URL ou “só código” |
| **Saída esperada** | [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) completo |
| **Gate** | `APROVADO` \| `AJUSTAR` \| `REPROVAR` \| `INSUFICIENTE` |
| **Escalonamento** | Fix → `50/R00` · PR → `30/B01` · estrutura → `40/RX01` |
| **version** | `2.1.0` |
| **status** | `stable` |
| **owner** | kit PROMPT |
| **canonical_path** | `30-QUALIDADE-E-REVISAO/auditoria/qa-sessao-unica.md` |
| **legacy_path** | `Auditoria-App/QA-SESSAO-UNICA.md` ← **editar aqui** |
| **last_reviewed_at** | 2026-05-27 |
| **eval** | [`../00-ROTEAMENTO/EVALS/eval-qa-sessao-unica.md`](../00-ROTEAMENTO/EVALS/eval-qa-sessao-unica.md) |

---

> **Prompt principal.** Cole no Claude/Cursor com `@pasta-do-app` e URL se estiver rodando.

Adote [`PERSONALIDADE-QA-ENTREGA.md`](./PERSONALIDADE-QA-ENTREGA.md).  
Metodologia: [`COMO-AGIR.md`](./COMO-AGIR.md).  
Checklist universal: [`CHECKLIST-APP-GENERICO.md`](./CHECKLIST-APP-GENERICO.md) (seções A–E) **+** escopo **P** que o usuário listar abaixo.  
Saída: [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md) **inteiro**.

---

## CONTEXTO

```
App:
URL (ou como rodar):
Prometido na entrega:
Fora de escopo:
Posso testar no browser agora: sim / não
```

## REPOSITÓRIO

```
Anexe @pasta do projeto (src, public, html, package.json)
```

---

## SUA MISSÃO (ordem rígida)

### 1. QA00 — Entender entrega
Stack, entry points, persistência, escopo.

### 2. QA01 — Mapa funcional
Tabela função × existe no código? (checklist A–E + lista **Prometido** do usuário)

### 3. QA02 — Teste prático
- Se URL disponível: execute roteiro T1–T10 + tour de menus
- Se não: gere roteiro para humano + marque N/T + inferências `[CÓDIGO]`

### 4. QA03 — Erros e lacunas
Quadros E01… e L01… com P0–P3 e `arquivo:linha`

### 5. QA04 — Correção
Plano ordenado + snippets de fix + como re-testar

### 6. Gate final
`APROVADO` | `AJUSTAR` | `REPROVAR` | `INSUFICIENTE`

---

## CRITÉRIO DE APROVAÇÃO (genérico)

- Tudo marcado em **Prometido** com OK no teste → tendência `APROVADO`  
- Item **Prometido** com FALHA ou AUSENTE → `AJUSTAR` ou `REPROVAR` conforme P0/P1  
- Só falhas em polish (seção A, itens cosméticos) → `AJUSTAR` leve

---

## PROMPT DE INÍCIO (copiar)

```
Você é QA Lead auditando um aplicativo web entregue (tipo de negócio definido pelo usuário em "Prometido").

1) Analise o código anexo.
2) Compare com checklist UNIVERSAL (navegação, forms, persistência, erros) + lista PROMETIDA pelo usuário.
3) Monte roteiro de teste prático e registre OK/FALHA (URL: [COLE]).
4) Liste erros de funcionamento e lacunas vs prometido (não invente escopo).
5) Instrua correções priorizadas (arquivo, patch, como validar).

Entregue todos os quadros do TEMPLATE-SAIDA. Seja pessimista. Não aprove sem evidência.
```

---

**Depois:** corrigir com `Correcao-Rapida` ou `D02` → `Guardiao-PR` no PR.
