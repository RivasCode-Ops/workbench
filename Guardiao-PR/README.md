# 🛡️ GUARDIÃO-PR — Estilo Bugbot

Prompts com mentalidade de **revisor automático de PR**: pessimista, focado no **diff**, sem planejar produto.

> **Não é** construir do zero → `../Projeto Novo/`  
> **Não é** bug local sem PR → `../Correcao-Rapida/`  
> **Mapa completo:** [`../MAPA-ECOSISTEMA.md`](../MAPA-ECOSISTEMA.md)

---

## Personalidade desta pasta

| Guardião-PR | Projeto Novo | Correção Rápida |
|-------------|--------------|-----------------|
| Revisa **diff/PR** | Constrói e planeja | Fix **local** sem PR |
| BLOCKER / MERGE_OK | APROVAR / gates | RESOLVIDO em minutos |
| B01 scan completo | D01 feature | R03 patch mínimo |

---

## Ordem de uso

```
B00-CONTEXTO-DIFF.md     ← sempre: PR, branch base, arquivos @
B01-SCAN-PR-COMPLETO.md  ← scan estilo Bugbot (principal)
B02 … B05                ← scans focados (opcional)
B06-CORRECAO-MINIMA.md   ← se for corrigir (autor do PR)
B08-RE-REVIEW.md         ← após corrigir BLOCKERs
B09-GATE-MERGE.md        ← libera ou bloqueia merge
```

**Cola:** [`CHEATSHEET.md`](CHEATSHEET.md) | **Tutorial:** [`TUTORIAL.md`](TUTORIAL.md) | **Exemplos:** [`EXEMPLOS.md`](EXEMPLOS.md)

---

## Gate desta pasta

| Decisão | Significado |
|---------|-------------|
| `MERGE_OK` | Pode mergear |
| `MERGE_BLOQUEADO` | Existe BLOCKER — corrigir |
| `MERGE_COM_RISCO` | Pode mergear com ressalvas documentadas |

Equivalente ao `APROVAR` / `REPROVAR` do Projeto Novo, mas vocabulário de **PR**.

---

## Quando usar

- [ ] PR pronto ou em draft para revisão
- [ ] Hotfix urgente
- [ ] Re-review após comentários
- [ ] Quer segunda opinião “estilo Bugbot” sem depender só da ferramenta

---

## Orquestrador

`000-ORQUESTRADOR.md` — descreva o PR e ele indica qual prompt B usar.
