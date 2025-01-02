p1=ggplot(data, aes(x = pH, y = AOB)) +
  geom_jitter(size = 2,colour = 'Grey') +
  geom_smooth(method = "lm", formula = y ~ poly(x, 2, raw=TRUE),level=0.5, se = T, size = 1.3)  +
  theme_bw() +
  theme(axis.text = element_text(colour = 'black', size = 9)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position = 'none')

poly_model <- lm(pH ~ poly(AOB, 2), data = data)
summary(poly_model)
