
arrests <- USArrests
arrests
df
arrests$Statename <- rownames(arrests)
arrests
merge_df <- merge(arrests,df,by="Statename")
merge_df


