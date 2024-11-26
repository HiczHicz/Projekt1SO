attach(dane_do_zestawu_17)
#ZADANIE 1
#ROZKŁAD LICZEBNOŚCI-OSZCZĘDNOŚCI

procent <- percent(sort(as.numeric(table(Oszczednosci)) / 306), accuracy = 0.01)
rozklad_l_w_procent <- data.frame(
  Oszczędności = c("Mniej niż 5 procent", "5-10 procent", "10-20 procent", "Powyżej 20 procent"),
  Liczność = sort(as.numeric(table(Oszczednosci))),
  Procent = procent # Użycie poprawnej nazwy zmiennej
)
print(rozklad_l_w_procent)
obrot<-t(rozklad_l_w_procent)

# Eksport do CSV
write.csv(obrot, "rozkład_wszyscy.csv", row.names = FALSE, fileEncoding = "UTF-8")


#WYKRES KOLUMNOWY ROZKŁADU
procent=(percent(sort(as.numeric(table(Oszczednosci))/306), accuracy=0.01))
wysokosc=(sort(as.numeric(table(Oszczednosci))/306*100))
wykres_w=barplot((sort(table(Oszczednosci)/306*100)), main = "Procent dochodu przeznaczany przez badanych na oszczędności",
      xlab = "Procent dochodu gospodarstwa domowego [%]", ylab = "Procent osób [%]", col = c("#5B2125FF", "#8D3431FF", "#BF542EFF", "#E9A800FF"),
      names.arg = c("Mniej niż 5 procent", "5-10 procent","10-20 procent", "Powyżej 20 procent"),
      ylim=c(0,55))
text(wykres_w, wysokosc+2, labels=procent ,cex=1) 
wykres_w


#ZADANIE 2
#ROZKŁAD LICZEBNOŚCI-OSZCZĘDNOŚCI _ KOBIETY
kobiety <- subset(dane_do_zestawu_17, Plec == "K")

rozklad_l_k_procent <- data.frame(
  #Nr=1:length(unique(Oszczednosci)),
  Oszczędności=c("Mniej niż 5 procent", "5-10 procent","10-20 procent", "Powyżej 20 procent"),
  Liczność=sort(as.numeric(table(kobiety$Oszczednosci))),
  Procent=(percent(sort(as.numeric(table(kobiety$Oszczednosci))/306), accuracy=0.01))
)

rozkl_k=t(rozklad_l_k_procent)
write.csv(rozkl_k, "rozkład_kobiety.csv", fileEncoding = "UTF-8")


#WYKRES KOLUMNOWY ROZKŁADU
#oszcz_k=sort(table(kobiety$Oszczednosci)/306*100)
procent=(percent(sort(as.numeric(table(kobiety$Oszczednosci))/306), accuracy=0.01))
wysokosc=(sort(as.numeric(table(kobiety$Oszczednosci))/306*100))
wykres_k=barplot(sort(table(kobiety$Oszczednosci)/306*100), main = "Procent dochodu przeznaczany przez kobiety na oszczędności",
        xlab = "Procent dochodu gospodarstwa domowego [%]", ylab = "Procent kobiet [%]", col = c("#5B2125FF", "#8D3431FF", "#BF542EFF", "#E9A800FF"),
        names.arg = c("Mniej niż 5 procent", "5-10 procent","10-20 procent", "Powyżej 20 procent"),
        ylim=c(0,30))
text(wykres_k, wysokosc+2, labels=procent ,cex=1) 
wykres_k

#ROZKŁAD LICZEBNOŚCI-OSZCZĘDNOŚCI _ MEZCZYZNI
mezczyzni <- subset(dane_do_zestawu_17, Plec == "M")

rozklad_l_m_procent <- data.frame(
  #Nr=1:length(unique(Oszczednosci)),
  Oszczędności=c("Mniej niż 5 procent", "5-10 procent","10-20 procent", "Powyżej 20 procent"),
  Liczność=sort(as.numeric(table(mezczyzni$Oszczednosci))),
  Procent=(percent(sort(as.numeric(table(mezczyzni$Oszczednosci))/306), accuracy=0.01))
)
rozklad_l_m_procent
rozk_m=t(rozklad_l_m_procent)
write.csv(rozk_m, "rozkład_m.csv", fileEncoding = "UTF-8")

#WYKRES KOLUMNOWY ROZKŁADU
procent=(percent(sort(as.numeric(table(mezczyzni$Oszczednosci))/306), accuracy=0.01))
wysokosc=(sort(as.numeric(table(mezczyzni$Oszczednosci))/306*100))
wykres_m=barplot(sort(table(mezczyzni$Oszczednosci)/306*100), main = "Procent dochodu przeznaczany przez mężczyzn na oszczędności",
            xlab = "Procent dochodu gospodarstwa domowego [%]", ylab = "Procent mężczyzn [%]", col=c("#5B2125FF", "#8D3431FF", "#BF542EFF", "#E9A800FF"),
            names.arg = c("Mniej niż 5 procent", "5-10 procent","10-20 procent", "Powyżej 20 procent"),
            ylim=c(0,30))
text(wykres_m, wysokosc+2, labels=procent ,cex=1) 
wykres_m


#ZADANIE 3 - DYSTRYBUANTA
dyst_k=subset(dane_do_zestawu_17, Plec == "K"& Zamieszkanie=="Miasto"& Ubezpieczenie=="Tak")
dystrybuanta=plot(ecdf(dyst_k$Wiek), main="Dystrybuanta empiryczna dla wieku \nkobiet ubezpieczonych i mieszkających w mieście",col="#8D3431FF")

#ZADANIE 4 - TABLICA DWUDZIELCZA 
tablica_dwudzielcza <- data.frame(table(dane_do_zestawu_17$Zamieszkanie, dane_do_zestawu_17$Wyksztalcenie))
tablica_dwudzielcza_df <- as.data.frame(tablica_dwudzielcza)
colnames(tablica_dwudzielcza_df) <- c("Zamieszkanie", "Wykształcenie", "Liczność")
print(tablica_dwudzielcza_df)

write.csv(tablica_dwudzielcza_df, "tabrozd.csv", fileEncoding = "UTF-8")

#ZADANIE 5
#UBEZPIECZA SIĘ
ubezp<-subset(dane_do_zestawu_17, Ubezpieczenie=="Tak")
śru=mean(ubezp$Wynagrodzenie)
median(ubezp$Wynagrodzenie)

#a - wariancja 
war_u=sum((ubezp$Wynagrodzenie-śru)^2)/length(ubezp$Wynagrodzenie)
#a - odchylenie standardowe
odchylenie_u=sqrt(war_u)


library(moments)
#asymetria
as_u=sum((ubezp$Wynagrodzenie-śru)^3)/(length(ubezp$Wynagrodzenie)*odchylenie_u^3)
skewness(ubezp$Wynagrodzenie)
#kurtoza
ku_u=sum((ubezp$Wynagrodzenie-śru)^4)/(length(ubezp$Wynagrodzenie)*odchylenie_u^4)-3
kurtosis(ubezp$Wynagrodzenie)-3

#NIE UBEZPIECZA SIĘ
nieubezp<-subset(dane_do_zestawu_17, Ubezpieczenie=="Nie")
śrn=mean(nieubezp$Wynagrodzenie/100)
median(nieubezp$Wynagrodzenie/100)

war_n=sum((nieubezp$Wynagrodzenie/100-śru)^2)/length(nieubezp$Wynagrodzenie)
#a - odchylenie standardowe
odchylenie_n=sqrt(war_n)

#asymetria
as_n=sum((nieubezp$Wynagrodzenie-śrn)^3)/(length(nieubezp$Wynagrodzenie)*odchylenie_n^3)
skewness(nieubezp$Wynagrodzenie/100)
#kurtoza
ku_n=sum((nieubezp$Wynagrodzenie-śru)^4)/(length(nieubezp$Wynagrodzenie)*odchylenie_n^4)-3
ku_n=kurtosis(nieubezp$Wynagrodzenie)-3


#ZADANIE 6
# Średnia wieku w zależności od miejsca zamieszkania
srednia_wiek_zamieszkanie <- tapply(dane_do_zestawu_17$Wiek, dane_do_zestawu_17$Zamieszkanie, mean, na.rm = TRUE)

# Mediana wieku w zależności od miejsca zamieszkania
mediana_wiek_zamieszkanie <- tapply(dane_do_zestawu_17$Wiek, dane_do_zestawu_17$Zamieszkanie, median, na.rm = TRUE)

# Wyświetlenie wyników
print(srednia_wiek_zamieszkanie)
print(mediana_wiek_zamieszkanie)

# Średnia wieku w zależności od poziomu wiedzy
srednia_wiek_wiedza <- tapply(dane_do_zestawu_17$Wiek, dane_do_zestawu_17$Wiedza, mean, na.rm = TRUE)

# Mediana wieku w zależności od poziomu wiedzy
mediana_wiek_wiedza <- tapply(dane_do_zestawu_17$Wiek, dane_do_zestawu_17$Wiedza, median, na.rm = TRUE)

# Wyświetlenie wyników
print(srednia_wiek_wiedza)
print(mediana_wiek_wiedza)

#RAZEM
# Średnia wieku w zależności od miejsca zamieszkania i poziomu wiedzy
srednia_wiek <- aggregate(Wiek ~ Zamieszkanie + Wiedza, data = dane_do_zestawu_17, FUN = mean, na.rm = TRUE)

# Mediana wieku w zależności od miejsca zamieszkania i poziomu wiedzy
mediana_wiek <- aggregate(Wiek ~ Zamieszkanie + Wiedza, data = dane_do_zestawu_17, FUN = median, na.rm = TRUE)

# Wyświetlenie wyników
print(srednia_wiek)
print(mediana_wiek)

write.csv(mediana_wiek, "mediana.csv", row.names=FALSE, fileEncoding = "UTF-8")


# Wyznaczenie średniej z zaokrągleniem do 2 miejsc po przecinku
srednia_wiek <- aggregate(Wiek ~ Zamieszkanie + Wiedza, 
                          data = dane_do_zestawu_17, 
                          FUN = function(x) round(mean(x, na.rm = TRUE), 2))

# Wyświetlenie wyniku
print(srednia_wiek)
write.csv(srednia_wiek, "srednia.csv", row.names=FALSE, fileEncoding = "UTF-8")


