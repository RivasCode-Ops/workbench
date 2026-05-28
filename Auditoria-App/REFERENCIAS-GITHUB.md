# Referências GitHub — teste de app com IA

Literatura e ferramentas que inspiram esta pasta. **Os prompts aqui são para Claude/Cursor** (análise + roteiro prático); as ferramentas abaixo **automatizam** browser quando você quiser ir além.

---

## Automação E2E (browser real)

| Repositório | O que faz | Quando usar depois do QA03 |
|-------------|-----------|----------------------------|
| [zachblume/autospec](https://github.com/zachblume/autospec) | Agente explora URL, gera specs Playwright | Regressão automática pós-correção |
| [jimmytoan/qa-agent](https://github.com/jimmytoan/qa-agent) | Testes em linguagem natural + browser-use | Equipe com API LLM + servidor |
| [Nishu-06/qa-agent-project](https://github.com/Nishu-06/qa-agent-project) | RAG em docs + HTML → casos Selenium | Quando há PRD + HTML estático |

---

## Segurança e qualidade de prompts/IA

| Repositório | O que faz |
|-------------|-----------|
| [OWASP/www-project-ai-testing-guide](https://github.com/OWASP/www-project-ai-testing-guide) | Metodologia de teste de apps com LLM |
| [promptfoo/promptfoo](https://github.com/promptfoo/promptfoo) | Avaliação e red team de prompts (se o app usa IA) |

---

## Testes manuais / checklists (complementar)

| Recurso | Uso |
|---------|-----|
| [Playwright — Best Practices](https://playwright.dev/docs/best-practices) | Seletores, isolamento, asserts |
| [OWASP Web Security Testing Guide](https://owasp.org/www-project-web-security-testing-guide/) | Auth, sessão, XSS em CRM |
| Heurísticas de teste exploratório (SFDPOT, tours) | Base do `QA02-TESTE-PRATICO` |

---

## Como combinar com este kit

```
Auditoria-App (Claude analisa + roteiro manual)
        ↓
Correções: Correcao-Rapida (bug local) | Guardiao-PR (PR)
        ↓
Opcional: autospec / Playwright nos fluxos críticos aprovados no QA02
```

**Nota:** CRM em `file://` ou `localhost` — informe URL no `QA00` para o roteiro de teste bater com sua stack (HTML puro, Vite, Next, etc.).
