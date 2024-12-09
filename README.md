# Silent Data Frame Subsetting Failure in R

This repository demonstrates a common, yet subtle, error in R when subsetting data frames using character vectors for column selection.  If a column name is misspelled in the selection vector, the subsetting operation will fail silently, omitting the misspelled column without any warning or error. This can lead to unexpected results and difficult-to-debug issues.

The `bug.R` file contains the problematic code, and `bugSolution.R` provides a solution to prevent such silent failures.
