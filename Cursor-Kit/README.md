# Cursor-Kit — rules genéricas do ecossistema ECO

Kit **reutilizável** para qualquer repo em `c:\_PROJETOS\`. Não substitui o **workbench** (governança) nem o **EcoMaestro** (roteamento).

| Kit | Uso |
|-----|-----|
| **Cursor-Kit** (esta pasta) | `.cursor/rules` genéricas + instalação |
| **GeoGrowth-Cursor** | Exemplo completo só para o app GeoGrowth |
| **PROMPT/** (raiz `_PROJETOS`) | Espelho legado do método — **prefira workbench** |

## Instalar no seu app

### Opção A — script

```bat
cd c:\_PROJETOS\workbench\Cursor-Kit
INSTALAR-NO-REPO.bat c:\_PROJETOS\MeuApp
```

### Opção B — manual

Copie `kit-para-copiar/.cursor/` para a **raiz do repositório** do app.

Confirme no Cursor: **Settings → Rules** — regras `eco-*` ativas (inclui `eco-demandas-continuidade` para histórico EcoMaestro).

## Fluxo com o ecossistema (4 portas)

1. **EcoMaestro** — quem entrega a demanda  
2. **dLogica** — problema/objetivo (projeto novo)  
3. **workbench** — handoff + [04-coding-diario](../20-ENTREGA-DE-PRODUTO/04-coding-diario/) (D00, D01, D02…)  
4. **Cursor** — implementar (esta pasta + prompts Dxx)  
5. **Max** — auditoria do repo (`:3847`)

## Prompts de coding

Não duplicamos D00–D12 aqui. Use sempre o canônico:

- [CODING-DIARIO.md](../Projeto%20Novo/CODING-DIARIO.md)  
- [04-coding-diario/](../20-ENTREGA-DE-PRODUTO/04-coding-diario/)

## Apps relacionados (não confundir)

| Pasta | Papel |
|-------|--------|
| `workbench/` | Governança — **canônico** |
| `EcoMaestro/` | Orquestrador / condomínio |
| `PROMPT/` | Legado — mesma ideia do workbench |
| `max-coding/` | Max Stack — auditoria |
| `COmniWS/` | Runtime IA local — **fora** das 4 portas |
| `geogrowth-sync-api/` | API do produto geogrowth — não é fluxo ECO |
