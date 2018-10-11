
arrests <- USArrests
arrests

df
#row.names(df$Statename)
#plot1 <- hist(df$Population)
merge_df <- merge(arrests,df,by.arrests="rownames",by.df="Statename")
merge_df


