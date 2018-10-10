
arrests <- USArrests
arrests
df
#plot1 <- hist(df$Population)
merge_df <- merge(arrests,df,by.arrests=row.names(arrests),no.dups)
merge_df
