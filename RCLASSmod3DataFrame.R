# Load necessary library
library(ggplot2)

# Define candidate names
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

# Define poll results
ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

# Create a data frame in long format for proper ggplot visualization
poll_data <- data.frame(
  Name = rep(Name, 2),
  Poll = c(ABC_poll, CBS_poll),
  Source = rep(c("ABC", "CBS"), each = length(Name))
)

# Create the bar chart with dodged position
print(ggplot(poll_data, aes(x = Name, y = Poll, fill = Source)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.8)) +
  labs(
    title = "2016 Presidential Election Polls (made up data by professor, data does not reflect actual elections results)",
    x = "Candidate", 
    y = "Poll Results (%)"
  ) +
  scale_fill_manual(values = c("ABC" = "blue", "CBS" = "red"), name = "Poll Source") +
  theme_minimal()
)