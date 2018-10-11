
library("ggplot")
arrests <- USArrests
arrests
df
arrests$Statename <- rownames(arrests)
arrests
merge_df <- merge(arrests,df,by="Statename")
merge_df
myplotpop <- ggplot(mergeDF, aes(x=population)) + geom_histogram(binwidth = 500000) + ggtitle("Histogram of Population")
myplotpop

myplotmur <- ggplot(mergeDF, aes(x=Murder)) + geom_histogram(binwidth = 5)+  ggtitle("Histogram of Murder")
myplotmur

myplotass <- ggplot(mergeDF, aes(x=Assault)) + geom_histogram(binwidth = 50) +  ggtitle("Histogram of Assault")
myplotass

myplotrape <- ggplot(mergeDF, aes(x=Rape)) + geom_histogram(binwidth = 5) +  ggtitle("Histogram of Rape")
myplotrape

