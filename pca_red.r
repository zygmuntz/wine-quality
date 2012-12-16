data_file = "winequality/winequality-red.csv"

wine <- read.csv( data_file, sep=';', header = TRUE )

numel = length( as.matrix( wine )) / length( wine )

pcx <- prcomp( wine, scale = TRUE )
biplot( pcx, xlabs = rep( '.', numel ))

dev.new()
plot( pcx )
