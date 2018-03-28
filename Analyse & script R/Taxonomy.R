library(network)
taxo = read.csv2("BeerTaxonomy.csv")
n=network(taxo, matrix.type="edgelist",loops=F, multiple=F, ignore.eval = F,directed=F)
plot(n, displaylabels=T, label.cex=0.6)

