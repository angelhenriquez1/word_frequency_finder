#Preliminaries####
#rm(list = ls())
setwd("~/Desktop/RProjects/edu_word_freq")

library(tidyverse)
library(readOffice)
library(pdftools)
library(writexl)
library(dplyr)
library(textreadr)

#Functions to isolate common words####
# For pdf
com_pdf <- function(pdf_name){
  
  pdf <- wtr(mct_pdf(pdf_name))
  
}

# For docx
com_docx <- function(docx_name){
  
  docx <- wtr(mct_doc(docx_name))
  
}

# For doc
com_doc <- function(doc_name){
  
  doc <- wtr(mct_doc(doc_name))
  
}

# For xls
com_xls <- function(xls_name){
  
  xls <- wtr(mct_doc(xls_name))
  
}

# For xlsx
com_xlsx <- function(xlsx_name){
  
  xlsx <- wtr(mct_doc(xlsx_name))
  
}

#STEAM Learning Pyramid & Classes####

# STEAM LEARNING PYRAMID (https://steamedu.com/shop/consultlp/)

# Common Classes (https://www.verywellfamily.com/high-school-subjects-2610106)

#STEAM Topics####

# Raven Johnson McGrawl Hill (http://biology.org.ua/files/lib/Raven_Johnson_McGraw-Hill_Biology.pdf)
biology <- com_pdf("biology.pdf")

# AP Physics Textbook (https://d3bxy9euw4e147.cloudfront.net/oscms-prodcms/media/documents/APCollegePhysics-OP.pdf)
physics <- com_pdf("physics.pdf")

# Chemistry Textbook (https://web2.mlp.cz/koweb/00/04/24/15/49/chemistry.pdf)
chemistry <- com_pdf("chemistry.pdf")

# Biotechnology (https://thunderbooks.files.wordpress.com/2009/05/introduction-to-biotechnology-and-genetic-engineering-infinity-2008.pdf)
biotechnology <- com_pdf("biotechnology.pdf")

# English Language Arts (http://www.doe.mass.edu/frameworks/ela/2017-06.pdf)
english_language_arts <- com_pdf("english_language_arts.pdf")

# Algebra 1 (https://hillcrestmath.files.wordpress.com/2010/08/8th-grade-algebra-i-textbook.pdf)
algebra1 <- com_pdf("algebra1.pdf")

# Geometry (http://internet.savannah.chatham.k12.ga.us/schools/ec/faculty/Kalyanam/Shared%20Documents/Geometry%20big%20book.pdf)
geometry <- com_pdf("geometry.pdf")

# Statistics (https://www.spps.org/cms/lib/MN01910242/Centricity/Domain/859/Statistics%20Textbook.pdf)
statistics <- com_pdf("statistics.pdf")

# Trigonometry (http://mecmath.net/trig/trigbook.pdf)
trigonometry <- com_pdf("trigonometry.pdf")

# Economics (https://2012books.lardbucket.org/pdfs/economics-principles-v1.1.pdf)
economics <- com_pdf("economics.pdf")

# US History (https://www.neisd.net/cms/lib/TX02215002/Centricity/Domain/5145/americas_history_for_the_ap__-_james_a_henretta_complete.pdf)
us.history <- com_pdf("us.history.pdf")

# Psychology (https://hialeahhigh.enschool.org/ourpages/auto/2017/8/20/70579741/Myers-D_-G_2010_-Psychology-9th-edition2.pdf)
psychology <- com_pdf("psychology.pdf")

# Music  (https://2012books.lardbucket.org/pdfs/music-theory.pdf)
music <- com_pdf("music.pdf")

#Export####
# Export as:
# text
# write.table(music, "music.txt", sep="\t")
# Excel
#write_xlsx(music,"music.xlsx")
