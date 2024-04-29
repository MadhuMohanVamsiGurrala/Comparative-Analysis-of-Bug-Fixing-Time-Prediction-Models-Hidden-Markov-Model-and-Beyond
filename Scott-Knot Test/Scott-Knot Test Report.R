install.packages("ScottKnottESD")
library(ScottKnottESD)
# Create a data frame with the provided values
data <- data.frame(
  Algorithm = c("HMM", "MNB", "RFC", "SVM", "NSVM"),
  Mean_Square = c(0.46917598141639655, 0.5, 0.4991235785129509, 0.5, 0.4991235785129509)
)

# Rank the algorithms based on their mean square values
data$Rank <- rank(data$Mean_Square)

# Sort the data frame by rank
data <- data[order(data$Rank), ]

# Print the sorted data frame
print(data)

# Load necessary libraries
library(ggplot2)

# Create a data frame with the provided values
data <- data.frame(
  Algorithm = c("HMM", "MNB", "RFC", "SVM", "NSVM"),
  Mean_Square = c(0.46917598141639655, 0.5, 0.4991235785129509, 0.5, 0.4991235785129509)
)

# Rank the algorithms based on their mean square values
data$Rank <- rank(data$Mean_Square)

# Sort the data frame by rank
data <- data[order(data$Rank), ]

# Create a bar plot
ggplot(data, aes(x = Algorithm, y = Mean_Square, fill = Algorithm)) +
  geom_bar(stat = "identity") +
  labs(title = "Mean Square Performance of Algorithms",
       x = "Algorithm",
       y = "Mean Square Value") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set3")

# Summary of the mean square values
summary(data$Mean_Square)


