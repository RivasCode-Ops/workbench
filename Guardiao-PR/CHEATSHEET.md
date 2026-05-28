# ⚡ Guardião-PR — Cola

| Situação | Arquivo |
|----------|---------|
| Qualquer revisão | `B00` → `B01` |
| Só lógica/edge cases | `B02` |
| Auth, injection, secrets | `B03` |
| N+1, performance no diff | `B04` |
| Risco de regressão | `B05` |
| Autor vai corrigir | `B06` |
| Hotfix prod | `B07` |
| Já corrigiu BLOCKER | `B08` |
| Liberar merge? | `B09` |
| Não sabe qual usar | `000-ORQUESTRADOR` |

```
Padrão:  B00 → B01 → B09
Hotfix:  B00 → B07 → B06 → B08 → B09
```

**Construir feature?** → `../Projeto Novo/D00`

Tutorial: `TUTORIAL.md`
