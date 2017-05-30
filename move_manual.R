if(!file.exists('filepath.R')){
  require(tcltk)
  file.dir <- tk_choose.dir()
  out.string <- paste("filepath <- \"",file.dir,"\"",sep="")
  cat(out.string,file="filepath.R",sep="\n")
}
source('filepath.R')
file.copy('R_Instruction_Manual.html',filepath, overwrite = TRUE)
file.remove('R_Instruction_Manual.html')
