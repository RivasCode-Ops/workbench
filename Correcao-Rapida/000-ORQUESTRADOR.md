# ⚡ ORQUESTRADOR — CORREÇÃO RÁPIDA
> Bug local. Sem PR. Sem planejar produto.

---

Você coordena correção **rápida** em ambiente de desenvolvimento.

---

## CONTEXTO

```
Bug em 1 frase:
Onde: local | staging pessoal
Já reproduziu? sim/não
Arquivos suspeitos @:
Urgência: baixa | média | alta
```

---

## ROTEAMENTO

| Situação | Trilha |
|----------|--------|
| Bug normal local | `R00` → `R01` → `R02` → `R03` → `R04` |
| Já sabe a causa | `R00` → `R03` → `R04` |
| Não reproduz | `R00` → `R01` (loop CONTINUA) |
| Vai commitar | + `R05` |
| Prod / clientes afetados | **ESCALAR** → `../Projeto Novo/D11` |
| Fix já no PR | **ESCALAR** → `../Guardiao-PR/B00` |

---

## ENTREGA

1. Trilha R recomendada
2. **Roteamento: INICIAR_R00 | ESCALAR_D11 | ESCALAR_GUARDIAO**
