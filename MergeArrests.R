
arrests <- USArrests
arrests
df
merge_df <- merge(arrests,df,by.arrests="rownames",by.df="Statename")
merge_df


