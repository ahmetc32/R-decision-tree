#kararagaci
library(RWeka)
head(car)
summary(car)
glimpse(car)
str(car)
car$fiyat <- as.factor(car$fiyat)
car$bakimmaliyeti <- as.factor(car$bakimmaliyeti)
car$bagajboyutu <- as.factor(car$bagajboyutu)
car$guvenlik <- as.factor(car$guvenlik)
car$sonuc <- as.factor(car$sonuc)

str(car)

summary(car)

print(car)

#karar agaci J48
kararagaci<- J48(sonuc~.,data = car)

print(kararagaci)

summary(kararagaci)

plot(kararagaci)

ongoru <- predict(kararagaci)

ongoru [1:50]
#karar agaci J48

#eger gercek veriler ile ongoru sonuclari birlikte gorulmek istenirse

data.frame(sonuc=car$sonuc, ongoru=ongoru)[1:50,30]

