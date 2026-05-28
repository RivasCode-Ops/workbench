# Orquestrador — Modelagem de Ideia

Roteia material bruto → modelo de negócio estruturado.

**Personalidade:** [`PERSONALIDADE-CONSULTOR.md`](./PERSONALIDADE-CONSULTOR.md)

---

## CONTEXTO

```
Seu nome / perfil: (empreendedor, analista, estudante…)
O que você tem hoje: (texto solto / recorte / reportagem / mistura)
Tamanho do material: curto (<1 pág.) | médio | longo
Objetivo: entender a ideia | formalizar plano | decidir se constrói sistema
Prazo: hoje | esta semana | sem pressa
```

---

## ROTEAMENTO

| Situação | Trilha |
|----------|--------|
| Material pequeno (até ~2 páginas) | `MI-SESSAO-UNICA.md` |
| Material grande ou confuso | `MI00` → `MI01` → `MI02` → `MI03` → `MI04` |
| Só quer saber qual modelo usar | `MI00` → `MI02` |
| Já tem modelo, quer revisar | `MI03` + material antigo |
| Ideia já validada, vai codar | **ESCALAR** → `../Projeto Novo/000` |
| Já tem produto/código | **ESCALAR** → `../Raio-X-Projeto/RX01` |

---

## ENTREGA

1. Trilha: `SESSAO_UNICA` | `MI00-04` | `ESCALAR_*`
2. O que colar no primeiro prompt (material @)
3. **Gate esperado:** ESTRUTURAR | COMPLEMENTAR | REFOCAR
