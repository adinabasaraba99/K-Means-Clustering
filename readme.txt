Basaraba Adina-Vasilica

Task 1(Citirea datelor de intrare) 
- Folosind fopen se deschide fisierul file_params pentru citire. 
- Se citeste numarul de clustere si se inchide fisierul deschis anterior. 
-Se citeste matricea de puncte si apoi fiecare punct in parte.

Task 2(Implementarea K-Means)
- Se aleg aleator NC centroizi, utilizand functia randi. 
Se asociaza fiecare punct unui centroid tinand cont de distanta euclidiana.
- Se compara distantele euclidiene la patrat, nefiind nevoie sa se foloseasca
radical(sqrt), fiind comparatie si se retine indicele. 
- Se recalculeaza pozitiile fiecarui centroid. 
Cat timp pozitiile centroizilor se modifica, se repeta pasii de atribuire unui grup
si de recalculare a pozitiilor.

Task 4(Functie de cost) 
- Se compara patratul distantelor euclidiene si se retine indicele.
- Se parcurge matricea de centroizi si se calculeaza distanta de la centroid la punctele 
ce apartin de clusterul dat. Se mareste suma cu distanta gasita(suma = suma + dist).
- I se atribuie costului suma(cost = suma).
- Se returneaza costul.

Task 5(Determinarea numarului e grupuri) 
- Se initializeaza costul cu zeros(1,10).
- Se citesc punctele. Se da calea catre un fisier de tipul .points.
- Se apeleaza functiile clustering_pc si compute_cost_pc intr-un for ce face 10
iteratii.
- Se afiseaza figura.

Feedback: Tema este utila pentru familiarizarea cu limbajul de programare GNU Octave. 
