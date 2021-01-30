library(reshape2)

gc3 = read.csv("metrics/metrics_GC3_exons.tsv", header = TRUE, sep="\t")
gc = read.csv("metrics/metrics_GC_exons.tsv", header = TRUE, sep="\t")
gc_melted = melt(gc, id="genome.reference")
gc3_melted = melt(gc3, id="genome.reference")

hist(gc3_melted$value, main="Histogramme du taux de GC3 des gènes", xlab="Taux de GC3", ylab="Fréquence")
text(x = 90, y = 150000, paste("sd :", round(sd(gc3_melted$value, na.rm=TRUE), digits=3)))
hist(gc_melted$value, main="Histogramme du taux de GC des gènes", xlab="Taux de GC", ylab="Fréquence")
text(x = 90, y = 150000, paste("sd :", round(sd(gc_melted$value, na.rm=TRUE), digits=3)))

svg("plot.svg")
plot(gc_melted[gc_melted$genome.reference == 9598,"value"], gc_melted[gc_melted$genome.reference == 9601,"value"], main="Taux de GC comparé des gènes chez Pongo abelli et Pan troglodytes", xlab="Pan troglodytes", ylab="Pongo abelli")
dev.off()