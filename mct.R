# function to find most common terms (mct) for:

# pdf file
mct_pdf <- function(url){
  
  mct <- pdf_text(url) %>% readr::read_lines()
  mct <- mct %>% str_squish()
  mct <- mct %>% str_replace_all(",", "") 
  mct <- mct %>% str_replace_all(":", "") 
  mct <- mct %>% str_replace_all(";", "") 
  mct <- tolower(mct)
  mct <- mct %>% strsplit(split = "\\s+")
  mct <- unique(mct)
  mct <- table(unlist(mct))
  mct <- as.data.frame(mct)
  mct$Var1 <- paste(" ", mct$Var1, sep="")
  mct$Var1 <- paste(mct$Var1, ' ', sep='')
  mct$Var1 <- as.character(mct$Var1)
  mct <- mct %>% arrange(desc(mct$Freq))
  
}
# colnames(df) <- paste(colnames(df), 'sample', sep='_')
# .docx file
mct_docx <- function(url){
  
  mct <- read_docx(url) %>% readr::read_lines()
  mct <- mct %>% str_squish()
  mct <- mct %>% str_replace_all(",", "") 
  mct <- mct %>% str_replace_all(":", "") 
  mct <- mct %>% str_replace_all(";", "") 
  mct <- tolower(mct)
  mct <- mct %>% strsplit(split = "\\s+")
  mct <- unique(mct)
  mct <- table(unlist(mct))
  mct <- as.data.frame(mct)
  mct$Var1 <- paste(" ", mct$Var1, sep=" ")
  mct$Var1 <- paste(mct$Var1, ' ', sep='')
  mct$Var1 <- as.character(mct$Var1)
  mct <- mct %>% arrange(desc(mct$Freq))
  
}

# .doc file
mct_doc <- function(url){
  
  mct <- read_doc(url) %>% readr::read_lines()
  mct <- mct %>% str_squish()
  mct <- mct %>% str_replace_all(",", "") 
  mct <- mct %>% str_replace_all(":", "") 
  mct <- mct %>% str_replace_all(";", "") 
  mct <- tolower(mct)
  mct <- mct %>% strsplit(split = "\\s+")
  mct <- unique(mct)
  mct <- table(unlist(mct))
  mct <- as.data.frame(mct)
  mct$Var1 <- paste(" ", mct$Var1, sep=" ")
  mct$Var1 <- paste(mct$Var1, ' ', sep='')
  mct$Var1 <- as.character(mct$Var1)
  mct <- mct %>% arrange(desc(mct$Freq))
  
}

# xls file
mct_xls <- function(url){
  
  mct <- readxl::read_xls (url) %>% readr::read_lines()
  mct <- mct %>% str_squish()
  mct <- mct %>% str_replace_all(",", "") 
  mct <- mct %>% str_replace_all(":", "") 
  mct <- mct %>% str_replace_all(";", "") 
  mct <- tolower(mct)
  mct <- mct %>% strsplit(split = "\\s+")
  mct <- unique(mct)
  mct <- table(unlist(mct))
  mct <- as.data.frame(mct)
  mct$Var1 <- paste(" ", mct$Var1, sep=" ")
  mct$Var1 <- paste(mct$Var1, ' ', sep='')
  mct$Var1 <- as.character(mct$Var1)
  mct <- mct %>% arrange(desc(mct$Freq))
  
}

# xlsx file
mct_xlsx <- function(url){
  
  mct <- readxl::read_xlsx (url) %>% readr::read_lines()
  mct <- mct %>% str_squish()
  mct <- mct %>% str_replace_all(",", "") 
  mct <- mct %>% str_replace_all(":", "") 
  mct <- mct %>% str_replace_all(";", "") 
  mct <- tolower(mct)
  mct <- mct %>% strsplit(split = "\\s+")
  mct <- unique(mct)
  mct <- table(unlist(mct))
  mct <- as.data.frame(mct)
  mct$Var1 <- paste(" ", mct$Var1, sep=" ")
  mct$Var1 <- paste(mct$Var1, ' ', sep='')
  mct$Var1 <- as.character(mct$Var1)
  mct <- mct %>% arrange(desc(mct$Freq))
  
}
