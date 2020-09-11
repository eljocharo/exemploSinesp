gerar_grafico_serie <- function(tab, cidade){
    tab %>%
        filter(municipio == cidade) %>%
        ggplot()+
        geom_line(aes(x = mes_ano, y = vitimas)) +
        labs(x = "Mes", y = "Numeros de Vitimas",
             title = cidade) +
        theme_minimal()
}
