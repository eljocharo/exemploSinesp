
caminho <- "data-raw/indicadoressegurancapublicamunicmar20.xlsx"

abas <- readxl::excel_sheets(caminho)

dados_sinesp <- purrr::map( abas,
    ~readxl::read_excel(caminho, sheet = .x,
                        col_types = c("text", "text", "text", "date", "numeric"))
)


dados_sinesp <- dplyr::bind_rows(dados_sinesp)

# tidy

dados_sinesp <- janitor::clean_names(dados_sinesp)

readr::write_rds(dados_sinesp, "data/dados_sinesp.R",
                 compress = "gz")
