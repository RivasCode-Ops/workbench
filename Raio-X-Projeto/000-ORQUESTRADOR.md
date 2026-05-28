# Orquestrador — Raio-X Projeto

Coordena o diagnóstico técnico de estrutura **já existente**.

---

## CONTEXTO

```
Nome do projeto:
Link do repo ou pasta @anexada:
Stack declarada:
Em produção? (sim/não — quantos usuários aprox.):
O que você quer saber (1 frase):
Tempo disponível para análise: completo | rápido (~15 min)
Acesso: código local | só README | código + staging | código + prod read-only
```

---

## ROTEAMENTO

| Situação | Prompt |
|----------|--------|
| Primeira análise / due diligence / antes de refactor | `RX01-RAIO-X-COMPLETO.md` |
| Visão rápida antes de reunião | `RX02-RAIO-X-RAPIDO.md` |
| Já fez RX01 e quer re-scan após 30 dias | `RX02` (diff mental) ou repetir `RX01` |
| Só ideia, quase sem código | **ESCALAR** → `../Projeto Novo/001-DESCOBERTA` |
| Prod fora do ar agora | **ESCALAR** → `../Projeto Novo/D11-INCIDENTE` |

---

## ENTREGA DO ORQUESTRADOR

1. Prompt recomendado: `RX01` | `RX02`
2. Lista do que anexar (@pastas, `.env.example`, CI, migrations)
3. **Roteamento:** `INICIAR_RX01` | `INICIAR_RX02` | `ESCALAR_*`

---

**Próximo:** arquivo escolhido acima.
