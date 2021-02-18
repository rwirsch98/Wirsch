# Descriptive practice

install.packages("quanteda")
library(quanteda)
#1. Write two sentences. Save each as a seperate object in R. 
#2. Combine them into a corpus

txt <- c(sent1 = "American Journey promotion is limited to 1 use per customer and is only valid on your first American Journey dog food item.",
         sent2 = "5% discount will be applied at checkout.")
corpus_txt<-corpus(txt)
corpus_txt

#3. Make this corpus into a dfm with all pre-processing options at their defaults.
dfm_txt<-dfm(corpus_txt)

#4. Now save a second dfm, this time with stopwords removed.
dfm(txt, remove = stopwords("english"), stem = TRUE, verbose = TRUE)

#5. Calculate the TTR for each of these dfms (use textstat_lexdiv). Which is higher?
textstat_lexdiv
data("data_corpus_inaugural")
df <- texts(data_corpus_inaugural)
toks <- tokens(data_corpus_inaugural) 
tokenz <- lengths(toks)
typez <- ntype(df)
ttr <- typez / tokenz
plot(ttr)
textstat_lexdiv(dfm(data_corpus_inaugural, groups = "President", verbose = FALSE))

#6. Calculate the Manhattan distance between the two sentences you've constructed (by hand!)
