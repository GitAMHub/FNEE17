fn <-read.csv2("FNEE2017.csv")

library(ggplot2)
library(scales)

p<-qplot(Obli_ahoGWh,IEEoa_17_ajus16_EUR, data=fn, colour= Sujeto, xlab = ("Obligación de ahorro (GWh)"), ylab="Importe económico
         equivalente a la obligación de ahorro 2017
         con ajustes 2016 (euros)")
p + scale_x_discrete(labels = NULL )+ scale_y_discrete(labels = NULL)