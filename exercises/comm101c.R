library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!

ggplot(penguins, aes(x = island, y = body_mass_g, fill = island)) +
  geom_boxplot() +
  labs(title = "Body Mass Distribution by Island",
       x = "Island",
       y = "Body Mass (g)") +
  theme_minimal() +  # Removes the grey background
  scale_fill_manual(values = c("Biscoe" = "dodgerblue",
                               "Dream" = "tomato",
                               "Torgersen" = "seagreen")) # Customize colors
