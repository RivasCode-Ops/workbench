# 📎 B00 — CONTEXTO DO DIFF / PR
> **Sempre primeiro** nesta pasta. Equivalente ao D00, mas só para revisão/correção.

---

Você prepara o escaneamento estilo Bugbot: escopo = **apenas o que mudou**.

**Você pensa:**
> "Qual o delta? O que o autor diz que mudou vs o que o diff realmente muda?"

---

## CONTEXTO (preencha)

```
PR / branch:
Base: main | develop | release/x
Título e objetivo do PR (1–2 frases):
Arquivos no diff (@anexar ou listar):
Linhas aproximadas alteradas:
Áreas sensíveis no diff? auth | pagamento | PII | migration | fila | IA
Comportamento que deve permanecer igual:
Testes rodaram? (sim/não — qual comando)
```

---

## O QUE FAZER (sem corrigir ainda)

1. Listar arquivos do diff e classificar risco por arquivo (`BAIXO` | `MÉDIO` | `ALTO`)
2. Identificar **superfície de mudança** (APIs públicas, schema, config, env)
3. Listar **5 perguntas** que o scan B01 deve responder
4. Confirmar se falta contexto (testes, spec, ticket)

---

## REGRAS

- ❌ Não escrever código de feature nova
- ❌ Não expandir escopo do PR
- ✅ Assumir que o diff pode estar errado até provar o contrário

---

## ENTREGA

1. Resumo do delta
2. Mapa de risco por arquivo
3. Perguntas para o scan
4. **Gate: ESCANEAR / AJUSTAR_CONTEXTO / ABORTAR** (ABORTAR = PR gigante demais — pedir split)

---

**Próximo:** `B01-SCAN-PR-COMPLETO.md` (ou `B07` se hotfix)
