# Checklist genérico — qualquer app web entregue

Use no `QA01` e `QA02`. Válido para HTML, SPA, dashboard, portal, e-commerce, CRM, etc.

**Regra:** o que é **específico do seu app** vem do bloco **“Prometido na entrega”** (QA00) — não desta lista.

---

## A. Universal (todo app web)

| # | Verificar |
|---|-----------|
| A1 | App abre sem tela branca / erro fatal |
| A2 | Menu e links — cada item leva a tela real |
| A3 | Botões e ações têm efeito (não mortos) |
| A4 | Formulários — validação, submit, feedback de erro |
| A5 | Navegação voltar / refresh (F5) — comportamento aceitável |
| A6 | Estados vazios (lista sem itens) tratados |
| A7 | Modais / abas / drawers abrem e fecham |
| A8 | Console sem erro vermelho no fluxo principal |
| A9 | Responsivo mínimo se prometido |
| A10 | `file://` vs servidor — APIs/CORS coerentes |

---

## B. Dados e persistência (se o app manipula dados)

| # | Verificar |
|---|-----------|
| B1 | Criar registro — aparece na interface |
| B2 | Editar — alterações persistem |
| B3 | Excluir — remove ou arquiva corretamente |
| B4 | Listar / buscar / filtrar — se existir na UI |
| B5 | Detalhe de item — abre dados corretos |
| B6 | Após F5 ou reabrir — dados continuam (se prometido) |

---

## C. Autenticação (só se o app tiver login)

| # | Verificar |
|---|-----------|
| C1 | Login com credenciais válidas |
| C2 | Bloqueio de rotas sem sessão |
| C3 | Logout limpa sessão |
| C4 | Mensagem clara em credencial inválida |

---

## D. Escopo prometido (preencher por sessão)

> Copie do QA00 — cada linha vira linha de teste no mapa funcional.

| # | Funcionalidade prometida | Verificar |
|---|--------------------------|-----------|
| P1 | | |
| P2 | | |
| P3 | | |
| … | | |

---

## E. Segurança básica (se houver dados ou login)

| # | Verificar |
|---|-----------|
| E1 | Secrets não no código versionado |
| E2 | Input do usuário não quebra a tela (XSS básico) |
| E3 | Acesso a registro de outro usuário via URL/ID (IDOR) |
