library(marinecs100b)
library(ggplot2)


# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?

# a histogram

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?

# box-plots

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.

data("woa_sal")
woa_sal$salinity <- as.numeric(woa_sal$salinity)

salinity_plot <- ggplot(woa_sal, aes(x = salinity)) +
  geom_histogram(binwidth = 0.1, fill = "blue", color = "white", alpha = 0.7) +
  labs(title = "Distribution of Sea Surface Salinity",
       x = "Sea Surface Salinity",
       y = "Frequency") +
  theme_minimal()

ggsave("comm101p3.png", plot = salinity_plot, width = 8, height = 6, dpi = 300)

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.

woa_sal$ocean <- as.factor(woa_sal$ocean)

salinity_plot <- ggplot(woa_sal, aes(x = salinity, fill = ocean)) +
  geom_histogram(binwidth = 0.1, color = "white", alpha = 0.7) +
  facet_wrap(~ ocean) +
  labs(title = "Distribution of Sea Surface Salinity by Ocean Basin",
       x = "Sea Surface Salinity",
       y = "Frequency") +
  theme_minimal()

ggsave("comm101p4.png", plot = salinity_plot, width = 10, height = 6, dpi = 300)

# P5 Interpret your figures from P3 and P4. What patterns do you notice?

# I notice that p3 is similar to pt4's pacific ocean variables but not
# too much to the others

# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.

# If L could better show the difference between the four graphs in pt4
# and create a dot plot with each site color coded for pt 3 I think that
# would visualize the data the best


# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.

woa_sal$salinity <- as.numeric(woa_sal$salinity)
woa_sal$latitude <- as.numeric(woa_sal$latitude)
woa_sal$ocean <- as.factor(woa_sal$ocean)

salinity_latitude_plot <- ggplot(woa_sal, aes(x = latitude, y = salinity, color = ocean)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "loess", se = FALSE) +
  facet_wrap(~ ocean) +
  labs(title = "Relationship Between Salinity and Latitude by Ocean Basin",
       x = "Latitude",
       y = "Salinity",
       color = "Ocean Basin") +
  theme_minimal()

ggsave("comm101p7.png", plot = salinity_latitude_plot, width = 10, height = 6, dpi = 300)

# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.

woa_sal$ocean <- as.factor(woa_sal$ocean)
unique(woa_sal$ocean)
names(ocean_colors)

ocean_colors <- c("Atlantic Ocean" = "#E69F00", "Pacific Ocean" = "#56B4E9",
                  "Indian Ocean" = "#009E73", "Southern Ocean" = "#F0E442",
                  "Arctic Ocean" = "#0072B2")

salinity_latitude_plot <- ggplot(woa_sal, aes(x = latitude, y = salinity, color = ocean)) +
  geom_point(alpha = 0.4, size = 1) +
  geom_smooth(method = "loess", se = FALSE, linewidth = 1.2) +
  facet_wrap(~ ocean) +
  scale_color_manual(values = ocean_colors) +
  labs(title = "Improved Visualization of Salinity vs. Latitude by Ocean Basin",
       x = "Latitude",
       y = "Salinity",
       color = "Ocean Basin") +
  theme_minimal(base_size = 14) +
  theme(legend.position = "bottom",
        strip.text = element_text(size = 14, face = "bold"))

ggsave("comm101p8.png", plot = salinity_latitude_plot, width = 12, height = 6, dpi = 300)

