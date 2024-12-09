```r
# This code attempts to subset a data frame using a character vector of column names, 
# but it fails silently if any column name is misspelled.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D") # 'D' is misspelled

subset_df <- df[, cols_to_select]
print(subset_df) # This will only show columns A and B; no error is thrown.
```