athletes <- read.csv(file.choose())
#scatterplot
ggplot(athletes, aes(x = ht,
                     y = wt)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE) +
  ggtitle("Athlete Height vs Weight") +
  theme(plot.title = element_text(hjust = 0.5)) +
  labs(x = "Height",
       y = "Weight")

#Vertical Bar

ggplot(athletes, aes (x = sport)) +
  geom_bar(color = "blue",
           fill = "blue") +
  ggtitle("Participant Count by Sport") +
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = "Sport",
       y = "Count")

#Boxplot

ggplot(athletes, aes (y = hg)) +
  geom_boxplot(width=0.5, fill="red") +
  xlim(-1,1) +
  ggtitle("Hemoglobin Concentration") +
  theme(plot.title = element_text(hjust = 0.5))+
  labs(y = "Hemoglobin Concentration")

#density

ggplot(athletes, aes (x = hg)) +
  geom_density(fill="red") +
  ylim(0, 0.3) +
  ggtitle("Density of Hemoglobin Concentration") +
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = "Hemoglobin Concentration",
       y = "Density")

#histogram
ggplot(athletes, aes (x = hg)) +
  geom_histogram(bins = 9, fill = "blue", color = "black") +
  ggtitle("Histogram of Hemoglobin Concentration") +
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = "Hemaglobin Concentration",
       y = "Density")

ggplot(athletes, aes (fill=sex, x=sport)) +
  geom_bar(positions="stack") +
  ggtitle("Participation Distribution by Sex") +
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = "Sport",
       y = "Participant Count",
       fill= "Sex")