# Eval — R00

| Campo | Valor |
|-------|-------|
| **prompt** | `Correcao-Rapida/R00-CONTEXTO-BUG.md` |
| **version** | `2.1.0` |
| **last_passed** | pending |

## Cenário — Bug tela branca

**Entrada:** stack React, tela branca após login, @App.tsx.

**Saída esperada:**
- Resumo curto
- Próximo passo `R01` ou `ESCALAR` se prod
- Não pede PR review

**Aceite:** [ ] < 1 min de leitura [ ] roteamento R01

## Falhas conhecidas

- Plano de feature nova no mesmo fluxo
- Pular para D11 sem indicar prod
