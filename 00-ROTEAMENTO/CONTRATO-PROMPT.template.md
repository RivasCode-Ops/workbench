# Template — Cabeçalho de contrato (prompts principais)

Copie o bloco abaixo no topo de todo prompt **principal** com `status: stable` ou `draft`.

```markdown
---
## CONTRATO DO PROMPT

| Campo | Valor |
|-------|-------|
| **ID** | `[ex: 000, B01, QA-SESSAO-UNICA]` |
| **Domínio** | `[00\|10\|20\|30\|40\|50]` |
| **Objetivo** | [1 frase] |
| **Quando usar** | [bullets] |
| **Quando NÃO usar** | [bullets] |
| **Entrada mínima** | [obrigatório] |
| **Contexto opcional** | [útil] |
| **Saída esperada** | [artefato / template] |
| **Critérios de qualidade** | [como validar] |
| **Gate** | [valores] |
| **Escalonamento** | [próximo path se X] |
| **version** | `x.y.z` |
| **status** | `draft` \| `stable` \| `migrated` \| `deprecated` \| `redirected` |
| **criticidade** | `alta` \| `media` \| `baixa` |
| **breaking_change** | `true` \| `false` (se `true` → bump **major** no CHANGELOG) |
| **responsabilidade_que_nao_dilui** | [1 frase — ex.: “nunca planeja código, só orquestra”] |
| **owner** | kit PROMPT |
| **canonical_path** | `dominio/.../arquivo.md` |
| **legacy_path** | `Pasta Legada/arquivo.md` (stub se `migrated`) |
| **last_reviewed_at** | YYYY-MM-DD |
| **eval** | [`00-ROTEAMENTO/EVALS/eval-....md`](../EVALS/eval-....md) ou — |
---

[corpo do prompt]
```

---

## Lifecycle — `status`

| status | Significado |
|--------|-------------|
| `draft` | Em elaboração; não usar em produção interna |
| `stable` | Aprovado; mudança exige CHANGELOG + eval se crítico |
| `deprecated` | Não usar; ver `legacy_path` substituto |
| `redirected` | Arquivo só aponta para outro |
| `planned` | Path futuro em `canonical_path` (só inventário) |
| `migrated` | Conteúdo em `canonical_path`; `legacy_path` = redirect |

---

## Autoridade

| status inventário | Onde editar |
|-------------------|-------------|
| `stable` (não migrado) | `legacy_path` |
| `migrated` | **`canonical_path`** |

Conflito: [`STATUS-DE-AUTORIDADE.md`](./STATUS-DE-AUTORIDADE.md)

---

## Eval obrigatória (prompts críticos)

Lista: [`EVALS/README.md`](./EVALS/README.md)
