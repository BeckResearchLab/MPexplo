PATH_TO_RDATA <- "QSARdata/data/"

process_file <- function(filename) {
	attach(paste(PATH_TO_RDATA, filename, sep="/"))
	dfs <- ls(pos=2)
	for (df in dfs) {
		export_dataset(df)
	}
	detach(pos=2)
}

export_dataset <- function(dataTable) {
	filename <- paste(dataTable, ".tsv", sep="")
	print(paste("writing", dataTable, "to", filename))
	write.table(get(dataTable), file=filename, row.names=F, quote=F, sep='\t')
}

files <- list.files(PATH_TO_RDATA, pattern="*.RData")

for (file in files) {
	process_file(file)
}
