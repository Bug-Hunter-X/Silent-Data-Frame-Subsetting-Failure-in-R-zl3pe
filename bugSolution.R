```r
# Improved code using `dplyr` to handle misspelled column names gracefully.

library(dplyr)

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D") # 'D' is misspelled

# Use dplyr's select function with any_of to handle potential misspellings.
# any_of returns a warning if any column names are not found.
subset_df <- df %>% select(any_of(cols_to_select))
print(subset_df)

#Alternatively, using base R with more explicit error handling:
cols_to_select <- c("A", "B", "D")
invalid_cols <- setdiff(cols_to_select, names(df))
if(length(invalid_cols) > 0){
  warning(paste0("Columns not found: ", paste(invalid_cols, collapse = ", ")))
}
subset_df <- df[, intersect(cols_to_select, names(df))]
print(subset_df)
```