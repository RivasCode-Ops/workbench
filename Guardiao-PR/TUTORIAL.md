# 📖 Tutorial — Guardião-PR (estilo Bugbot)

## 1. O que é?

Pasta separada do **Projeto Novo** só para:

- Escanear **diff** / PR
- Achar bugs, segurança, regressão
- Sugerir correção mínima
- Bloquear ou liberar merge

Inspirado no **Bugbot** do Cursor/GitHub: automático na cabeça, sistemático no checklist.

---

## 2. Como usar no Cursor

1. Abra o PR no GitHub ou o diff local (`git diff main...HEAD`)
2. Cole `B00-CONTEXTO-DIFF.md` e preencha
3. Anexe arquivos alterados: `@src/auth/login.ts` ou pasta inteira
4. Cole `B01-SCAN-PR-COMPLETO.md`
5. Corrija BLOCKERs → `B08-RE-REVIEW.md` → `B09-GATE-MERGE.md`

**Não use D00/D01 desta pasta** — isso é do Projeto Novo.

---

## 3. Fluxos

### Revisar PR (revisor)

```
B00 → B01 → (B02 segurança se auth/pagamento) → B09
```

### Autor corrigindo após review

```
B00 → B06 → B07 testes → B08 → B09
```

### Hotfix produção

```
B00 → B07-HOTFIX → B06 → B08 → B09
```

---

## 4. Com Projeto Novo junto

| Fase | Pasta |
|------|-------|
| Implementar | Projeto Novo `D00` → `D01` |
| Antes do merge | Guardião `B00` → `B01` → `B09` |
| Incidente | Projeto Novo `D11` + Guardião `B07` |

---

## 5. Formato de achado (padrão)

Todo achado deve ter:

```
🔴 BLOCKER | 🟡 SUGESTÃO | 🟢 NIT
Arquivo:linha — Problema — Fix sugerido — Por que quebra
```

---

Ver `EXEMPLOS.md` para PR preenchido.
