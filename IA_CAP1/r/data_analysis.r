dados <- read.csv("dados_farmtech.csv", fileEncoding="UTF-8-BOM", stringsAsFactors = FALSE)  # nolint

print("Dados carregados com sucesso!")
print(dados)

# padronizar nome da coluna (remove acentos/pontos) e garantir que seja numérica
if("Área..m.." %in% names(dados)) {
  names(dados)[names(dados) == "Área..m.."] <- "Area_m2"
}

# converter para numérico caso ainda esteja como texto
dados$Area_m2 <- as.numeric(dados$Area_m2)

# Análise de dados
media_area <- mean(dados$Area_m2, na.rm = TRUE)
desvio_area <- sd(dados$Area_m2, na.rm = TRUE)

print(paste("Média da área (m²):", media_area))
print(paste("Desvio padrão da área (m²):", desvio_area))