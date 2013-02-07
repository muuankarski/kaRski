knitpandoc_docx <- function(filename,ending="empty") {
  library(knitr)
  library(markdown)
  
  fileRmd <- paste(filename,".Rmd", sep="")
  knitr::knit2html(fileRmd)
  
  filemd <- paste(filename,".md", sep="")
  filedocx <- paste(filename,".docx", sep="")
  
  pandoccommand_docx <- paste("pandoc ","-f markdown -t ","docx ",filemd," -o ",filedocx," --standalone",sep="")
  
  system(pandoccommand_docx)
  
}