data_file = "winequality/winequality-white.csv"

wine <- read.csv( data_file, sep=';', header = TRUE )

numel = length( as.matrix( wine )) / length( wine )

pcx <- prcomp( wine, scale = TRUE )
biplot( pcx, xlabs = rep( '.', numel ))

# another window
dev.new()

bar_colors = c( 'red', 'red', rep( 'gray', 10 ))
plot( pcx, col = bar_colors )
