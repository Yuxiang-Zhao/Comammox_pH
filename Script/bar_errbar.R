ggplot(data,aes(x=Group,y = Free))+ 
  geom_bar(stat = "identity", position = "dodge",alpha=0.7,width=0.4)+
  geom_errorbar(data = data,aes(x=Group,y = Free,
                                ymin=Free-Se, ymax=Free+Se),position = position_dodge(0.9),width=0.2) +
  theme_bw()+theme(legend.position = "none")