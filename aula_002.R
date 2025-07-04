# -- Primeiros passos --

## -- Ajuda no R --

# links principais do R
help.start()

# exibe a juda da funcao
help("mean")
?mean

?median
??plot
??mean

demo()
demo(graphics)

## -- Pacotes no R --
install.packages("ggplot2")
install.packages("DESeq2")

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DESeq2")

################################################################################


