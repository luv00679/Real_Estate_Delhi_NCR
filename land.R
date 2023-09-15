install.packages("tidyverse")
install.packages("stringr")

library(tidyverse)
library(stringr)

real_estate <- read.csv("real_estate_main.csv")
ggplot(data = filter(real_estate)) +
    geom_point(mapping = aes(x = bedroom, y = Price, color = city))
head(real_estate)
ggplot(data = filter(real_estate, city == "Gurgaon")) +
    geom_jitter(mapping = aes(x = total_area, y = Price,size = Rate_per_sqft,color = facing,alpha = 0.3))+
    facet_wrap(~bedroom)
head(real_estate)
glimpse(real_estate)
ggplot(data = real_estate,mapping = aes(x=carpet_area_sqft,y=Price))+
geom_jitter(mapping = aes(size=bedroom,color=bedroom,alpha=0.5))+
facet_wrap(~city)
ggplot(data = real_estate,mapping = aes(x=total_area,y=Price))+
geom_jitter(mapping = aes(size=bedroom,color=city,alpha=0.5)) 

ggplot(data = real_estate,mapping = aes(x=total_area,y=Price))+
geom_point(mapping = aes(shape=city,color=city,alpha=0.5))+
facet_wrap(~bedroom)

ggplot(real_estate,mapping = aes(x=bedroom))+
geom_bar(mapping = aes(fill=city))
filter(real_estate,city=="Faridabad",bedroom==4)

ggplot(real_estate,mapping = aes(x=Price))+
geom_histogram(binwidth = 5000000)+
facet_wrap(~city)


ggplot(data = real_estate,mapping = aes(x=total_area,y=Price))+
geom_point(mapping = aes(shape=city,color=city,alpha=0.5))+
facet_wrap(~bedroom)
bedroom_4_avg <- mean(filter(real_estate,bedroom==4)$Price)
bedroom_4_avg
bedroom_3_avg <- mean(filter(real_estate,bedroom==3)$Price)
bedroom_2_avg <- mean(filter(real_estate,bedroom==2)$Price)
bedroom_1_avg <- mean(filter(real_estate,bedroom==1)$Price)
bedroom_5_avg <- mean(filter(real_estate,bedroom==5)$Price)
for (i in 1:10){
    bedroom_str <- paste("bedroom_", i, "_avg", sep = "")
bedroom_avg <- mean(filter(real_estate, bedroom == i)$Price)
assign(bedroom_str, bedroom_avg)
}
bedroom_4_avg
arrange(filter(real_estate,bedroom==4,bathroom>=4,Price<bedroom_4_avg),Price)
bedroom_6_avg
bedroom_7_avg
bedroom_8_avg
arrange(filter(real_estate,bedroom==2,Price<3000000),Price)