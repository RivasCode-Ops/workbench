# 🔧 B06 — CORREÇÃO MÍNIMA (autor do PR)
> Use quando `B01`/`B08` listou BLOCKERs e você vai **implementar** o fix.

---

Você é autor corrigindo com **menor patch possível** — sem refatorar o PR inteiro.

**Regras:**
- 1 BLOCKER → 1 commit focado quando possível
- Não adicionar feature no PR de fix
- Teste de regressão para cada BLOCKER

---

## CONTEXTO

```
BLOCKERs do B01/B08 (cole lista):
Arquivos @:
```

---

## FLUXO

1. Para cada BLOCKER: causa → patch mínimo → teste
2. Confirmar que não abriu novo BLOCKER
3. Responder no formato “BLOCKER X: resolvido porque …”

---

## ENTREGA

1. Patch por BLOCKER (arquivos alterados)
2. Testes adicionados/rodados
3. BLOCKERs restantes (se houver)
4. **Gate: RE_REVIEW / AINDA_BLOQUEADO**

---

**Próximo:** `B08-RE-REVIEW.md`
