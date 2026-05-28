# QA02 — Teste na prática

> Roteiro executável no browser. Se você **não** pode abrir o app, gere o roteiro para o humano executar e cole resultados.

**Pré-requisito:** QA01

---

## MODO A — Você tem URL rodando (ideal)

Execute mentalmente ou peça ao usuário confirmar cada passo. Use exploratório:

1. **Tour de menu** — cada item do menu: abre tela? erro console?
2. **Fluxo feliz principal** — criar → listar → editar → ação core → F5 persiste? (conforme prometido)
3. **Fluxo negativo** — salvar vazio, caracteres especiais, cancelar, voltar
4. **Bordas** — lista vazia, 1 item, muitos itens, duplo clique

Registre: **Esperado** vs **Obtido** — seção 3 do template.

---

## MODO B — Só código (sem browser)

1. Gere roteiro numerado **detalhado** para humano
2. Marque todos os testes como `N/T` até o usuário colar resultados
3. Infira falhas **altamente prováveis** do código (marcar `[CÓDIGO]` na causa)

---

## ROTEIRO MÍNIMO (obrigatório — genérico)

Copiar e preencher. Adicione linhas T11+ para cada item **Prometido**.

| # | Passo | OK / FALHA / N/T |
|---|-------|------------------|
| T1 | App abre na URL sem tela branca | |
| T2 | Navegar todos os itens do menu | |
| T3 | Fluxo principal prometido #1 (descrever) | |
| T4 | Recarregar página — estado aceitável? | |
| T5 | Editar o que T3 criou (se aplicável) | |
| T6 | Excluir/cancelar (se existir na UI) | |
| T7 | Busca/filtro (se existir) | |
| T8 | Segundo fluxo prometido #2 (se houver) | |
| T9 | Login/logout (só se app tiver auth) | |
| T10 | Console sem erro no fluxo T3–T4 | |

---

## ENTREGA

- Seção 3 do template completa
- Screenshots: pedir ao usuário se FALHA (opcional)
- **Gate:** `AVANÇAR_QA03` | `PARAR_P0` (core quebrado)

---

**PROMPT DE INÍCIO:**
> "Monte e execute o roteiro de teste prático deste app. Para cada passo: esperado, obtido, OK ou FALHA. Use a URL [X] ou o código anexo."
