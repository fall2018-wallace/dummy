
arrests <- USArrests
arrests
df
#plot1 <- hist(df$Population)
merge_df <- merge(arrests,df,by.arrests=intersect(row.names(arrests),by.df="Statename"))
merge_df
