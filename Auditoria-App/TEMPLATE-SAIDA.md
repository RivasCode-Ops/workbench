# Template de saída — Auditoria de App

---

## 1. Resumo executivo

```
App:
URL / como rodar:
Stack detectada:
Veredito: APROVADO | AJUSTAR | REPROVAR | INSUFICIENTE
% itens prometidos OK: _/_
Maior bloqueio:
```

---

## 2. Mapa funcional (prometido vs entregue)

| Módulo | Funcionalidade | No código? | Teste prático | Status | Obs |
|--------|----------------|:----------:|:-------------:|:------:|-----|
| [área] | [função prometida 1] | sim/não | OK/FALHA/N/T | 🟢🟡🔴 | |
| [área] | [função prometida 2] | | | | |
| … | (lista do QA00) | | | | |

**Legenda teste:** OK · FALHA · N/T (não testado) · AUS (não existe)

---

## 3. Roteiro de teste executado

| # | Passo | Resultado esperado | Resultado real | Status |
|---|-------|-------------------|----------------|--------|
| 1 | Abrir app, login | | | |
| 2 | | | | |

---

## 4. Erros e falhas de funcionamento

| ID | Tela | Ação do usuário | Esperado | Obtido | Sev. | Causa provável | Arquivo/ref |
|----|------|-----------------|----------|--------|------|----------------|-------------|
| E01 | | | | | P0/P1/P2 | | |

---

## 5. Lacunas (falta no projeto)

| ID | O que falta | Estava prometido? | Impacto | Sugestão |
|----|-------------------|---------|----------|
| L01 | sim/não | | |

---

## 6. Instruções de correção (ordenadas)

| Ordem | ID | O que fazer | Onde | Como validar depois |
|-------|-----|-------------|------|---------------------|
| 1 | E01 | | `path:linha` | passo # do roteiro |

---

## 7. Opcional — script Playwright (fluxos P0)

```javascript
// Gerar só para fluxos críticos que passaram manualmente ou que falharam (regressão)
```

---

## 8. Gate final

**Decisão:** `APROVADO` | `AJUSTAR` | `REPROVAR` | `INSUFICIENTE`  
**Confiança:** alta | média | baixa — o que faltou testar
