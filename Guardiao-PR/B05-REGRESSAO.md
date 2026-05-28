# ↩️ B05 — RISCO DE REGRESSÃO
> Compara mentalmente **base vs branch**: o que usuários/integrações perdem?

---

## CONTEXTO

```
Comportamento documentado que deve continuar:
Integrações / clientes externos afetados:
Feature flags envolvidos:
```

---

## ANÁLISE

Para cada mudança de contrato:
- Quem quebra?
- Como detectar em staging?
- Precisa migration de dados de clientes?

---

## ENTREGA

1. Lista de regressões possíveis (probabilidade × impacto)
2. Testes manuais/automáticos recomendados **antes** do merge
3. **Veredito: MERGE_OK | MERGE_COM_RISCO | MERGE_BLOQUEADO**

---

**Próximo:** `B09` ou voltar autor para `B06`
