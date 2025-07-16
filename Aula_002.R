# -- Sequencias em R para Bioinformatica --

# -- Requencias Regulares -- 
## -- Usando rep() e o operador :

# Exemplo 1: Repetir um identificador de controle para várias amostras
# Imagine que temos 50 amostras e queremos atribuir "Controle" a cada uma delas.
rep("Controle", 50)

# Exemplo 2: Repetir um conjunto de tratamentos para um experimento de replicacao
# Se tivermos 3 tratamentos (A, B, C) e queremos 4 replicas de cada um.
rep(c("TratamentoA","TratamentoB","TratamentoC"), 4)

# Exemplo 3: Gerar sequencias de coordenadas genomicas
# Para um gene que se estende da posicao 1000 a 1010 em um cromossomo.
posicoes_gene <- 1000:1010
print(posicoes_gene)

# Exemplo 4: Criar IDs numericos para amostras
# De 1 a 20 para 20 amostras de sequenciamento
ids_amostras_num <- 1:20
print(ids_amostras_num)
