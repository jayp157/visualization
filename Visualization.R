
setwd("/Users/jayp6/Downloads")
data <- read.table("presidents.csv", header = TRUE, sep = ",")
print(data)

plot(data$time, data$value, type = "l", col = "red",
main = "Base R Line Plot of Value over Time",
xlab = "Time", ylab = "Value")


install.packages("lattice")
library(lattice)

histogram (value ~ time, data = data,
main = "Lattice Histogram of Value",
xlab = "Time", ylab = "Value",
col = "lightblue", border = "black")


install.packages("ggplot2")
library(ggplot2)


ggplot(data, aes(x = time, y = value)) +
geom_point(color = "green") +
theme_minimal() +
labs(title = "Value Over Time", x = "Time", y = "Value")






