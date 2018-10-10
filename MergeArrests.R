
arrests <- USArrests
arrests
df
#plot1 <- hist(df$Population)
merge_df <- merge(arrests,df,by=row.names)
merge_df
