library(ggplot2)
library(scales)
library(readxl)

fn<-read_csv("FNEE2017.csv")
fn$Sujeto<-factor(fn$Sujeto)

p<-qplot(Obli_ahoGWh,GWh_15, data=fn, colour= Sujeto, ylab = ("Obligación de ahorro (GWh)"), xlab="Importe económico
         equivalente a la obligación de ahorro 2017
         con ajustes 2016 (euros)")
p + facet_grid(. ~ Sujeto)
# p + scale_x_discrete(labels = NULL )+ scale_y_discrete(labels = NULL)

ggplot(fn,
       aes(x = factor(""), fill = Sujeto) ) +
        geom_bar() +
        coord_polar(theta = "y") +
        scale_x_discrete("")


p <- ggplot(fn, aes(GWh_15, Obli_ahoGWh)) + geom_point()
p +  labs(title = "Orden ETU/258/2017 Fondo Nacional de Eficiencia Energética - 2017")
p+ xlab("Obligación de ahorro (GWh)") + ylab("Importe económico equivalente -  2017 + ajuste 2016 (euros)") + facet_grid(. ~ Sujeto,margins=TRUE)
# With one variable
p + facet_grid(. ~ Sujeto)
