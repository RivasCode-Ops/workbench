# ✔️ R04 — VALIDAR
> Provar que o bug morreu e nada óbvio quebrou.

---

## CHECKLIST RÁPIDO

- [ ] Reprodução do R01 agora **passa**
- [ ] Comando de teste relacionado (se existir)
- [ ] Caminho feliz adjacente (smoke 1 min)
- [ ] Sem novo erro no console/log

---

## ENTREGA

1. Como validou (comandos / passos)
2. Resultado
3. Teste de regressão adicionado? (sim/não — ok se não para typo trivial)
4. **Causa raiz** (1 frase)
5. **Gate: RESOLVIDO | CONTINUA | ESCALAR**
6. **Decisão de continuidade** (obrigatório se `RESOLVIDO`):

| Decisão | Quando |
|---------|--------|
| `encerrar` | Fix só local, sem PR |
| `abrir-pr` | → `R05` + `30/B00` → `B01` |
| `debito-tecnico` | Workaround; descrever issue |
| `escalar-incidente` | → `20/D11` |

| Gate | Quando |
|------|--------|
| `RESOLVIDO` | Bug ok + decisão de continuidade definida |
| `CONTINUA` | Ainda falha → R02 ou R03 |
| `ESCALAR` | Precisa PR review → Guardião; prod → D11 |

---

**Próximo:** `R05` se commit | ou abrir PR depois com `../Guardiao-PR/B01`
