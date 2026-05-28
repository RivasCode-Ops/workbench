# Mapa de migração v2.0

## Árvore alvo (canônica)

```text
PROMPT/
├── 00-ROTEAMENTO/          ✅ ativo
├── 10-DESCOBERTA-E-MODELAGEM/  → Modelagem-Ideia/
├── 20-ENTREGA-DE-PRODUTO/      → Projeto Novo/
├── 30-QUALIDADE-E-REVISAO/     → Guardiao-PR/ + Auditoria-App/
├── 40-DIAGNOSTICO/             → Raio-X-Projeto/
├── 50-CORRECAO-RAPIDA/         → Correcao-Rapida/
├── 90-ARQUIVO-LEGADO/          ✅ ativo
│
├── Projeto Novo/           [legado — ainda autoritativo para arquivos]
├── Guardiao-PR/
├── Correcao-Rapida/
├── Modelagem-Ideia/
├── Raio-X-Projeto/
├── Auditoria-App/
├── Pojeto Antigo/          [legado — redirects only]
├── README.md               → aponta 00
├── CAMINHOS.md             → aponta 00
└── CHANGELOG.md
```

## Fase 1 ✅ (v2.0.0)

- [x] Domínios `00`–`90` com README + CONTRATO
- [x] Roteamento único em `00-ROTEAMENTO`
- [x] CONVENCOES, GLOSSARIO, template de contrato
- [x] Pastas legadas preservadas (zero link quebrado)

## Fase 2 ✅ (v2.1.0)

- [x] `STATUS-DE-AUTORIDADE.md`
- [x] `INVENTARIO-PROMPTS.md` (tabela atômica)
- [x] `EVALS/` para 000, MI, RX01, R00, B01, QA
- [x] CONTRATO + lifecycle em prompts críticos
- [x] `REPO-CHECKLIST.template.md` em Guardiao-PR
- [x] `R04` decisão de continuidade

## Fase 3 (planejada)

- [ ] Mover físico: `Projeto Novo/D01` → `20-.../04-coding-diario/d01-feature.md`
- [ ] Redirect stubs nos paths antigos

## Fase 4 (planejada)

- [ ] Renomear `Pojeto Antigo` → absorver em `90`
- [ ] Opcional: `Projeto Novo` → symlink/junction para `20/...`

## Tabela legado → canônico

| Path legado | Domínio | Entrada canônica |
|-------------|---------|------------------|
| `Modelagem-Ideia/` | 10 | `10-DESCOBERTA-E-MODELAGEM/README.md` |
| `Projeto Novo/` | 20 | `20-ENTREGA-DE-PRODUTO/README.md` |
| `Guardiao-PR/` | 30 | `30-QUALIDADE-E-REVISAO/README.md` |
| `Auditoria-App/` | 30 | idem |
| `Raio-X-Projeto/` | 40 | `40-DIAGNOSTICO/README.md` |
| `Correcao-Rapida/` | 50 | `50-CORRECAO-RAPIDA/README.md` |
| `Pojeto Antigo/` | 90 | `90-ARQUIVO-LEGADO/redirects.md` |
