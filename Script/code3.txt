
zi_pi = read.csv("your_data.csv", header=T, row.names=1)

zi_pi[which(zi_pi$ Zi < 2.5 & zi_pi$ Pi < 0.62),'type'] <- 'Peripherals'
zi_pi[which(zi_pi$ Zi < 2.5 & zi_pi$ Pi > 0.62),'type'] <- 'Connectors'
zi_pi[which(zi_pi$ Zi > 2.5 & zi_pi$ Pi < 0.62),'type'] <- 'Module hubs'
zi_pi[which(zi_pi$ Zi > 2.5 & zi_pi$ Pi > 0.62),'type'] <- 'Network hubs'

ggplot(zi_pi, aes(Pi, Zi)) +
  geom_point(aes(color = Phylum), alpha = 0.6, size = 3) +
  scale_color_manual(values = c('#EB9358','#929292'),
                     limits = c('#EB9358', '#929292'))+
  theme(panel.grid = element_blank(), axis.line = element_line(colour = 'black'),
        panel.background = element_blank(), legend.key = element_blank()) +
  labs(x = 'Among-module connectivities', y = 'Within-module connectivities', color = '') +
  geom_vline(xintercept = 0.62) +
  geom_hline(yintercept = 2.5) +
  theme(legend.position = 'none') 


