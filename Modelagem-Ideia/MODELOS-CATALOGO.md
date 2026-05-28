# Catálogo de modelos — qual usar quando

O agente `MI02` escolhe **um modelo principal** (+ opcional secundário) desta lista.

---

## Modelos disponíveis

| ID | Modelo | Melhor para | Estrutura resumida |
|----|--------|-------------|-------------------|
| `M1` | **Business Model Canvas** | Ideia com múltiplas partes (cliente, canal, parceiro) | 9 blocos Osterwalder |
| `M2` | **Lean Canvas** | Startup / incerteza alta / hipóteses | Problema → solução → métricas → vantagem |
| `M3` | **Plano Sebrae simplificado** | MEI, negócio local, primeiro formalizar | Sumário, mercado, marketing, ops, financeiro |
| `M4` | **Proposta de valor** | Produto único, dor clara, pouco definido ainda | Perfil cliente + mapa valor + fit |
| `M5` | **Modelo serviço / consultoria** | Vende tempo, expertise, projeto | Oferta, pacotes, capacidade, precificação hora |
| `M6` | **Modelo SaaS / assinatura** | Software recorrente | ICP, problema, planos, CAC/LTV, métricas |
| `M7` | **Marketplace / intermediário** | Conecta oferta e demanda | Lados do mercado, liquidez, receita transação |
| `M8` | **Modelo franquia / replicação** | Processo repetível em várias unidades | Padrão operacional, royalties, território |
| `M9` | **Canvas social / impacto** | Missão + sustentabilidade financeira | Beneficiário, impacto, receita híbrida |

---

## Árvore de decisão (MI02)

```
Material fala em "app", "plataforma", "assinatura"? 
  └─ sim + recorrência → M6 (SaaS) ou M7 (marketplace)

É serviço prestado por você/equipe (horas, projetos)?
  └─ sim → M5

É loja, oficina, comércio local, MEI?
  └─ sim → M3 (Plano Sebrae)

Só tem dor + solução, resto vago?
  └─ sim → M4 depois M2

Muitos stakeholders, parceiros, canais?
  └─ sim → M1

Muita incerteza, hipóteses para testar?
  └─ sim → M2

Impacto social explícito?
  └─ sim → M9
```

---

## Compatibilidade com Projeto Novo

| Após modelagem | Próximo no kit técnico |
|----------------|------------------------|
| Modelo validado, vai construir | `Projeto Novo/000` → `001` → `002` |
| Só quer validar mercado | `001-DESCOBERTA` |
| Já tem código | `Raio-X-Projeto/RX01` |
| Negócio local sem tech ainda | `00-NEGOCIO` (segmento) |
