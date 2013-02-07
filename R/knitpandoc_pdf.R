knitpandoc_pdf <- function(filename,ending="empty") {
  library(knitr)
  library(markdown)
  
  fileRmd <- paste(filename,".Rmd", sep="")
  knitr::knit2html(fileRmd)
  
  filemd <- paste(filename,".md", sep="")
  filepdf <- paste(filename,".pdf", sep="")
    
  if (ending == "tocnr") {
    pandoccommand_pdf  <- paste("pandoc ",filemd," -o ",filepdf," --toc"," --number-sections",sep="")
  } 
  if (ending == "toc") {
    pandoccommand_pdf  <- paste("pandoc ",filemd," -o ",filepdf," --toc",sep="")
  } 
  if (ending == "nr") {
    pandoccommand_pdf  <- paste("pandoc ",filemd," -o ",filepdf," --number-sections",sep="")
  } 
  if (ending == "empty"){
    pandoccommand_pdf  <- paste("pandoc ",filemd," -o ",filepdf,sep="")
  }
  

  system(pandoccommand_pdf)
  
}