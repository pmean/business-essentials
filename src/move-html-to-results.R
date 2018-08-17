project_name <- "business-essentials"
src <- paste("~", project_name, "src", sep="/")
results <- paste("~", project_name, "results", sep="/")
for (i in list.files(src, pattern="*.html")) {
  file.copy(paste(src, i, sep="/"), results)
  file.remove(paste(src, i, sep="/"))
}
