# --- Exemplo de Dados Fictícios de Bioinformática ---

# Níveis de expressão de 5 genes (GeneA, GeneB, GeneC, GeneD, GeneE) em duas amostras (Amostra1, Amostra2)
# Os valores representam a expressão relativa, por exemplo, de um experimento de RNA-seq.
expressoes_genicas <- data.frame(
  Gene = c("GeneA", "GeneB", "GeneC", "GeneD", "GeneE"),
  Amostra1 = c(1.5, 0.8, 3.2, 0.5, 2.1),
  Amostra2 = c(1.2, 1.0, 2.8, 0.7, 1.9)
)

# Presença/ausência de mutações em 5 regiões genômicas (Regiao1 a Regiao5)
# 1 indica mutação presente, 0 indica mutação ausente
mutacoes_genomicas <- c(0, 1, 0, 1, 0)

# Vetor de identificadores de amostras
ids_amostras <- c("AM101", "AM102", "AM103", "AM104", "AM105")

print("Tabela de Expressão Gênica:")
print(expressoes_genicas)

print("Vetor de Mutações Genômicas:")
print(mutacoes_genomicas)

print("Vetor de IDs de Amostras:")
print(ids_amostras)

# -- Operadores de Atribuicao -- 
# Criando um novo objeto para armazenar a média das expressões da Amostra1
media_exp_amostra1 <- mean(expressoes_genicas$Amostra1)
print(paste("Média de expressão na Amostra1:", media_exp_amostra1))

# Atribuindo um novo nome para uma coluna para facilitar a análise
expressoes_genicas$Razao_A2_A1 = expressoes_genicas$Amostra2 / expressoes_genicas$Amostra1
print("Tabela de Expressão Gênica com Razão A2/A1:")
print(expressoes_genicas)


## -- Operadores Aritmeticos -- 
# Calcular a diferença de expressão entre Amostra2 e Amostra1 para cada gene
expressoes_genicas$Diferenca_A2_A1 <- expressoes_genicas$Amostra2 - expressoes_genicas$Amostra1
print("Tabela de Expressão Gênica com Diferença A2-A1:")
print(expressoes_genicas)

# Se tivéssemos contagens de reads e quiséssemos calcular o total
contagens_reads_geneA <- c(1000, 1500) # Contagens para GeneA em duas amostras
total_reads_geneA <- contagens_reads_geneA[1] + contagens_reads_geneA[2]
print(paste("Total de reads para GeneA:", total_reads_geneA))

# Um exemplo de resto da divisão, útil se você estivesse processando algo em blocos
# Por exemplo, se você tem 17 sequências e quer processar em grupos de 5
num_sequencias <- 17
tamanho_grupo <- 5
restante <- num_sequencias %% tamanho_grupo
print(paste("Sequências restantes após agrupar de 5 em 5:", restante))

## -- Operadores Relacionais -- 
# Quais genes têm expressão na Amostra1 maior que 2.0?
genes_altamente_expressos_A1 <- expressoes_genicas$Gene[expressoes_genicas$Amostra1 > 2.0]
print(paste("Genes com expressão na Amostra1 > 2.0:", 
            paste(genes_altamente_expressos_A1, collapse = ", ")))

# Quais regiões genômicas NÃO têm mutação?
regioes_sem_mutacao <- ids_amostras[mutacoes_genomicas == 0]
print(paste("Regiões genômicas sem mutação (IDs de amostras):", 
            paste(regioes_sem_mutacao, collapse = ", ")))

# Filtrar genes onde a Amostra2 tem expressão significativamente diferente da Amostra1 (ex: diferença > 0.5 ou < -0.5)
genes_diferencialmente_expressos <- expressoes_genicas$Gene[
  expressoes_genicas$Diferenca_A2_A1 > 0.5 | 
    expressoes_genicas$Diferenca_A2_A1 < -0.5]

print(paste("Genes com diferença de expressão significativa:", 
            paste(genes_diferencialmente_expressos, collapse = ", ")))

## -- Operadores Lógicos -- 
# Genes que são altamente expressos na Amostra1 (>1.0) E na Amostra2 (>1.0)
genes_expressos_ambas <- expressoes_genicas$Gene[
  expressoes_genicas$Amostra1 > 1.0 & expressoes_genicas$Amostra2 > 1.0]

print(paste("Genes expressos em ambas as amostras (>1.0):", 
            paste(genes_expressos_ambas, collapse = ", ")))

# Genes com expressão baixa na Amostra1 (<1.0) OU na Amostra2 (<1.0)
genes_baixa_exp_uma_amostra <- expressoes_genicas$Gene[
  expressoes_genicas$Amostra1 < 1.0 | 
    expressoes_genicas$Amostra2 < 1.0]

print(paste("Genes com baixa expressão em pelo menos uma amostra (<1.0):", 
            paste(genes_baixa_exp_uma_amostra, collapse = ", ")))

# Usando && e || (para avaliar apenas o primeiro elemento, menos comum para filtragem direta de vetores inteiros, mas útil em condições de fluxo de controle)
# Exemplo: Se a primeira mutação for 0 E a expressão do primeiro gene na Amostra1 for > 1.0
if (mutacoes_genomicas[1] == 0 && expressoes_genicas$Amostra1[1] > 1.0) {
  print("A primeira região não tem mutação E o primeiro gene é altamente expresso na Amostra1.")
}

## -- Outros Operadores -- 
### -- : Sequencia --

# Criar uma sequência de posições genômicas de 100 a 110
posicoes_genomicas <- 100:110
print(paste("Sequência de posições genômicas:", paste(posicoes_genomicas, collapse = ", ")))

# Acessar um subconjunto de genes (por exemplo, do GeneB ao GeneD)
# Isso pode ser feito usando índices numéricos ou lógicos
# Nesse caso, vamos usar indices numéricos para demonstrar o ':'
genes_subconjunto <- expressoes_genicas[2:4, ] # Linhas 2 a 4, todas as colunas
print("Subconjunto de genes (GeneB a GeneD):")
print(genes_subconjunto)


