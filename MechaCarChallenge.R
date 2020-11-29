#PART1
install.packages('tidyverse')
library("dplyr")
df <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df))


#PART2, summary stats by lot

DF2 <-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
summary2 <- DF2 %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), StandardDeviation = sd(PSI))

lot_summary <- DF2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), StandardDeviation = sd(PSI), .groups ='keep')


#PART3 - t test

t.test(DF2$PSI, mu=1500)

t.test(DF2$PSI, subset(DF2, Manufacturing_Lot=='Lot1', PSI, drop=TRUE))
t.test(DF2$PSI, subset(DF2, Manufacturing_Lot=='Lot2', PSI, drop=TRUE))
t.test(DF2$PSI, subset(DF2, Manufacturing_Lot=='Lot3', PSI, drop=TRUE))

#boxplots of different lots PSI

library("tidyverse")

#SCATTER PLOT
plt <-ggplot(DF2, aes(x=Manufacturing_Lot, y = PSI))
plt+geom_point()

#BOXPLOT
plt+geom_boxplot()
