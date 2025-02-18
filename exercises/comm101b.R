library(palmerpenguins)
library(ggplot2)

# Edit code to match figures -------------------------------------------------
# At the end of the guided notes for the second video you'll find three figures.
# Edit the following code so the outputs match the figures in the notes.

# Figure 1
ggplot(penguins, aes(bill_depth_mm)) +
  geom_histogram()

# Figure 2
ggplot(penguins, aes(species, flipper_length_mm)) +
  geom_boxplot()

# Figure 3
ggplot(penguins, aes(body_mass_g, flipper_length_mm, color = island)) +
  geom_point()
