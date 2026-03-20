install.packages("stylo")
library(stylo)
corpus_dir <- "corpus"

result_with_pronouns <- stylo(
  corpus.dir = corpus_dir,
  language = "German",
  corpus.format = "plain",
  
  # Features
  ngram.size = 1,           # Tokenisierung auf Wortbasis
  mfw.min = 1000,           # 1000 häufigste Wörter
  mfw.max = 1000,
  
  # Statistik
  analysis.type = "CA",     # Clusteranalyse
  distance.measure = "delta", # Classic Delta
  pca.visual = TRUE,        # PCA visualisieren
  gui = FALSE               # keine GUI öffnen
)

result_without_pronouns <- stylo(
  corpus.dir = corpus_dir,
  language = "German",
  corpus.format = "plain",
  
  delete.pronouns = TRUE,   # Pronomen entfernen
  
  ngram.size = 1,
  mfw.min = 1000,
  mfw.max = 1000,
  
  analysis.type = "CA",
  distance.measure = "delta",
  pca.visual = TRUE,
  gui = FALSE
)

result_cosine <- stylo(
  corpus.dir = corpus_dir,
  language = "German",
  corpus.format = "plain",
  
  ngram.size = 1,
  mfw.min = 1000,
  mfw.max = 1000,
  
  analysis.type = "CA",
  distance.measure = "cosine", # Cosine-Distanz
  pca.visual = TRUE,
  gui = FALSE
)

result_pca <- stylo(
  corpus.dir = "corpus",       
  language = "German",         
  corpus.format = "plain",    
  
  delete.pronouns = TRUE,     
  
  ngram.size = 1,             
  mfw.min = 1000,              
  mfw.max = 1000,              
  distance.measure = "delta", 
  analysis.type = "pca.corr"   # PCA auf Korrelationsmatrix
)

stylo()
# hier bei 'Output' Points gewählt um PCA besser darzustellen 

