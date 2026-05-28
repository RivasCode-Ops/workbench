# ⚡ CORREÇÃO RÁPIDA — Bug local sem PR

Pasta para **consertar bug no seu ambiente** sem ritual de PR, sem scan estilo Bugbot.

> **Não é** construir feature → `../Projeto Novo/`  
> **Não é** revisar PR → `../Guardiao-PR/`  
> **Mapa completo:** [`../MAPA-ECOSISTEMA.md`](../MAPA-ECOSISTEMA.md)

---

## Personalidade

| | Correção Rápida | Projeto Novo | Guardião-PR |
|---|-----------------|--------------|-------------|
| Onde | Local / branch sua | Sessão de dev completa | GitHub PR |
| Velocidade | **5–30 min** | 1h+ | Revisão formal |
| Escopo | 1 bug, 1 fix | Feature, arquitetura | Diff vs base |
| Gate | `RESOLVIDO` / `CONTINUA` | `APROVAR` | `MERGE_OK` |

---

## Fluxo padrão

```
R00 → R01 → R02 → R03 → R04 → (R05 se for commitar)
```

**Cola:** [`CHEATSHEET.md`](CHEATSHEET.md) | **Tutorial:** [`TUTORIAL.md`](TUTORIAL.md)

---

## Quando usar

- [ ] Bug no `localhost` / staging seu
- [ ] Não precisa de code review ainda
- [ ] Quer causa raiz + patch mínimo rápido
- [ ] Vai commitar depois no seu ritmo (sem B01)

## Quando NÃO usar

- Prod fora do ar → `../Projeto Novo/D11` + opcional `../Guardiao-PR/B07`
- PR aberto para revisar → `../Guardiao-PR/B00` → `B01`
- Feature nova → `../Projeto Novo/D00` → `D01`

---

## Gate desta pasta

| Decisão | Significado |
|---------|-------------|
| `RESOLVIDO` | Bug corrigido e validado |
| `CONTINUA` | Precisa mais investigação (volta R01/R02) |
| `ESCALAR` | Virou incidente ou precisa Guardião/Projeto Novo |
