library(digest)
library(tidyverse)

data <- read.csv("data-raw/course_participation.csv")

# Drop email column
data <- subset(data, select = -c(user_email))

# Function to anonymize names
anonymize_names <- function(data, column_name) {
  # Create a lookup table
  lookup_table <- data.frame(
    real_name = unique(data[, column_name]),
    anonymized_name = sapply(unique(data[, column_name]), function(x) digest(x, algo = "md5"))
  )

  # Anonymize names in the data frame
  data_anonymized <- data %>%
    mutate(anonymized_name = sapply(data[, column_name], function(x) {
      lookup_table$anonymized_name[match(x, lookup_table$real_name)]
    }))

  # Return both the anonymized data and the lookup table
  list(data_anonymized = data_anonymized, lookup_table = lookup_table)
}

# Anonymize the 'name' column in your data
result <- anonymize_names(data, "name")

# Save the anonymized data
write.csv(result$data_anonymized, "data-raw/course_participation_anonymized.csv", row.names = FALSE)



