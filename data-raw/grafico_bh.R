library(dplyr)
library(ggplot2)


# Importação

dados_sinesp <- readr::read_rds("data/dados_sinesp.R")

# Visualização

source("R/graficos.R")

gerar_grafico_serie(dados_sinesp, "Belo Horizonte")
