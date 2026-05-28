# 📖 Tutorial — Correção Rápida

## 1. Para quê?

Você encontrou um bug **no seu ambiente**, quer:

1. Reproduzir
2. Achar causa
3. Patch mínimo
4. Validar
5. (Opcional) Commitar

Sem abrir PR, sem B01, sem D00 completo de feature.

---

## 2. Passo a passo no Cursor

1. Cole `R00-CONTEXTO-BUG.md` + preencha (30 segundos)
2. `R01` até reproduzir
3. `R02` causa raiz
4. `R03` implementa fix — anexe `@arquivos`
5. `R04` valida
6. `R05` só se for commitar agora

**Nova conversa** se mudar de bug.

---

## 3. Escalar para outra pasta

| Sinal | Vá para |
|-------|---------|
| Fix vai para PR / precisa review | `Guardiao-PR` B00→B01 |
| Virou feature além do bug | `Projeto Novo` D00→D01 |
| Produção fora | `D11` |
| Bug em vários módulos / refactor | `Projeto Novo` D08→D02 |

---

## 4. Exemplo de sessão (15 min)

```
R00: "filtro de leads retorna 500 quando status=vazio"
R01: reproduzido com curl
R02: causa — validação Zod rejeita string vazia mas UI envia ""
R03: fix — default status=all no backend
R04: curl + teste unitário verde
R05: fix(leads): tratar status vazio como 'all'
```

Ver `EXEMPLOS.md`.
