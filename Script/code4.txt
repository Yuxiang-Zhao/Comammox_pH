ggplot(data = data1, aes(x= Group,y = P,fill = Group)) + 
  geom_bar(stat = "identity", position = "dodge", width = 0.3)+ 
  geom_errorbar(aes(ymax = P + se, ymin = P -  se), 
                position = position_dodge(0.9), width = 0.3) + 
  scale_fill_manual(values = c('#D37F81','#52768D','#748E60'),
                    limits = c('A', 'B', 'C'))+
  geom_jitter(data=data2, aes(x= Group,y =P,fill = Group),position=position_jitter(0.1), size=4,pch = 21,color = "black") +
  theme_bw() +
  theme(axis.text = element_text(colour = 'black', size = 9)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  scale_y_continuous(limits = c(0, 0.2)) 