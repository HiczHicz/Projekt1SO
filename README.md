# Wstępne rozeznanie w sytuacji związanej z wynagradzaniem pracowników

Analiza badania pilotażowego przeprowadzonego na grupie 306 osób. W analizie znajdują się takie informacje, jak rozkłady liczbowe i ich wykresy kolumnowe, dystrybuanta empiryczna, tablica dwudzielcza liczebności, średnia, mediana, odchylenie standardowe, współczynnik asymetrii, kurtoza. Projekt I na zaliczenie przedmiotu statystyka opisowa na kierunku MMAD.

## Dane

Dane znajdują się w pliku dane_do_zestawu_17.csv. Dane są oddzielone symbolem ";". Wykorzystane zostały biblioteki library(scales) (funckcja percent()) oraz library(moments) (funkcja skewness(), kurtosis()). 

## Podstawowe założenie analizy
Zebrano informację o wynagrodzeniu (w tys. zł), płci, wieku (w latach), miejscu zamieszkania, wykształceniu oraz o tym, czy dana osoba dobrowolnie ubezpiecza się w trzecim filarze systemu emerytalnego. Zadano również dwa dodatkowe pytania:
1. Jaki procent dochodu Państwa gospodarstwa domowego przeznaczany jest na oszczędności?
2. Jak ocenia Pani/Pan swoją wiedzę na temat funduszy inwestycyjnych?

## Podsumowanie wykonanej analizy

Zostało rozwiązanych 6 zadań. Celem projektu było zaznajomienie studentów z podstawowymi metodami analizy na większej bazie danych oraz podkreślenie wagi stworzenia odpowiedniego opracowania danych, estetyki itp. Treści zadań są następujące:
1. Wyznaczyć rozkład liczebności oraz procentowy rozkład liczebności cechy "Oszczędności" wszystkich badanych i narysować wykres kolumnowy tego rozkładu;
2. Wyznaczyć rozkład liczebności oraz procentowy rozkład liczebności cechy "Oszczędności" oddzielnie dla kobiet i mężczyzn, a następnie narysować wykresy kolumnowe tych rozkładów;
3. Stworzyć wykres dystrybuanty empirycznej cechy "Wiek" dla kobiet mieszkających w mieście które się ubezpieczają;
4. Skonstruować tablicę dwudzielczą liczebności dla cech "Zamieszkanie" i "Wykształcenie";
5. Dla wynagrodzenia w zależności od tego, czy osoba się ubezpiecza czy nie, wyznaczyć:
- średnie wynagrodzenie i medianę;
- odchylenie standardowe;
- współczynnik asymetrii i kurtozę.
Co można powiedzieć o symetrii rozkładu oraz stopniu koncentracji danych?;
6. Wyznaczyć średnią i medianę cechy "Wiek" w zależności od miejsca zamieszkania oraz od tego, jaką osoba ma wiedzę.


## Dalszy rozwój projektu

- Zaokrąglenie danych do drugiego miejsca po przecinku;
- dodać, że wynagrodzenie [tys.]
- zmiana nazwy osi wykresów, zmiana tytułów wykresów, zmiana kolorów wykresów;
- odpowiedzenie na pytanie: co można powiedzieć o symetrii rozkładu oraz stopniu koncentracji danych? (ZADANIE 5)
- rozważenie, czy wykres dystrybuanty w ogóle ma sens - wygląda dziwnie;
- stworzenie sprawozdania z analizy badania pilotażowego w wordzie.
