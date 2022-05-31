**Dumitru Bianca Stefania**
**312CA**

## Tema #1 - Metode Numerice - Page Rank

## Descriere generala:

Programul are scopul de a simula algoritmul Page Rank, care masoara importanta 
relativa a mai multor pagini dintr-un motor de cautare, bazandu-se pe anumiti factori.

Am implementat algoritmul Page Rank cu ajutorul a 2 metode diferite:

1. Metoda Iterativa
 - creeaza matricea de adiacenta
 - creeaza vectorul de link-uri (pentru fiecare pagina, la cate alte pagini trimite aceasta)
 - creeaza matricea M
 - calculeaza vectorul PageRank iterativ, folosindu-se de algoritmul din resursa de Wikipedia,
    pana la gasirea unei valori apropiate de cea reala

2. Metoda Algebrica
 - creeaza matricea de adiacenta
 - creeaza vectorul de link-uri (pentru fiecare pagina, la cate alte pagini trimite aceasta)
 - creeaza matricea M
 - calculeaza vectorul PageRank algebric, prin calcularea inversei unei matrici cu ajutorul procedeului Gram-Schmidt:
    * descompune matricea in componentele Q si R
    * rezolva N sisteme superior triunghiulare pentru aflarea inversei coloana cu coloana
 
In final, functia PageRank afiseaza rezulatele celor 2 metode, pentru ca mai apoi sa creeze
un clasament al celor mai importante pagini, prin aplicarea functiei definite in enuntul temei.
