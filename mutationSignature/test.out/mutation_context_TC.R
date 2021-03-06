library(RColorBrewer)
setwd("test.out")
a<-read.table("mutation_context_TC.txt",header=T,sep="\t",row.names=1,check.names=F)
a.matrix=as.matrix(a)
n<-sum(a.matrix[,1])
b.matrix<-a.matrix/n
png("mutation_context_TC.png",width=800,height=600)
par(mar=c(5,5,4,4)+0.1,xpd=T)
barplot(b.matrix,col=brewer.pal(4,"Set1"),border=FALSE,space=c(0),xlab="Postion with respect to mutated base",ylab="Percentage of bases",main="mutation context of T>C",cex.axis=1.5,cex.lab=1.5,cex.main=1.5,cex.names=1.5)
legend("right",legend=row.names(b.matrix),bty="n",horiz=F,fill=brewer.pal(4,"Set1"),inset=c(-0.09,0),cex=2)
dev.off()
