
library("ggplot2")
arrests <- USArrests
arrests
df
arrests$Statename <- rownames(arrests)
arrests
#3)	Create a merged dataframe -- with the attributes from both dataset
merge_df <- merge(arrests,df,by="Statename")
merge_df

#4)	Create a histogram using ggplot2() for the population and a different histogram for the murder rate
myplotpop <- ggplot(merge_df, aes(x=Population)) + geom_histogram(binwidth = 500000) + ggtitle("Histogram of Population")
myplotmur <- ggplot(merge_df, aes(x=Murder)) + geom_histogram(binwidth = 5)+  ggtitle("Histogram of Murder")
myplotass <- ggplot(merge_df, aes(x=Assault)) + geom_histogram(binwidth = 50) +  ggtitle("Histogram of Assault")
myplotrape <- ggplot(merge_df, aes(x=Rape)) + geom_histogram(binwidth = 5) +  ggtitle("Histogram of Rape")

#5)	Create a boxplot for the population, and a different boxplot for the murder rate.
mybplotpop <- ggplot(merge_df,aes(x=factor(0),y=Population)) + geom_boxplot()+ ggtitle("Boxplot of Population")
mybplotmur <- ggplot(merge_df,aes(x=factor(0),y=Murder)) + geom_boxplot()+ ggtitle("Boxplot of Murder")
mybplotass <- ggplot(merge_df,aes(x=factor(0),y=Assault)) + geom_boxplot()+ ggtitle("Boxplot of Assault")
mybplotrape <- ggplot(merge_df,aes(x=factor(0),y=Rape)) + geom_boxplot()+ ggtitle("Boxplot of Rape")

#6)	Create a block comment explaining which visualization (boxplot or histogram) you thought was more helpful (explain why)

#7)	Calculate the number of murders per state
#merge_df$num.ofmurders <- rownames(merge_df)
merge_df$num.ofmurders <- merge_df$Population * merge_df$Murder/100000
merge_df
