# Here I read the data 
wages_by_education <- read.csv("~/Downloads/wages_by_education.csv")

# I only want to look at data from 2000-2022 
wages_by_education2 <- subset(wages_by_education, year > 1999)

# What is the average hourly wage for women with a bachelor's degree?
women_bachelor_mean <- mean(wages_by_education2$women_bachelors_degree)

# What is the average hourly wage for men with a bachelor's degree? 
men_bachelor_mean <- mean(wages_by_education2$men_bachelors_degree)

#What is the average hourly wage for women with advanced degree?
women_advanced_mean <- mean(wages_by_education2$women_advanced_degree)

#What is the average hourly wage for women with advanced degree?
men_advanced_mean <- mean(wages_by_education2$men_advanced_degree)

# Visualize the data for men vs. women 
library(ggplot2)

bachelor_income_comparison <- ggplot(data = wages_by_education2, aes(x = year)) +
  geom_line(aes(y = men_bachelors_degree), color = "blue", linetype = "solid") +
  geom_line(aes(y = women_bachelors_degree), color = "red", linetype = "dashed") +
  geom_point(aes(y = men_bachelors_degree), color = "blue") +
  geom_point(aes(y = women_bachelors_degree), color = "red") +
  labs(x = "Year", y = "Bachelor Degree Income") +
  ggtitle("Men's vs. Women's Bachelor Degree Income Over the Years") +
  scale_linetype_manual(values = c("solid", "dashed")) +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal()

bachelor_income_comparison

advanced_income_comparison <- ggplot(data = wages_by_education2, aes(x = year)) +
  geom_line(aes(y = men_advanced_degree), color = "blue", linetype = "solid") +
  geom_line(aes(y = women_advanced_degree), color = "red", linetype = "dashed") +
  geom_point(aes(y = men_advanced_degree), color = "blue") +
  geom_point(aes(y = women_advanced_degree), color = "red") +
  labs(x = "Year", y = "Advanced Degree Income") +
  ggtitle("Men's vs. Women's Advanced Degree Income Over the Years") +
  scale_linetype_manual(values = c("solid", "dashed")) +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal()

advanced_income_comparison

highschool_income_comparison <- ggplot(data = wages_by_education2, aes(x = year)) +
  geom_line(aes(y = men_high_school), color = "blue", linetype = "solid") +
  geom_line(aes(y = women_high_school), color = "red", linetype = "dashed") +
  geom_point(aes(y = men_high_school), color = "blue") +
  geom_point(aes(y = women_high_school), color = "red") +
  labs(x = "Year", y = "Highschool Income") +
  ggtitle("Men's vs. Women's Highschool Income Over the Years") +
  scale_linetype_manual(values = c("solid", "dashed")) +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal()

highschool_income_comparison
