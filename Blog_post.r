Blog_post <- function(title){
date <- Sys.Date()
name <- paste0(date, '-',title)
setwd(paste0(getwd(), '/posts'))
rmarkdown::draft(file = paste0(name), template = "Blog_Post", package = 'rmarkdown')
file.rename(paste0(name,'/',name, '.Rmd'), paste0(name,'/','index.qmd'))
setwd('..')
}
