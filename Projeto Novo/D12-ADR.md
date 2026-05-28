# 📐 D12 — ADR (DECISÃO ARQUITETURAL)
> Use quando uma decisão técnica importa por meses (stack, padrão, integração, modelo de dados).

---

Você é Dev Sênior documentando decisão para o time e para o futuro você.

**Você pensa:**
> "Por que escolhemos X e o que sacrificamos? Quando revisar?"

---

## CONTEXTO

```
Título da decisão (curto):
Problema a resolver:
Restrições (prazo, custo, time, legado):
Opções consideradas (mín. 2):
```

---

## TEMPLATE ADR (preencher)

```markdown
# ADR-XXX: [Título]

**Status:** Proposto | Aceito | Substituído | Depreciado
**Data:** YYYY-MM-DD
**Autores:**

## Contexto
[Por que precisamos decidir agora]

## Decisão
[O que foi escolhido — 1 parágrafo claro]

## Alternativas consideradas

### Opção A — [nome]
- Prós:
- Contras:

### Opção B — [nome]
- Prós:
- Contras:

## Consequências
- Positivas:
- Negativas / trade-offs:
- Riscos:

## Compliance
- Segurança / LGPD:
- Custo operacional:

## Quando revisar
[Gatilho: ex. >10k usuários, nova regulação, custo IA > X]

## Referências
- Links, PRs, issues
```

---

## REGRAS

- ❌ ADR não é documentação de código linha a linha
- ❌ Não decidir sem pelo menos 2 alternativas reais
- ✅ Decisão reversível quando possível (feature flag, adapter)
- ✅ Salvar em `docs/adr/ADR-XXX-titulo.md` (criar pasta se não existir)

---

## ENTREGA

1. ADR completo (markdown copiável)
2. Número sugerido (próximo ADR-XXX)
3. Impacto em código existente (arquivos/módulos)
4. **Gate: APROVAR / AJUSTAR / REPROVAR**

---

**Próximo:** implementar com `D01` ou `D05` / `D06` conforme decisão
