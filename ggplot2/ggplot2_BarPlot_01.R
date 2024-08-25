# Loading packages
library(ggplot2)

# Obtaining the dataset
df_titanic <- as.data.frame(Titanic)  

# Constructing the plot
ggplot(df_titanic, aes(x = Sex, y = Freq, fill = Sex)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Total Number of Titanic Passengers",
    subtitle = "Frequency of Titanic Passengers by Gender",
    x = "Gender",
    y = "Frequency"
  ) +
  scale_y_continuous(limits = c(0, 2000), breaks = seq(0, 2000, by = 500)) + 
  scale_fill_manual(values = c('blue','red')) +
  theme_gray() +
  theme(
    legend.position = "none",
    title = element_text(face = "bold", size = 12),
    plot.subtitle = element_text(size = 10, face = "italic"),
    axis.title.x = element_text(face = "bold", size = 12),
    axis.text.x = element_text(size = 10),
    axis.title.y = element_text(face = "bold", size = 12),
    axis.text.y = element_text(size = 10)
  )

# Save the plot as a PNG image
ggsave("ggplot2_BarPlot_01.png", units = 'cm', width = 12, height = 12, dpi = 300)
