# Status de autoridade — Kit PROMPT v2

**Versão:** `2.2.0` · **Última revisão:** 2026-05-27

Documento **normativo**. Em caso de conflito, estas regras vencem.

---

## 1. Quem roteia (sempre)

| Papel | Path canônico | Autoridade |
|-------|---------------|------------|
| Entrada do sistema | `00-ROTEAMENTO/README.md` | **Única** fachada oficial |
| Árvore de decisão | `00-ROTEAMENTO/CAMINHOS.md` | **Única** para “qual fluxo?” |
| Integração entre kits | `00-ROTEAMENTO/MAPA-ECOSSISTEMA.md` | **Única** para anti-duplicação |
| Convenções e gates | `00-ROTEAMENTO/CONVENCOES.md` | **Única** para naming e semver |

**Proibido:** criar segundo “CAMINHOS” ou README concorrente na raiz sem redirect explícito.

---

## 2. Quem contém conteúdo autoritativo **hoje**

| Tipo | Fonte da verdade (editar aqui) | Domínio lógico |
|------|-------------------------------|----------------|
| Texto integral dos prompts | `legacy_path`, exceto **migrados** (§4) → `canonical_path` | `10`–`50` |
| Índice e contrato do domínio | `10-…/README.md`, `CONTRATO.md` | Fachada |
| Roteamento e governança | `00-ROTEAMENTO/` | Canônico |

**Regra de ouro:** mudou o prompt → edite onde o inventário marca como fonte (`legacy` ou `canonical` migrado) → atualize [`INVENTARIO-PROMPTS.md`](./INVENTARIO-PROMPTS.md) se **crítico** → `CHANGELOG.md` se mudar saída/gate.

---

## 3. O que os domínios `10`–`90` são nesta fase

| Pasta domínio | Natureza | Não é |
|---------------|----------|-------|
| `10-DESCOBERTA-E-MODELAGEM/` | **Fachada** + CONTRATO | Cópia espelhada de todos os MI* |
| `20-ENTREGA-DE-PRODUTO/` | **Fachada** + piloto `04-coding-diario/` (D00–D02) | Substituição total de `Projeto Novo/` |
| `30-QUALIDADE-E-REVISAO/` | **Fachada** | Substituição de Guardiao/Auditoria |
| `40-DIAGNOSTICO/` | **Fachada** | Substituição de Raio-X |
| `50-CORRECAO-RAPIDA/` | **Fachada** | Substituição de Correcao-Rapida |
| `90-ARQUIVO-LEGADO/` | Redirects + migração | Lugar para prompts novos |

---

## 4. Paths já migrados fisicamente (piloto)

**Regra:** para estes prompts, **`canonical_path` = editar aqui** · `legacy_path` = stub redirect.

| Prompt | canonical_path (fonte da verdade) | legacy_path (redirect) | Piloto |
|--------|-----------------------------------|----------------------|--------|
| D00 | `20-ENTREGA-DE-PRODUTO/04-coding-diario/d00-contexto-sessao.md` | `Projeto Novo/D00-CONTEXTO-SESSAO.md` | ✅ v2.2.0 |
| D01 | `20-ENTREGA-DE-PRODUTO/04-coding-diario/d01-feature.md` | `Projeto Novo/D01-FEATURE.md` | ✅ v2.2.0 |
| D02 | `20-ENTREGA-DE-PRODUTO/04-coding-diario/d02-bugfix.md` | `Projeto Novo/D02-BUGFIX.md` | ✅ v2.2.0 |

**Eval piloto:** [`EVALS/eval-d00-d02-flow.md`](./EVALS/eval-d00-d02-flow.md)

**Rollback:** copiar conteúdo de `canonical_path` de volta para `legacy_path` e reverter inventário.

---

## 5. O que já está migrado (governança)

| Item | Status |
|------|--------|
| Roteamento centralizado em `00` | ✅ `stable` |
| Contratos + evals críticos | ✅ v2.1.0 |
| Piloto físico D00–D02 | ✅ v2.2.0 |
| Demais `D03+` em `Projeto Novo/` | ⏳ `legacy_path` autoritativo |
| Remoção de `Pojeto Antigo/` | ⏳ alvo v3.0.0 |

Detalhe atômico: [`INVENTARIO-PROMPTS.md`](./INVENTARIO-PROMPTS.md)

---

## 6. Regra em conflito

```
1. STATUS-DE-AUTORIDADE.md (este arquivo)
2. CONTRATO.md do domínio
3. CONTRATO no topo do prompt (se stable)
4. README legado da pasta
5. Comentários soltos em chats
```

| status no inventário | Fonte da verdade |
|---------------------|------------------|
| `stable` (não migrado) | `legacy_path` |
| `migrated` | **`canonical_path`** |
| `redirected` | stub em `legacy_path` → link para canônico |

---

## 7. Regra de atualização (obrigatória)

| Mudança | Ação |
|---------|------|
| Prompt crítico (`stable`) — texto ou saída | `CHANGELOG` + bump `version` no prompt + revisar [`EVALS/`](./EVALS/) |
| Novo prompt principal | Registrar em `INVENTARIO` + contrato no topo |
| Deprecar path | `status: deprecated` + redirect em `90` + alvo de versão no CHANGELOG |
| Só typo em prompt não-crítico | `CHANGELOG` patch |

**Prompts críticos:** `000`, `MI-SESSAO-UNICA`, `RX01`, `R00`, `B01`, `QA-SESSAO-UNICA`

---

## 8. Depreciações explícitas

| Path | Status | Remoção alvo | Substituir por |
|------|--------|--------------|----------------|
| `Pojeto Antigo/` | `deprecated` | v3.0.0 | `Projeto Novo/14-13-12` + `90/redirects` |
| `README.md` raiz (como índice único) | `redirected` | — | `00-ROTEAMENTO/README` |
| `CAMINHOS.md` raiz | `redirected` | — | `00-ROTEAMENTO/CAMINHOS` |

---

## 9. Evals mínimas

Bateria em [`EVALS/README.md`](./EVALS/README.md).  
Mudança em prompt crítico sem revisar eval = **não promover** para `stable`.
