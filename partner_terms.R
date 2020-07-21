#rm(list = ls())
library(tidyverse)
library(textreadr)
setwd("~/Desktop/RProjects/edu_word_freq")

partner_terms <- function(document, word){

########################################################
  # PART 1
########################################################

  # rwwoi = rows with words of interest
  rwwoi <- pdf_text(document) %>% readr::read_lines()
  rwwoi <- rwwoi %>% str_replace_all(",", "") 
  rwwoi <- rwwoi %>% str_replace_all(":", "") 
  rwwoi <- rwwoi %>% str_replace_all(";", "") 
  rwwoi <- rwwoi %>% str_squish()
  rwwoi <- unlist(strsplit(rwwoi, "(?<=[[:punct:]])\\s(?=[A-Z])", perl=T))
  rwwoi <- tolower(rwwoi)
  
  # subset of only rows with word of interest
  rwwoi <- rwwoi[grepl(word, rwwoi)]

########################################################
  # PART 2
########################################################

  # 2 words before
  word_before <- paste0('(', word, ').*')
  mct_before <- gsub(word_before, "\\1", rwwoi)
  word_1_before <- word(mct_before, -3)
  word_2_before <- word(mct_before, -2)
  words_before <- paste(word_1_before, word_2_before, word)
  
  # 2 words after
  word_after <- paste0('.*(', word, ')')
  mct_after <- gsub(word_after, "\\1", rwwoi)
  word_1 <- word(mct_after, 2)
  word_2 <- word(mct_after, 3)
  words_after <- paste0(word_1, " ", word_2, " ")
  
  # words before and after
  all_words <- paste0(words_before, " ", words_after)
  all_words <- all_words[!grepl("NA", all_words)]  

########################################################
  # PART 3
########################################################

  top_terms <- unlist(strsplit(all_words, " "))
  top_terms <- as.data.frame(top_terms)
  top_terms <- data.frame(table(unlist(strsplit(tolower(top_terms$top_terms), " "))))
  top_terms$Var1 <- paste(" ", top_terms$Var1, sep="")
  top_terms$Var1 <- paste(top_terms$Var1, ' ', sep='')
  top_terms <- wtr(top_terms)
  top_terms <- top_terms %>% arrange(desc(top_terms$Freq))
  top_terms <- top_terms[-c(1),]

}

# list of partner terms
partners <- partner_terms("physics.pdf", "water")

view(partners)
