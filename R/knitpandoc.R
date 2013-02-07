knitpandoc <- function(filename,ending="empty") {
  library(knitr)
  library(markdown)
  
  fileRmd <- paste(filename,".Rmd", sep="")
  knitr::knit2html(fileRmd)
  
  filemd <- paste(filename,".md", sep="")
  filehtml <- paste(filename,".html", sep="")
  filedocx <- paste(filename,".docx", sep="")
  fileodt <- paste(filename,".odt", sep="")
  
  if (ending == "tocnr") {
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml," --toc"," --number-sections",sep="")
  } 
  if (ending == "toc") {
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml," --toc",sep="")
  } 
  if (ending == "nr") {
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml," --number-sections",sep="")
  } 
  if (ending == "empty"){
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml,sep="")
  }
  
  system(pandoccommand_html)
  
}