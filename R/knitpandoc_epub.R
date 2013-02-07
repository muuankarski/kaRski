knitpandoc_epub <- function(filename) {
  library(knitr)
  library(markdown)
  
  fileRmd <- paste(filename,".Rmd", sep="")
  knitr::knit2html(fileRmd)
  
  filemd <- paste(filename,".md", sep="")
  fileepub <- paste(filename,".epub", sep="")
  
 pandoccommand_odt <- paste("pandoc ","-S ",filemd," -o ",fileepub," --standalone",sep="")
  
  system(pandoccommand_odt)
  
}
