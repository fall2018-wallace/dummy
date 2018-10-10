
arrests <- USArrests
arrests
df
#plot1 <- hist(df$Population)
merge_df <- rbind(arrests,df,by.df="Statename")
merge_df
