
arrests <- USArrests
arrests
df
arrests$Statename <- rownames(arrests)
merge_df <- merge(arrests,df,by.arrests="rownames",by.df="Statename")
merge_df


