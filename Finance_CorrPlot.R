library(corrplot)
setwd("/Users/Alex")
df = read.csv('CorrPlot_R.csv')
drops <- c("Date")
df <- df[ , !(names(df) %in% drops)]

#Find the given correlation matri
#Note that we must convert our dataframe to a numeric matrix
M <- cor(data.matrix(df), use="complete.obs") 

#Use the new library to show the correlation between these financial variables visually
corrplot(M, method="circle")

#There are other types of correlation plots we could implement, as seen below
#corrplot(M, method="color")
#corrplot(M, method="number")
corrplot(M, type="upper", order="hclust", tl.col="black", tl.srt=45)
