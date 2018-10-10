
arrests <- USArrests
arrests
df
#plot1 <- hist(df$Population)
merge_df <- merge(arrests,df,by=c(row.names(arrests),"Statenames")
merge_df
