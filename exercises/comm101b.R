library(palmerpenguins)
library(ggplot2)

# Edit code to match figures -------------------------------------------------
# At the end of the guided notes for the second video you'll find three figures.
# Edit the following code so the outputs match the figures in the notes.

ggplot(penguins, aes(x = bill_depth_mm)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Bill Depth", x = "Bill Depth (mm)", y = "Count") +
  theme_minimal()


ggplot(penguins, aes(x = species, y = flipper_length_mm, fill = species)) +
  geom_boxplot() +
  labs(title = "Flipper Length by Penguin Species", x = "Species", y = "Flipper Length (mm)") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")

ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm, color = island)) +
  geom_point(alpha = 0.7, size = 3) +
  labs(title = "Flipper Length vs. Body Mass", x = "Body Mass (g)", y = "Flipper Length (mm)", color = "Island") +
  theme_minimal() +
  scale_color_brewer(palette = "Dark2")

