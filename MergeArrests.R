
arrests <- USArrests
arrests

df
#row.names(df$Statename)
#plot1 <- hist(df$Population)
#merge_df <- merge(arrests,df,by.df="Statename")
#merge_df



arrests$Statename<-row.names(df$Statename)
