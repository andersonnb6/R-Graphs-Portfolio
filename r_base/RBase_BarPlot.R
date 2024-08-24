# Creating dataset with gender and percent
gender_data <- data.frame(
  gender = c('Male', 'Female'),
  percent = c(50, 70)
)

# Creating Bar Plot using Base R
barplot(gender_data$percent, 
        names.arg = gender_data$gender,       # Labels for x-axis
        ylim = c(0, 100),                     # Range for y-axis
        ylab = expression(bold('Percent')),   # Label for y-axis
        xlab = expression(bold("Gender")),    # Label for y-axis
        col = c('blue', 'red')                # Colors for bars
)