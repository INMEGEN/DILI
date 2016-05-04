

list2env(
  lapply(setNames(temp, make.names(gsub("*_countries.tsv$", "", temp))), header = FALSE, sep = ",", #row.names = 1,
         read.delim), envir = .GlobalEnv)

temp <- temp[-4] # empty file

write.table(ls()[-80], file = "../plots/countries_names.tsv", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)