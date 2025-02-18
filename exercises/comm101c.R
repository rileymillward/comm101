library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!
ggplot(penguins, aes(island, body_mass_g)) +
  geom_boxplot()
