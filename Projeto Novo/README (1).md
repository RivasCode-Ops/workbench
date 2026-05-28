# 🔧 PROJETO LEGADO — Como usar

Sistema para recuperar projetos construídos fora de ordem, com dívida técnica ou arquitetura fraca.

**Filosofia:** não reconstruir. Corrigir, completar e fortalecer.

**Cola:** [`CHEATSHEET.md`](CHEATSHEET.md) | **Exemplos:** [`EXEMPLOS.md`](EXEMPLOS.md)

---

## ORDEM OBRIGATÓRIA

```
14-TRIAGEM.md    ← SEMPRE primeiro — classifica estágio e trilha
13-RETROFIT.md   ← plano faseado e lista de agentes 01–12
```

Depois: agentes **01–12** desta pasta, na ordem que o Retrofit indicar.  
Rotina diária: **Trilha B** (`D00`–`D12` em `CODING-DIARIO.md`).

---

## FLUXO

```
        14-TRIAGEM
              │
    ┌─────────┼─────────┐
    ▼         ▼         ▼
  IDEIA    RASCUNHO   MVP/PROD/LEGADO
    │         │              │
    ▼         ▼              ▼
 001/002   001/002      13-RETROFIT
 (Trilha A)              │
                         ▼
                   gaps → 01…12
                         │
                         ▼
                   D00…D12 (diário)
```

---

## QUANDO USAR

- Projeto existe mas está bagunçado
- Começou sem planejamento
- Medo de deploy / sem testes
- Agentes 01–12 foram pulados
- Prod instável → `D11-INCIDENTE` **antes** de refactor grande

---

## ERROS COMUNS

| Situação | Errado | Certo |
|----------|--------|-------|
| Só ideia | Retrofit | `001-DESCOBERTA` |
| Prod crítico | Architect do zero | `D11` → estabilizar → `13` |
| MVP com gap de dados | UX primeiro | `03-DADOS` (Retrofit indica) |

---

## REGRA FUNDAMENTAL

**Sem triagem (14), você não sabe onde está.**  
**Sem retrofit (13), você corrige aleatório.**
