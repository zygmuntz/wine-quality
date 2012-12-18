data_file = "winequality/winequality-red.csv"

wine <- read.csv( data_file, sep=';', header = TRUE )

# number of elements
numel = length( as.matrix( wine )) / length( wine )

# pca analysis
pcx <- prcomp( wine, scale = TRUE )
biplot( pcx, xlabs = rep( '.', numel ))

# another window
dev.new()

# principal components
bar_colors = c( 'red', 'red', rep( 'gray', 10 ))
plot( pcx, col = bar_colors )
