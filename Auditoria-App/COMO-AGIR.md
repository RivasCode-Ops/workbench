# Como o agente age — auditoria genérica de app entregue

Leia isto antes de usar os prompts `QA*`.

---

## 1. Por que NÃO é “só CRM”

Na mensagem anterior o exemplo era **CRM** porque você citou “app CRM HTML”.  
O método, porém, é o mesmo para **qualquer** software web entregue:

- E-commerce, agenda, ERP leve, painel admin, landing com formulário, protótipo React, etc.

**O que define o escopo não é esta pasta — é você**, no campo:

> **“Prometido na entrega”** (lista do que deveria funcionar)

O checklist fixo só cobre **qualidade universal** (menu funciona, form salva, não quebra no F5, etc.).

---

## 2. Papel do agente (personalidade)

Ele atua como **QA Lead de entrega**:

- Pessimista onde importa (não aprova “porque compilou”)
- Baseado em **evidência** (código + teste, não achismo)
- Separa: **bug** vs **lacuna de escopo** vs **confusão de UX**
- **Não reescreve** o app — indica correção mínima e como re-testar

Voz detalhada: [`PERSONALIDADE-QA-ENTREGA.md`](./PERSONALIDADE-QA-ENTREGA.md)

---

## 3. As 6 fases (o que acontece em cada uma)

### Fase 0 — Você fornece contexto

| Você entrega | Para quê |
|--------------|----------|
| `@pasta` do projeto | Ler HTML/JS/rotas/componentes |
| Como rodar + URL | Teste prático no browser |
| Lista **prometida** | Critério de “falta algo” |
| Fora de escopo | Evitar cobrar o que nunca foi vendido |

Sem “prometido”, o agente só audita **qualidade genérica** — não “falta módulo X”.

---

### Fase 1 — QA00: entender a entrega

Identifica:

- Tipo: HTML puro, SPA, híbrido
- Onde começa (index, rotas)
- Onde os dados vivem (API, localStorage, mock, nenhum)

**Saída:** escopo auditável em poucas linhas.

---

### Fase 2 — QA01: mapa funcional (código)

Varre código e monta tabela:

| Funcionalidade | Existe no código? | Evidência (arquivo) |
|----------------|-------------------|---------------------|

Fontes:

1. Seção **P** do checklist — o que **você** prometeu  
2. Seção **A–E** — universal (navegação, forms, persistência…)  
3. Suspeitas: botão sem handler, link `#`, TODO, fetch sem tratamento de erro

**Ainda não** diz se funciona no browser — só se **está implementado**.

---

### Fase 3 — QA02: teste na prática

Monta roteiro **clique a clique**:

| # | Passo | Esperado | Obtido | OK / FALHA / N/T |

- **Com URL:** descreve o que testaria (ou você executa e cola resultados)  
- **Sem URL:** roteiro para humano + marca N/T + inferências `[CÓDIGO]` quando óbvio

Tour obrigatório: **cada item de menu** + **fluxo principal prometido** (ex.: “cadastrar item e ver na lista”).

---

### Fase 4 — QA03: erros e lacunas (quadros)

**Erro (E01…):** existe mas **funciona errado**  
**Lacuna (L01…):** estava no **prometido** e **não existe** ou está vazio  
**Severidade:** P0 bloqueia uso · P1 fluxo principal · P2 secundário · P3 visual

Preenche [`TEMPLATE-SAIDA.md`](./TEMPLATE-SAIDA.md).

---

### Fase 5 — QA04: instruir correção

Para cada P0/P1:

1. O que mudar (comportamento correto)  
2. Onde (`caminho:linha` ou componente)  
3. Snippet ou diff sugerido (patch mínimo)  
4. Qual passo do QA02 roda de novo para validar  

Encaminha: bug pontual → `Correcao-Rapida` · PR → `Guardiao-PR`.

---

### Fase 6 — Gate final

| Gate | Significado |
|------|-------------|
| `APROVADO` | Prometido core ok; só detalhes |
| `AJUSTAR` | P1 abertos — usar com cuidado |
| `REPROVAR` | P0 ou core prometido quebrado |
| `INSUFICIENTE` | Falta repo, URL ou lista do prometido |

---

## 4. O que o agente NÃO faz

- Não inventa requisitos que você não listou  
- Não exige “pipeline de vendas” se você entregou um catálogo  
- Não substitui teste automatizado em CI (complementa; ver `REFERENCIAS-GITHUB.md`)  
- Não implementa tudo sozinho sem você pedir (só instrui; você ou outro prompt codam)

---

## 5. Diagrama

```
[Você: prometido + @repo + URL]
           │
           ▼
    ┌──────────────┐
    │ QA00 contexto │
    └──────┬───────┘
           ▼
    ┌──────────────┐     CHECKLIST A–E (genérico)
    │ QA01 código  │  +  PROMETIDO P1…Pn (seu)
    └──────┬───────┘
           ▼
    ┌──────────────┐
    │ QA02 teste   │ → OK / FALHA / N/T
    └──────┬───────┘
           ▼
    ┌──────────────┐
    │ QA03 quadros  │ → erros + lacunas
    └──────┬───────┘
           ▼
    ┌──────────────┐
    │ QA04 correção │
    └──────┬───────┘
           ▼
      GATE FINAL
```

---

## 6. Prompt único vs fases

| Modo | Quando |
|------|--------|
| `QA-SESSAO-UNICA` | Uma conversa, projeto médio |
| `QA00` → `QA04` | Projeto grande ou equipe dividindo etapas |

Mesma lógica nos dois casos.
