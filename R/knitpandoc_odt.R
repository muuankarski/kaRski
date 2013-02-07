knitpandoc_odt <- function(filename) {
  library(knitr)
  library(markdown)
  
  fileRmd <- paste(filename,".Rmd", sep="")
  knitr::knit2html(fileRmd)
  
  filemd <- paste(filename,".md", sep="")
  fileodt <- paste(filename,".odt", sep="")
  
 pandoccommand_odt <- paste("pandoc ","-f markdown -t ","odt ",filemd," -o ",fileodt," --standalone",sep="")
  
  system(pandoccommand_odt)
  
}