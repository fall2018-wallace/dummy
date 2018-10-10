
arrests <- USArrests
arrests
df
#plot1 <- hist(df$Population)
merge_df <- merge(arrests,df,by.arrests=row.names,by.df="Statename")
merge_df
