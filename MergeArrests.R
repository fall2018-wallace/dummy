
library("ggplot2")
arrests <- USArrests
arrests
df
arrests$Statename <- rownames(arrests)
arrests
#3)	Create a merged dataframe -- with the attributes from both dataset
merge_df <- merge(arrests,df,by="Statename")
merge_df
#4)	Create a histogram using ggplot2() for the population and a different histogram for 
#the murder rate
myplotpop <- ggplot(merge_df, aes(x=Population)) + geom_histogram(binwidth = 500000) + ggtitle("Histogram of Population")
myplotpop
myplotmur <- ggplot(merge_df, aes(x=Murder)) + geom_histogram(binwidth = 5)+  ggtitle("Histogram of Murder")
myplotass <- ggplot(merge_df, aes(x=Assault)) + geom_histogram(binwidth = 50) +  ggtitle("Histogram of Assault")
myplotrape <- ggplot(merge_df, aes(x=Rape)) + geom_histogram(binwidth = 5) +  ggtitle("Histogram of Rape")

