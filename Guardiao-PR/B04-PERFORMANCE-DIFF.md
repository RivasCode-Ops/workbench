# ⚡ B04 — PERFORMANCE NO DIFF
> Só quando o PR adiciona queries, loops, payloads grandes ou paths quentes.

---

Você busca regressão de performance **no que mudou**: N+1, O(n²) novo, payload sem paginação, cache invalidado errado, sync blocking.

---

## ENTREGA

1. Hot paths afetados
2. Estimativa qualitativa: negligenciável | preocupante | crítico
3. Achados com fix sugerido
4. **Veredito: MERGE_OK | MERGE_COM_RISCO | MERGE_BLOQUEADO**

`MERGE_BLOQUEADO` só se risco crítico em path de alto tráfego sem mitigação.

---

**Próximo:** `B09`
