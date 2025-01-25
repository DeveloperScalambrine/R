# Avaliação de Modelos de Classificação (Linguagem R)

## Introdução

Neste projeto, nosso objetivo é aprofundar o entendimento das principais métricas utilizadas para avaliar o desempenho de modelos de classificação. Através da implementação prática dessas métricas em **R**, buscaremos desenvolver uma base sólida para análise e comparação de diferentes modelos.

## Conjunto de Dados e Experimento

Para exemplificar o cálculo das métricas, utilizaremos um pequeno conjunto de dados hipotético para classificação de imagens de cães e gatos.

```R
# Vetor com as classes verdadeiras
y_true <- c('cão', 'gato', 'gato', 'gato', 'cão', 'cão')

# Vetor com as classes previstas pelo modelo
y_pred <- c('cão','gato','gato','gato','cão','cão')

